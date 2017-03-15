package com.dalonedrau.schemacreator;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.ForeignKey;
import com.dalonedrau.schemacreator.Annotations.Inheritance;
import com.dalonedrau.schemacreator.Annotations.InheritanceType;
import com.dalonedrau.schemacreator.Annotations.MapForeignKey;
import com.dalonedrau.schemacreator.Annotations.MappedSuperclass;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.UniqueCompositeKey;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.dalonedrau.schemacreator.ddl.DDLField;
import com.dalonedrau.schemacreator.ddl.DDLForeignKeyConstraint;
import com.dalonedrau.schemacreator.ddl.DDLLookup;
import com.dalonedrau.schemacreator.ddl.DDLMap;
import com.dalonedrau.schemacreator.ddl.DDLMarkup;
import com.dalonedrau.schemacreator.ddl.DDLUniqueConstraint;
import com.dalonedrau.schemacreator.entity.EntityField;
import com.dalonedrau.schemacreator.entity.EntityLookupField;
import com.dalonedrau.schemacreator.entity.EntityMapField;
import com.dalonedrau.schemacreator.entity.EntityMarkup;
import com.dalonedrau.schemacreator.writers.ControllerWriter;
import com.dalonedrow.pooled.PooledException;
import com.dalonedrow.pooled.PooledStringBuilder;
import com.dalonedrow.pooled.StringBuilderPool;
import com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;

/**
 * @author drau
 */
public final class SchemaCreator {
    /**
     * Application entry point.
     * @param args not used
     */
    public static void main(final String[] args) {
        final String[] pkgs = new String[] {
                // "com.dalonedrau.entities.ll",
                // "com.dalonedrau.entities.sw_ct",
                // "com.dalonedrau.entities.arkania",
                // "com.dalonedrau.entities.avalon",
                // "com.dalonedrau.entities.bp",
                "com.dalonedrau.entities.csr",
                // "com.dalonedrau.entities.ff",
                // "com.dalonedrau.entities.ll",
                // "com.dalonedrau.entities.lablord",
                // "com.dalonedrau.entities.wfrp"
        };
        final SchemaCreator[] creators = new SchemaCreator[pkgs.length];
        for (int j = pkgs.length - 1; j >= 0; j--) {
            creators[j] = new SchemaCreator();
            final String pkg = pkgs[j];
            System.out.println("processing package " + pkg);
            creators[j].schema = pkg.substring(pkg.lastIndexOf('.') + 1);
            SchemaUtilities.getInstance(creators[j].schema);
            System.out.println("schema " + creators[j].schema);
            final List<Class<?>> list = ClassFinder.find(pkg);
            // add all classes first
            for (int i = 0, len = list.size(); i < len; i++) {
                Class<?> clazz = list.get(i);
                if (!clazz.getSuperclass().equals(Object.class)
                        && clazz.getSuperclass().getAnnotation(
                                Inheritance.class) != null) {
                    final InheritanceType inheritanceType = clazz
                            .getSuperclass().getAnnotation(
                                    Inheritance.class)
                            .strategy();
                    switch (inheritanceType) {
                    case JOINED:
                        creators[j].addTable(clazz.getSimpleName());
                        break;
                    case SINGLE_TABLE:
                        break;
                    default: // TABLE_PER_CLASS
                        creators[j].addTable(clazz.getSimpleName());
                        break;
                    }
                } else {
                    creators[j].addTable(clazz.getSimpleName());
                }
                creators[j].addSchemaClass(new SchemaClass(clazz));
                clazz = null;
                // creators[j].readFields(clazz);
            }
            // add dependencies next
            for (int i = 0, len = list.size(); i < len; i++) {
                final Class<?> clazz = list.get(i);
                creators[j].readFields(clazz);
            }
            try {
                creators[j].writeEntityClasses(pkg);
            } catch (final Exception e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }

    /** the list of entity classes. */
    private final List<SchemaClass> classes = new ArrayList<>();
    private List<DDLMarkup> ddls;
    private List<EntityMarkup> entities;
    /** the path to the packages to be exported. */
    private final String pkgPath = "com\\osrapi\\";
    /** the name of the schema being worked on. */
    private String schema;
    /** the list of tables in the schema. */
    private final List<String> tables = new ArrayList<>();

    /**
     * Adds a schema class to the list.
     * @param clazz the {@link SchemaClass} of the table to be added
     */
    public void addSchemaClass(final SchemaClass clazz) {
        classes.add(clazz);
    }

    /**
     * Adds a table to the list.
     * @param tableName the name of the table to be added
     */
    public void addTable(final String tableName) {
        tables.add(tableName);
    }

    /**
     * Writes an entity class to the DDL file.
     * @param writer the {@link PrintWriter} used to write the file
     * @param clazz the entity {@link Class} being written
     * @return {@link DDLMarkup}
     * @throws Exception
     */
    private DDLMarkup createDDL(final PrintWriter writer,
            final Class<?> clazz) throws Exception {
        DDLMarkup ddl = new DDLMarkup();
        final String table = SchemaUtilities.getInstance()
                .getTableName(clazz.getSimpleName());
        System.out.println("write ddl markup for " + table);
        ddl.setTable(table);
        if (clazz.getAnnotation(UniqueCompositeKey.class) != null) {
            final String col0 = clazz.getAnnotation(UniqueCompositeKey.class)
                    .column0();
            final String col1 = clazz.getAnnotation(UniqueCompositeKey.class)
                    .column1();
            if (col0 != null
                    && col0.length() > 0
                    && col1 != null
                    && col1.length() > 0) {
                ddl.addConstraint(new DDLUniqueConstraint(col0, col1));
            }
        }
        final Field[] fields = clazz.getDeclaredFields();
        for (int i = 0, len = fields.length; i < len; i++) {
            final Field field = fields[i];
            final Type type = field.getGenericType();
            if (type instanceof ParameterizedType) {
                if (((ParameterizedType) type).getRawType().getTypeName()
                        .equalsIgnoreCase("java.util.List")) {
                    final Type[] types = ((ParameterizedType) type)
                            .getActualTypeArguments();
                    final String typeClassName = types[0].getTypeName()
                            .substring(
                                    types[0].getTypeName().lastIndexOf('.')
                                            + 1);
                    if (tables.contains(typeClassName)) {
                        ddl.addLookup(new DDLLookup(table,
                                SchemaUtilities.getInstance().getTableName(
                                        typeClassName),
                                field.getName(), null, 0));
                    } else {
                        int limit = 0;
                        if (field.getAnnotation(VarChar.class) != null) {
                            limit = field.getAnnotation(VarChar.class).length();
                        }
                        ddl.addLookup(new DDLLookup(table, null,
                                field.getName(), typeClassName, limit));
                    }
                } else if (((ParameterizedType) type).getRawType().getTypeName()
                        .equalsIgnoreCase("java.util.Map")
                        || ((ParameterizedType) type).getRawType().getTypeName()
                                .equalsIgnoreCase("java.util.HashMap")) {
                    System.out.println("field " + field.getName() + " is map");
                    final Type[] types = ((ParameterizedType) type)
                            .getActualTypeArguments();
                    final String typeClassName0 = types[0].getTypeName()
                            .substring(
                                    types[0].getTypeName().lastIndexOf('.')
                                            + 1);
                    final String typeClassName1 = types[1].getTypeName()
                            .substring(
                                    types[1].getTypeName().lastIndexOf('.')
                                            + 1);
                    if (tables.contains(typeClassName0)
                            || tables.contains(typeClassName1)) {
                        if (field.getAnnotation(MapForeignKey.class) == null) {
                            // no mapping. map key can only be int, string.
                            // map value can be simple type, or table object id
                            ddl.addMap(new DDLMap(
                                    field.getName(), // field name
                                    (String) null, // key field name
                                    (String) null, // key table name
                                    DDLMap.getColumnType(typeClassName0),
                                    // key column type
                                    (String) null, // value field name
                                    (String) null, // value table name
                                    DDLMap.getColumnType(typeClassName1)
                            // value column type
                            ));
                        } else {
                            // mapping provided
                            final MapForeignKey anno = field
                                    .getAnnotation(MapForeignKey.class);
                            String kfn = null;
                            if (anno.keyField() != null) {
                                kfn = anno.keyField();
                            }
                            String ktn = null;
                            if (anno.keyTargetClass() != null) {
                                ktn = SchemaUtilities.getInstance()
                                        .getTableName(anno.keyTargetClass());
                            }
                            String kct = DDLMap.getColumnType(typeClassName0);
                            if (anno.keyColumnType() != null) {
                                kct = anno.keyColumnType();
                            }
                            String vfn = null;
                            if (anno.valueField() != null) {
                                vfn = anno.valueField();
                            }
                            String vtn = null;
                            if (tables.contains(typeClassName1)) {
                                vtn = SchemaUtilities.getInstance()
                                        .getTableName(typeClassName1);
                            }
                            if (anno.valueTargetClass() != null
                                    && anno.valueTargetClass().length() > 0) {
                                vtn = SchemaUtilities.getInstance()
                                        .getTableName(anno.valueTargetClass());
                            }
                            String vct = DDLMap.getColumnType(typeClassName1);
                            if (anno.valueColumnType() != null
                                    && anno.valueColumnType().length() > 0) {
                                vct = anno.valueColumnType();
                            }
                            ddl.addMap(new DDLMap(
                                    field.getName(), // field name
                                    kfn, // key field name
                                    ktn, // key table name
                                    kct, // key column type
                                    vfn, // value field name
                                    vtn, // value table name
                                    vct // value column type
                            ));
                        }
                    } else {
                        if (field.getAnnotation(MapForeignKey.class) != null) {
                            final MapForeignKey anno = field
                                    .getAnnotation(MapForeignKey.class);
                            String kfn = null;
                            if (anno.keyField() != null) {
                                kfn = anno.keyField();
                            }
                            String ktn = null;
                            if (anno.keyTargetClass() != null) {
                                ktn = SchemaUtilities.getInstance()
                                        .getTableName(anno.keyTargetClass());
                            }
                            String kct = DDLMap.getColumnType(typeClassName0);
                            if (anno.keyColumnType() != null) {
                                kct = anno.keyColumnType();
                            }
                            String vfn = null;
                            if (anno.valueField() != null) {
                                vfn = anno.valueField();
                            }
                            String vtn = null;
                            if (anno.valueTargetClass() != null) {
                                vtn = SchemaUtilities.getInstance()
                                        .getTableName(anno.valueTargetClass());
                            }
                            String vct = DDLMap.getColumnType(typeClassName1);
                            if (anno.valueColumnType() != null) {
                                vct = anno.valueColumnType();
                            }
                            ddl.addMap(new DDLMap(
                                    field.getName(), // field name
                                    kfn, // key field name
                                    ktn, // key table name
                                    kct, // key column type
                                    vfn, // value field name
                                    vtn, // value table name
                                    vct // value column type
                            ));
                        } else {
                            // what to do??
                            throw new Exception("unmapped map");
                        }
                    }
                }
            } else {
                final String fieldClass = field.getType().getSimpleName();
                if (tables.contains(fieldClass)) {
                    if (field.getType().equals(clazz)) {
                        ddl.addField(field);
                        ddl.addConstraint(new DDLForeignKeyConstraint(
                                SchemaUtilities.getInstance().getTableName(
                                        field.getName()),
                                SchemaUtilities.getInstance().getTableName(
                                        fieldClass) + "_id",
                                SchemaUtilities.getInstance().getTableName(
                                        fieldClass)));
                    } else {
                        ddl.addField(field);
                        ddl.addConstraint(new DDLForeignKeyConstraint(
                                SchemaUtilities.getInstance().getTableName(
                                        field.getName()),
                                SchemaUtilities.getInstance().getTableName(
                                        fieldClass) + "_id",
                                SchemaUtilities.getInstance().getTableName(
                                        fieldClass)));
                    }
                } else {
                    ddl.addField(field);
                    if (field.getAnnotation(Unique.class) != null) {
                        ddl.addConstraint(
                                new DDLUniqueConstraint(field.getName()));
                    }
                    if (field.getAnnotation(ForeignKey.class) != null) {
                        ddl.addConstraint(new DDLForeignKeyConstraint(
                                SchemaUtilities.getInstance().getTableName(
                                        field.getName()),
                                SchemaUtilities.getInstance().getTableName(
                                        field.getAnnotation(ForeignKey.class)
                                                .fieldName()),
                                SchemaUtilities.getInstance().getTableName(
                                        field.getAnnotation(ForeignKey.class)
                                                .clazz().getSimpleName())));
                    }
                }
            }
        }
        if (!clazz.getSuperclass().equals(Object.class)
                && clazz.getSuperclass().getAnnotation(
                        Inheritance.class) != null) {
            InheritanceType inheritanceType = clazz.getSuperclass()
                    .getAnnotation(
                            Inheritance.class)
                    .strategy();
            switch (inheritanceType) {
            case JOINED:
                break;
            case SINGLE_TABLE:
                final DDLMarkup parent = getDDL(
                        SchemaUtilities.getInstance().getTableName(
                                clazz.getSuperclass().getSimpleName()));
                // move all fields to parent
                final List<DDLField> list = ddl.getFields();
                for (int i = list.size() - 1; i >= 0; i--) {
                    list.get(i).setNullFlag("");
                }
                parent.addFields(ddl.getFields());
                // move all lookup fields to parent
                final List<DDLLookup> lookupList = ddl.getLookups();
                for (int i = lookupList.size() - 1; i >= 0; i--) {
                    lookupList.get(i).setTable1(parent.getTable());
                }
                parent.addLookups(ddl.getLookups());
                // move all constraints to parent
                parent.addConstraints(ddl.getConstraints());
                ddl = null;
                break;
            default: // TABLE_PER_CLASS
                break;
            }
            inheritanceType = null;
        }
        return ddl;
    }

    /**
     * Creates the DML lookup statement.
     * @param o the first entity in the lookup table
     * @param obj the second entity in the lookup table
     * @return {@link String}
     * @throws IllegalArgumentException if an error occurs
     * @throws IllegalAccessException if an error occurs
     * @throws NoSuchFieldException if an error occurs
     * @throws SecurityException if an error occurs
     */
    private String createDMLLookupStatement(final Object o, final Object obj)
            throws IllegalArgumentException, IllegalAccessException,
            NoSuchFieldException, SecurityException {
        StringBuffer sb = new StringBuffer();
        sb.append("  ");
        sb.append(createSelectIdByIdentifier(o));
        sb.append(",\n  ");
        sb.append(createSelectIdByIdentifier(obj));
        final String s = sb.toString();
        sb = null;
        return s;
    }

    /**
     * Creates an update statement when writing DML.
     * @param table the table name
     * @param fieldName the field name
     * @param useCode flag indicating the field 'code' is to be used to identify
     *            the lookup value
     * @param useName flag indicating the field 'name' is to be used to identify
     *            the lookup value
     * @param o the parent object
     * @param obj the child object
     * @return {@link String}
     * @throws NoSuchFieldException if an error occurs
     * @throws SecurityException if an error occurs
     * @throws IllegalArgumentException if an error occurs
     * @throws IllegalAccessException if an error occurs
     */
    private String createDMLUpdateStatement(final String table,
            final String fieldName, final boolean useCode,
            final boolean useName, final Object o, final Object obj)
            throws NoSuchFieldException, SecurityException,
            IllegalArgumentException, IllegalAccessException {
        // have to write update statement
        StringBuffer sb = new StringBuffer();
        sb.append("UPDATE ");
        sb.append(schema);
        sb.append(".");
        sb.append(table);
        sb.append("\nSET ");
        sb.append(fieldName);
        sb.append("=(SELECT ");
        sb.append(table);
        sb.append("_id FROM ");
        sb.append(schema);
        sb.append(".");
        sb.append(table);
        sb.append(" WHERE ");
        if (useCode) {
            sb.append("code='");
            final Field f2 = o.getClass().getDeclaredField("code");
            f2.setAccessible(true);
            sb.append((String) f2.get(obj));
            sb.append("')");
        } else if (useName) {
            sb.append("name='");
            final Field f2 = o.getClass().getDeclaredField("name");
            f2.setAccessible(true);
            sb.append((String) f2.get(obj));
            sb.append("')");
        }
        sb.append("\nWHERE ");
        if (useCode) {
            sb.append("code='");
            final Field f2 = o.getClass().getDeclaredField("code");
            f2.setAccessible(true);
            sb.append((String) f2.get(o));
            sb.append("';");
        } else if (useName) {
            sb.append("name='");
            final Field f2 = o.getClass().getDeclaredField("name");
            f2.setAccessible(true);
            sb.append((String) f2.get(o));
            sb.append("';");
        }
        final String s = sb.toString();
        sb = null;
        return s;
    }

    /**
     * Creates an entity markup instance.
     * @param clazz the class
     * @return {@link EntityMarkup}
     * @throws Exception if an error occurs
     */
    private EntityMarkup createEntityMarkup(final Class<?> clazz)
            throws Exception {
        EntityMarkup entity = new EntityMarkup(clazz);
        final Field[] fields = clazz.getDeclaredFields();
        for (int i = 0, len = fields.length; i < len; i++) {
            final Field field = fields[i];
            final Type type = field.getGenericType();
            if (type instanceof ParameterizedType) {
                if (((ParameterizedType) type).getRawType().getTypeName()
                        .equalsIgnoreCase("java.util.List")) {
                    final Type[] types = ((ParameterizedType) type)
                            .getActualTypeArguments();
                    final String typeClassName = types[0].getTypeName()
                            .substring(
                                    types[0].getTypeName().lastIndexOf('.')
                                            + 1);
                    if (tables.contains(typeClassName)) {
                        entity.addLookupField(new EntityLookupField(
                                field.getName(), typeClassName, null));
                    } else {
                        entity.addLookupField(new EntityLookupField(
                                field.getName(), null, typeClassName));
                    }
                } else if (((ParameterizedType) type).getRawType().getTypeName()
                        .equalsIgnoreCase("java.util.Map")
                        || ((ParameterizedType) type).getRawType().getTypeName()
                                .equalsIgnoreCase("java.util.HashMap")) {
                    final Type[] types = ((ParameterizedType) type)
                            .getActualTypeArguments();
                    final String typeClassName0 = types[0].getTypeName()
                            .substring(
                                    types[0].getTypeName().lastIndexOf('.')
                                            + 1);
                    final String typeClassName1 = types[1].getTypeName()
                            .substring(
                                    types[1].getTypeName().lastIndexOf('.')
                                            + 1);
                    if (tables.contains(typeClassName0)
                            || tables.contains(typeClassName1)) {
                        // map is String->Class or Int->Class
                        entity.addMapField(new EntityMapField(field.getName(),
                                typeClassName0, typeClassName1, true));
                    } else {
                        // map is String->String, Int->String, etc...
                        entity.addMapField(new EntityMapField(field.getName(),
                                typeClassName0, typeClassName1, false));
                    }
                }
            } else {
                final String fieldClass = field.getType().getSimpleName();
                if (tables.contains(fieldClass)) {
                    // add entity member
                    EntityField ef = new EntityField(field.getName(),
                            field.getType().getSimpleName(), null,
                            field.getAnnotation(CanBeNull.class) != null);
                    if (field.getAnnotation(JsonProperty.class) != null) {
                        ef.setJsonProperty(field.getAnnotation(
                                JsonProperty.class).value());
                    }
                    entity.addField(ef);
                    ef = null;
                } else {
                    // add primitive type member
                    String outClass = "";
                    if (type.toString().equalsIgnoreCase("boolean")) {
                        outClass = "Boolean";
                    } else if (type.toString().equalsIgnoreCase("int")
                            || type.toString().equalsIgnoreCase("long")) {
                        if (field.getAnnotation(CanBeNull.class) != null) {
                            outClass = "Long";
                        } else {
                            outClass = "long";
                        }
                    } else if (type.toString().equalsIgnoreCase("float")) {
                        if (field.getAnnotation(CanBeNull.class) != null) {
                            outClass = "Float";
                        } else {
                            outClass = "float";
                        }
                    } else if (type.toString()
                            .equalsIgnoreCase("class java.lang.String")) {
                        outClass = "String";
                    }
                    EntityField ef = new EntityField(field.getName(), null,
                            outClass,
                            field.getAnnotation(CanBeNull.class) != null);
                    if (field.getAnnotation(JsonProperty.class) != null) {
                        ef.setJsonProperty(field.getAnnotation(
                                JsonProperty.class).value());
                    }
                    entity.addField(ef);
                    ef = null;
                }
            }
        }
        if (!clazz.getSuperclass().equals(Object.class)
                && clazz.getSuperclass().getAnnotation(
                        Inheritance.class) != null) {
            InheritanceType inheritanceType = clazz.getSuperclass()
                    .getAnnotation(
                            Inheritance.class)
                    .strategy();
            switch (inheritanceType) {
            case JOINED:
                break;
            case SINGLE_TABLE:
                final EntityMarkup parent = getEntity(
                        clazz.getSuperclass().getSimpleName());
                // move all fields to parent
                final List<EntityField> list = entity.getFields();
                for (int i = list.size() - 1; i >= 0; i--) {
                    list.get(i).setNullAllowed(true);
                }
                parent.addFields(entity.getFields());
                parent.addLookupFields(entity.getLookupFields());
                entity = null;
                break;
            default: // TABLE_PER_CLASS
                break;
            }
            inheritanceType = null;
        }
        return entity;
    }

    private String createSelectIdByIdentifier(final Object o)
            throws IllegalArgumentException, IllegalAccessException,
            NoSuchFieldException, SecurityException {
        StringBuffer sb = new StringBuffer();
        sb.append("(SELECT ");
        final String table = SchemaUtilities.getInstance()
                .getTableName(o.getClass().getSimpleName());
        sb.append(table);
        sb.append("_id FROM ");
        sb.append(schema);
        sb.append(".");
        sb.append(table);
        sb.append(" WHERE ");
        final Field[] fields = o.getClass().getDeclaredFields();
        if (fieldsHaveMember(fields, "code")) {
            Field f2 = o.getClass().getDeclaredField("code");
            f2.setAccessible(true);
            if (f2.get(o) == null) {
                if (fieldsHaveMember(fields, "name")) {
                    f2 = o.getClass().getDeclaredField("name");
                    f2.setAccessible(true);
                    if (f2.get(o) == null) {
                        if (fieldsHaveMember(fields, "title")) {
                            f2 = o.getClass().getDeclaredField("title");
                            f2.setAccessible(true);
                            if (f2.get(o) == null) {
                                throw new NoSuchFieldException(
                                        "Missing valid identifier "
                                                + "fields 'code' and 'name' "
                                                + "and 'title' for "
                                                + o.getClass().getSimpleName());
                            }
                            sb.append("title='");
                            sb.append(
                                    ((String) f2.get(o)).replaceAll("'", "''"));
                            sb.append("')");
                        } else {
                            throw new NoSuchFieldException(
                                    "Missing valid identifier fields "
                                            + "'code' and 'name' for "
                                            + o.getClass().getSimpleName());
                        }
                    }
                    sb.append("name='");
                    sb.append(((String) f2.get(o)).replaceAll("'", "''"));
                    sb.append("')");
                } else {
                    throw new NoSuchFieldException(
                            "Missing valid identifier field "
                                    + "'code' for "
                                    + o.getClass().getSimpleName());
                }
            } else {
                if (f2.getGenericType().toString().equalsIgnoreCase(
                        "class java.lang.String")) {
                    sb.append("code='");
                    sb.append(((String) f2.get(o)).replaceAll("'", "''"));
                    sb.append("')");
                } else if (f2.getGenericType().toString().equalsIgnoreCase(
                        "int")) {
                    sb.append("code=");
                    sb.append(((String) f2.get(o)).replaceAll("'", "''"));
                    sb.append(")");
                } else if (f2.getGenericType().toString().equalsIgnoreCase(
                        "long")) {
                    sb.append("code=");
                    sb.append(((String) f2.get(o)).replaceAll("'", "''"));
                    sb.append(")");
                }
            }
        } else if (fieldsHaveMember(fields, "name")) {
            final Field f2 = o.getClass().getDeclaredField("name");
            f2.setAccessible(true);
            if (f2.get(o) == null) {
                throw new NoSuchFieldException(
                        "Missing valid identifier field 'name' for "
                                + o.getClass().getSimpleName());
            }
            sb.append("name='");
            sb.append(((String) f2.get(o)).replaceAll("'", "''"));
            sb.append("')");
        } else if (fieldsHaveMember(fields, "title")) {
            final Field f2 = o.getClass().getDeclaredField("title");
            f2.setAccessible(true);
            if (f2.get(o) == null) {
                throw new NoSuchFieldException(
                        "Missing valid identifier field 'title' for "
                                + o.getClass().getSimpleName());
            }
            sb.append("title='");
            sb.append(((String) f2.get(o)).replaceAll("'", "''"));
            sb.append("')");
        }
        final String s = sb.toString();
        sb = null;
        return s;
    }

    /**
     * Determines if any fields have a specific name.
     * @param fields the list of fields
     * @param member the member name
     * @return <tt>true</tt> if any of the fields have the given name;
     *         <tt>false</tt> otherwise
     */
    private boolean fieldsHaveMember(final Field[] fields,
            final String member) {
        boolean has = false;
        for (int i = fields.length - 1; i >= 0; i--) {
            if (fields[i].getName().equalsIgnoreCase(member)) {
                has = true;
                break;
            }
        }
        return has;
    }

    /**
     * Topographical sort to compare all items to each other for sorting.
     * @param list the list of entity classes
     */
    private void fullSort(final List<SchemaClass> list) {
        final List<SchemaClass> copy = new ArrayList<>();
        for (int i = 0; i < list.size(); i++) {
            copy.add(list.get(i));
        }
        list.clear();
        while (copy.size() > 0) { // while indices remain,
            // get a vertex with no successors, or -1
            final SchemaClass currentVertex = getClassWithNoDependencies(copy);
            if (currentVertex == null) { // must be a cycle
                System.out.println(
                        "ERROR: how the hell did we get here");
                System.exit(1);
            }
            list.add(currentVertex);
            copy.remove(currentVertex);
            // System.out.println("/*****************************removing "
            // + currentVertex.getClazz().getSimpleName());
        }
    }

    /**
     * Iterates through a list of {@link SchemaClass}es to find one that has no
     * dependencies. The list should have indices removed each iteration, so
     * that each loop has at least 1 class with no dependencies.
     * @param list the list of {@link SchemaClass}es
     * @return {@link SchemaClass}
     */
    private SchemaClass getClassWithNoDependencies(
            final List<SchemaClass> list) {
        SchemaClass temp = null;
        int index = 0;
        while (temp == null
                && index < list.size()) {
            // find a class with no dependencies left
            temp = list.get(index);
            // System.out.println("checking " +
            // temp.getClazz().getSimpleName());
            if (temp.hasDependencies()) {
                for (int i = 0, len = list.size(); i < len; i++) {
                    if (temp == list.get(i)) {
                        continue; // skip comparing class to itself
                    }
                    if (temp.hasDependency(
                            list.get(i).getClazz().getSimpleName())) {
                        // System.out.println(temp.getClazz().getSimpleName()
                        // + " has dependency on "
                        // + list.get(i).getClazz().getSimpleName());
                        // class has a dependency left. cannot use it
                        temp = null;
                        break;
                    }
                }
            }
            index++;
        }
        return temp;
    }

    /**
     * Gets a specific DDL by its table name.
     * @param tableName the table
     * @return {@link DDLMarkup}
     */
    private DDLMarkup getDDL(final String tableName) {
        System.out.println("get ddl " + tableName);
        DDLMarkup ddl = null;
        for (int i = ddls.size() - 1; i >= 0; i--) {
            if (ddls.get(i).getTable().equalsIgnoreCase(tableName)) {
                ddl = ddls.get(i);
                break;
            }
        }
        return ddl;
    }

    /**
     * Gets a specific Entity by its table name.
     * @param entityName the table
     * @return {@link EntityMarkup}
     */
    private EntityMarkup getEntity(final String entityName) {
        EntityMarkup entity = null;
        for (int i = entities.size() - 1; i >= 0; i--) {
            if (entities.get(i).getClassName().equalsIgnoreCase(entityName)) {
                entity = entities.get(i);
                break;
            }
        }
        return entity;
    }

    /**
     * Gets the path for the export packages.
     * @return {@link String}
     */
    public String getPkgPath() {
        return pkgPath;
    }

    /**
     * Gets the name of the schema.
     * @return {@link String}
     */
    public String getSchema() {
        return schema;
    }

    /**
     * Determines if the schema contains a specific table.
     * @param table the table name
     * @return <tt>true</tt> if the schema has the table; <tt>false</tt>
     *         otherwise
     */
    public boolean hasTable(final String table) {
        return tables.contains(table);
    }

    /**
     * Reads all fields for a class.
     * @param clazz the class
     */
    private void readFields(final Class<?> clazz) {
        final Field[] fields = clazz.getDeclaredFields();
        for (int i = fields.length - 1; i >= 0; i--) {
            final Field field = fields[i];
            try {
                final Type type = field.getGenericType();
                if (type instanceof ParameterizedType) {
                    if (((ParameterizedType) type).getRawType().getTypeName()
                            .equalsIgnoreCase("java.util.List")) {
                        final Type[] types = ((ParameterizedType) type)
                                .getActualTypeArguments();
                        final String typeClassName = types[0].getTypeName()
                                .substring(
                                        types[0].getTypeName().lastIndexOf('.')
                                                + 1);
                        if (tables.contains(typeClassName)) {
                            for (int j = classes.size() - 1; j >= 0; j--) {
                                if (classes.get(j).getClazz().equals(clazz)) {
                                    classes.get(j).addDependency(typeClassName);
                                }
                            }
                        }
                    } else if (((ParameterizedType) type).getRawType()
                            .getTypeName()
                            .equalsIgnoreCase("java.util.Map")
                            || ((ParameterizedType) type).getRawType()
                                    .getTypeName()
                                    .equalsIgnoreCase("java.util.HashMap")) {
                        if (field.getAnnotation(MapForeignKey.class) != null) {
                            String targetClass = field.getAnnotation(
                                    MapForeignKey.class).keyTargetClass();
                            if (targetClass != null
                                    && targetClass.length() > 0
                                    && tables.contains(targetClass)) {
                                for (int j = classes.size() - 1; j >= 0; j--) {
                                    if (classes.get(j).getClazz()
                                            .equals(clazz)) {
                                        classes.get(j).addDependency(
                                                targetClass);
                                    }
                                }
                            }
                            targetClass = field.getAnnotation(
                                    MapForeignKey.class).valueTargetClass();
                            if (targetClass != null
                                    && targetClass.length() > 0
                                    && tables.contains(targetClass)) {
                                for (int j = classes.size() - 1; j >= 0; j--) {
                                    if (classes.get(j).getClazz()
                                            .equals(clazz)) {
                                        classes.get(j).addDependency(
                                                targetClass);
                                    }
                                }
                            }
                        }
                        final Type[] types = ((ParameterizedType) type)
                                .getActualTypeArguments();
                        final String typeClassName0 = types[0].getTypeName()
                                .substring(
                                        types[0].getTypeName().lastIndexOf('.')
                                                + 1);
                        final String typeClassName1 = types[1].getTypeName()
                                .substring(
                                        types[1].getTypeName().lastIndexOf('.')
                                                + 1);
                        if (tables.contains(typeClassName0)) {
                            for (int j = classes.size() - 1; j >= 0; j--) {
                                if (classes.get(j).getClazz().equals(clazz)) {
                                    classes.get(j).addDependency(
                                            typeClassName0);
                                }
                            }
                        }
                        if (tables.contains(typeClassName1)) {
                            for (int j = classes.size() - 1; j >= 0; j--) {
                                if (classes.get(j).getClazz().equals(clazz)) {
                                    classes.get(j).addDependency(
                                            typeClassName1);
                                }
                            }
                        }
                    }
                } else {
                    final String fieldClass = field.getType().getSimpleName();
                    Class<?> searchClass = clazz;
                    if (!clazz.getSuperclass().equals(Object.class)) {
                        searchClass = clazz.getSuperclass();
                    }
                    if (tables.contains(fieldClass)) {
                        for (int j = classes.size() - 1; j >= 0; j--) {
                            if (classes.get(j).getClazz().equals(searchClass)) {
                                classes.get(j).addDependency(fieldClass);
                            }
                        }
                    } else if (field.getAnnotation(ForeignKey.class) != null) {
                        if (tables
                                .contains(field.getAnnotation(ForeignKey.class)
                                        .clazz().getSimpleName())) {
                            for (int j = classes.size() - 1; j >= 0; j--) {
                                if (classes.get(j).getClazz()
                                        .equals(searchClass)) {
                                    classes.get(j)
                                            .addDependency(field
                                                    .getAnnotation(
                                                            ForeignKey.class)
                                                    .clazz().getSimpleName());
                                }
                            }
                        }
                    }
                }
            } catch (final Exception ex) {
                System.out.println("error with " + field.getName());
                ex.printStackTrace();
                final String fieldClass = field.getType().getSimpleName();
                if (tables.contains(fieldClass)) {
                    classes.get(classes.indexOf(clazz))
                            .addDependency(fieldClass);
                }
            }
        }
        if (!clazz.getSuperclass().equals(Object.class)
                && clazz.getSuperclass()
                        .getAnnotation(Inheritance.class) != null) {
            final String fieldClass = clazz.getSuperclass().getSimpleName();
            if (tables.contains(fieldClass)) {
                for (int i = classes.size() - 1; i >= 0; i--) {
                    if (classes.get(i).getClazz().equals(clazz)) {
                        classes.get(i).addDependency(fieldClass);
                        break;
                    }
                }
            }
        }
    }

    /**
     * Writes the schema header for the DDL file.
     * @param writer the {@link PrintWriter} used to write the file
     */
    private void writeDDLSchemaHeader(final PrintWriter writer) {
        TextLoader.getInstance().setLibraryFolder(
                "com/dalonedrau/schemacreator");
        try {
            String section = TextLoader.getInstance().loadText(
                    "ddl_template.txt", "schema_header");
            section = TextProcessor.getInstance().processText(
                    new String[] {
                            "<schema>"
                    }, new String[] {
                            schema
                    }, section);
            writer.print(section);
        } catch (RPGException | PooledException e) {
            e.printStackTrace();
            System.exit(1);
        }
    }

    @SuppressWarnings("rawtypes")
    private void writeDML(final PrintWriter writer,
            final Class<?> clazz, final String pkg) throws Exception {
        final String table = SchemaUtilities.getInstance()
                .getTableName(clazz.getSimpleName());
        writer.print("-- ADD ");
        writer.print(table.toUpperCase());
        writer.println("S");
        writer.print("INSERT INTO ");
        writer.print(schema);
        writer.print(".");
        writer.print(table);
        writer.print("(");
        int numFields = 0;
        final List<String[]> lookupTables = new ArrayList<>();
        final List<String[]> lookupMapTables = new ArrayList<>();
        final List<String[]> mapLookupTables = new ArrayList<>();
        final Map<String, List<String>> lookups = new HashMap<>();
        final Map<String, List<String>> mapLookups = new HashMap<>();
        final Field[] fields = clazz.getDeclaredFields();
        for (int i = 0, len = fields.length; i < len; i++) {
            final Field field = fields[i];
            final Type type = field.getGenericType();
            if (type instanceof ParameterizedType) {
                if (((ParameterizedType) type).getRawType().getTypeName()
                        .equalsIgnoreCase("java.util.List")) {
                    final Type[] types = ((ParameterizedType) type)
                            .getActualTypeArguments();
                    final String typeClassName = types[0].getTypeName()
                            .substring(
                                    types[0].getTypeName().lastIndexOf('.')
                                            + 1);
                    if (tables.contains(typeClassName)) {
                        lookupTables.add(new String[] { clazz.getSimpleName(),
                                typeClassName, field.getName() });
                    } else if (((ParameterizedType) type).getRawType()
                            .getTypeName()
                            .equalsIgnoreCase("java.util.Map")
                            || ((ParameterizedType) type).getRawType()
                                    .getTypeName()
                                    .equalsIgnoreCase("java.util.HashMap")) {
                        final String typeClassName0 = types[0].getTypeName()
                                .substring(
                                        types[0].getTypeName().lastIndexOf('.')
                                                + 1);
                        final String typeClassName1 = types[1].getTypeName()
                                .substring(
                                        types[1].getTypeName().lastIndexOf('.')
                                                + 1);
                        if (tables.contains(typeClassName0)
                                || tables.contains(typeClassName1)) {
                            lookupMapTables
                                    .add(new String[] { table, typeClassName0,
                                            typeClassName1, field.getName() });
                        } else {
                            throw new Exception(
                                    "Need lookup table for non-entity field");
                        }
                    } else {
                        // skip for now
                        // throw new Exception(
                        // "Need lookup table ddl for non-entity field " +
                        // field.getName());
                    }
                } else if (((ParameterizedType) type).getRawType()
                        .getTypeName()
                        .equalsIgnoreCase("java.util.Map")
                        || ((ParameterizedType) type).getRawType()
                                .getTypeName()
                                .equalsIgnoreCase("java.util.HashMap")) {
                    final Type[] types = ((ParameterizedType) type)
                            .getActualTypeArguments();
                    final String typeClassName0 = types[0].getTypeName()
                            .substring(
                                    types[0].getTypeName().lastIndexOf('.')
                                            + 1);
                    final String typeClassName1 = types[1].getTypeName()
                            .substring(
                                    types[1].getTypeName().lastIndexOf('.')
                                            + 1);
                    if (tables.contains(typeClassName0)
                            || tables.contains(typeClassName1)) {
                        // lookupMapTables
                        // .add(new String[] { table, typeClassName0,
                        // typeClassName1, field.getName() });
                    } else {
                        if (field.isAnnotationPresent(MapForeignKey.class)) {
                            mapLookupTables.add(new String[] {
                                    clazz.getSimpleName(), // entity 1 table
                                    field.getName() }); // field name
                        }
                        // throw new Exception(
                        // "Need lookup table for non-entity field");
                    }
                }
            } else if (!field.getType().equals(clazz)) {
                numFields++;
            }
        }
        int writtenFields = 0;
        for (int i = 0, len = fields.length; i < len; i++) {
            final Field field = fields[i];
            final Type type = field.getGenericType();
            if (type instanceof ParameterizedType) {} else {
                final String fieldClass = field.getType().getSimpleName();
                if (tables.contains(fieldClass)) {
                    if (!field.getType().equals(clazz)) {
                        writer.print(SchemaUtilities.getInstance()
                                .getTableName(field.getName()));
                    }
                } else {
                    writer.print(SchemaUtilities.getInstance()
                            .getTableName(field.getName()));
                }
                if (writtenFields + 1 < numFields) {
                    writer.print(", ");
                }
                writtenFields++;
            }
        }
        writer.println(") VALUES("); // try to open js file
        final StringBuffer sb = new StringBuffer();
        sb.append(pkg);
        sb.append(".js");
        final String scannedPath = sb.toString().replace('.', '/');
        final URL scannedUrl = Thread.currentThread().getContextClassLoader()
                .getResource(
                        scannedPath);
        if (scannedUrl == null) {
            throw new IllegalArgumentException(String.format(
                    "Unable to get resources from path '%s'. " +
                            "Are you sure the package '%s' exists?",
                    scannedPath,
                    sb.toString()));
        }
        final File scannedDir = new File(scannedUrl.getFile());
        for (final File file : scannedDir.listFiles()) {
            if (file.getName().substring(0, file.getName().length() - 3)
                    .equalsIgnoreCase(clazz.getSimpleName())) {
                final ObjectMapper mapper = new ObjectMapper();
                mapper.disable(
                        DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES);
                mapper.setVisibility(VisibilityChecker.Std.defaultInstance()
                        .withFieldVisibility(Visibility.ANY));
                final List<String> updates = new ArrayList<>();
                try {
                    final List list = (List) mapper.readValue(file,
                            mapper.getTypeFactory().constructCollectionType(
                                    List.class, clazz));
                    for (int i = 0, len = list.size(); i < len; i++) {
                        try {
                            writeDMLRecord(writer, fields, clazz, table,
                                    list.get(i), numFields,
                                    updates, lookups, mapLookups);
                        } catch (IllegalArgumentException
                                | IllegalAccessException | NoSuchFieldException
                                | SecurityException e) {
                            e.printStackTrace();
                            System.exit(1);
                        }
                        writer.print(")");
                        if (i + 1 < len) {
                            writer.println(", (");
                        } else {
                            writer.println(";");
                        }
                    }
                } catch (final IOException e) {
                    e.printStackTrace();
                    System.exit(1);
                }
                writer.println();
                for (int i = 0, len = updates.size(); i < len; i++) {
                    writer.println(updates.get(i));
                }
            }
        }
        for (int i = 0, len = lookupTables.size(); i < len; i++) {
            writeDMLLookupTable(writer,
                    lookupTables.get(i)[0], // entity 1 table
                    lookupTables.get(i)[1], // entity 2 table
                    lookupTables.get(i)[2], // field name
                    lookups.get(lookupTables.get(i)[2])); // field values
        }
        for (int i = 0, len = mapLookupTables.size(); i < len; i++) {
            writeDMLMapLookupTable(writer,
                    mapLookupTables.get(i)[0], // entity 1 table
                    mapLookupTables.get(i)[1], // field name
                    mapLookups.get(mapLookupTables.get(i)[1])); // field values
        }
        writer.println();
        for (int i = 0, len = lookupMapTables.size(); i < len; i++) { /*
                                                                       * writeDMLMapLookupTable
                                                                       * (
                                                                       * writer,
                                                                       * lookupMapTables
                                                                       * .get(i)
                                                                       * [0],
                                                                       * lookupMapTables
                                                                       * .get(i)
                                                                       * [1],
                                                                       * lookupMapTables
                                                                       * .get(i)
                                                                       * [2],
                                                                       * lookupMapTables
                                                                       * .get(i)
                                                                       * [3]);
                                                                       */
        }

    }

    /**
     * Writes the DML join table for two entities.
     * @param writer the {@link PrintWriter} used to write the file
     * @param table1 the table for entity 1
     * @param table2 the table for entity 2
     * @param field the name of the field used for the join table
     * @param values the values to be added to the join table
     */
    private void writeDMLLookupTable(final PrintWriter writer,
            final String table1, final String table2, final String field,
            final List<String> values) {
        writer.print("-- ADD ");
        writer.print(SchemaUtilities.getInstance().getTableName(table1));
        writer.print("'s RELATED ");
        writer.print(SchemaUtilities.getInstance().getTableName(field));
        writer.println("s");
        /*
         * writer.print("INSERT INTO "); writer.print(schema);
         * writer.print(".");
         * writer.print(SchemaUtilities.getInstance().getTableName(table1));
         * writer.print("_");
         * writer.print(SchemaUtilities.getInstance().getTableName(field));
         * writer.print("_lookup(");
         * writer.print(SchemaUtilities.getInstance().getTableName(table1));
         * writer.print("_id, ");
         * writer.print(SchemaUtilities.getInstance().getTableName(table2)); if
         * (table1.equalsIgnoreCase(table2)) { writer.print("2"); }
         * writer.println("_id) VALUES ("); if (values != null) { for (int i =
         * 0, len = values.size(); i < len; i++) { writer.print(values.get(i));
         * if (i + 1 < len) { writer.println("), ("); } else {
         * writer.println(");"); } } }
         */
        if (values != null) {
            for (int i = 0, len = values.size(); i < len; i++) {
                writer.print("INSERT INTO ");
                writer.print(schema);
                writer.print(".");
                writer.print(
                        SchemaUtilities.getInstance().getTableName(table1));
                writer.print("_");
                writer.print(SchemaUtilities.getInstance().getTableName(field));
                writer.print("_lookup(");
                writer.print(
                        SchemaUtilities.getInstance().getTableName(table1));
                writer.print("_id, ");
                writer.print(
                        SchemaUtilities.getInstance().getTableName(table2));
                if (table1.equalsIgnoreCase(table2)) {
                    writer.print("2");
                }
                writer.println("_id) VALUES (");
                writer.print(values.get(i));
                writer.println(");");
            }
        }
        writer.println();
    }

    /**
     * Writes the DML join table for two entities.
     * @param writer the {@link PrintWriter} used to write the file
     * @param table1 the table for entity 1
     * @param table2 the table for entity 2
     * @param field the name of the field used for the join table
     * @param values the values to be added to the join table
     */
    private void writeDMLMapLookupTable(final PrintWriter writer,
            final String table1, final String field,
            final List<String> values) {
        writer.print("-- ADD ");
        writer.print(SchemaUtilities.getInstance().getTableName(table1));
        writer.print("'s RELATED ");
        writer.print(SchemaUtilities.getInstance().getTableName(field));
        writer.println("s");
        if (values != null) {
            for (int i = 0, len = values.size(); i < len; i++) {
                writer.print("INSERT INTO ");
                writer.print(schema);
                writer.print(".");
                writer.print(
                        SchemaUtilities.getInstance().getTableName(table1));
                writer.print("_");
                writer.print(SchemaUtilities.getInstance().getTableName(field));
                writer.print("_lookup(");
                writer.print(
                        SchemaUtilities.getInstance().getTableName(table1));
                writer.println("_id, key, value) VALUES (");
                writer.print(values.get(i));
                writer.println(");");
            }
        }
        writer.println();
    }

    @SuppressWarnings("rawtypes")
    private void writeDMLRecord(final PrintWriter writer, final Field[] fields,
            final Class<?> clazz, final String table, final Object o,
            final int numFields, final List<String> updateList,
            final Map<String, List<String>> lookups,
            final Map<String, List<String>> mapLookups)
            throws IllegalArgumentException, IllegalAccessException,
            NoSuchFieldException, SecurityException {
        int writtenFields = 0;
        writer.print("  ");
        for (int i = 0, len = fields.length; i < len; i++) {
            final Field field = fields[i];
            field.setAccessible(true);
            final Type type = field.getGenericType();
            if (type instanceof ParameterizedType) {
                if (((ParameterizedType) type).getRawType().getTypeName()
                        .equalsIgnoreCase("java.util.List")) {
                    List list = (List) field.get(o);
                    if (list != null
                            && !list.isEmpty()) {
                        if (lookups.get(field.getName()) == null) {
                            lookups.put(field.getName(),
                                    new ArrayList<String>());
                        }
                        for (int j = 0, lenJ = list.size(); j < lenJ; j++) {
                            lookups.get(field.getName()).add(
                                    createDMLLookupStatement(o, list.get(j)));
                        }
                    }
                    list = null;
                } else if (((ParameterizedType) type).getRawType()
                        .getTypeName()
                        .equalsIgnoreCase("java.util.Map")
                        || ((ParameterizedType) type).getRawType()
                                .getTypeName()
                                .equalsIgnoreCase("java.util.HashMap")) {
                    if (field.isAnnotationPresent(MapForeignKey.class)
                            && field.get(o) != null) {
                        final MapForeignKey mfk = field
                                .getAnnotation(MapForeignKey.class);
                        final Map map = (Map) field.get(o);
                        try {
                            final Iterator iter = map.keySet().iterator();
                            while (iter.hasNext()) {
                                // create 2 new objects for lookup values
                                final String key = (String) iter.next();
                                PooledStringBuilder sb = StringBuilderPool
                                        .getInstance().getStringBuilder();
                                sb.append(o.getClass().getPackage().getName());
                                sb.append('.');
                                sb.append(mfk.keyTargetClass());
                                final Object keyObj = Class.forName(
                                        sb.toString()).newInstance();
                                sb.setLength(0);
                                final Field keyField = keyObj.getClass()
                                        .getDeclaredField(
                                                mfk.keyField());
                                keyField.setAccessible(true);
                                keyField.set(keyObj, key);
                                // create value object
                                /*
                                 * sb.append(o.getClass().getPackage().getName()
                                 * ); sb.append('.');
                                 * sb.append(mfk.valueTargetClass()); Object
                                 * valObj = Class.forName(
                                 * sb.toString()).newInstance();
                                 * sb.setLength(0); Field valField =
                                 * valObj.getClass().getDeclaredField(
                                 * mfk.valueField());
                                 * valField.setAccessible(true);
                                 * valField.set(valObj, map.get(key));
                                 */
                                if (mapLookups.get(field.getName()) == null) {
                                    mapLookups.put(field.getName(),
                                            new ArrayList<String>());
                                }
                                sb.append("  ");
                                sb.append(createSelectIdByIdentifier(o));
                                sb.append(",\n  '");
                                sb.append(key);
                                sb.append("',\n");
                                sb.append("  '");
                                sb.append(map.get(key));
                                sb.append("'");
                                mapLookups.get(field.getName())
                                        .add(sb.toString());
                                sb.returnToPool();
                                sb = null;
                            }
                        } catch (ClassNotFoundException | PooledException
                                | InstantiationException e) {
                            // TODO Auto-generated catch block
                            e.printStackTrace();
                        }
                        /*
                         * if (lookups.get(field.getName()) == null) {
                         * lookups.get(field.getName()).add(
                         * createDMLLookupStatement(o, list.get(j))); }
                         */
                    }
                    /*
                     * String typeClassName0 = types[0].getTypeName().substring(
                     * types[0].getTypeName().lastIndexOf('.') + 1); String
                     * typeClassName1 = types[1].getTypeName().substring(
                     * types[1].getTypeName().lastIndexOf('.') + 1); if
                     * (tables.contains(typeClassName0) ||
                     * tables.contains(typeClassName1)) { lookupMapTables
                     * .add(new String[] { table, typeClassName0,
                     * typeClassName1, field.getName() }); } else { throw new
                     * Exception( "Need lookup table for non-entity field"); }
                     */
                }
            } else {
                final String fieldClass = field.getType().getSimpleName();
                if (tables.contains(fieldClass)) {
                    Object obj = field.get(o);
                    if (field.getType().equals(clazz)) {
                        if (obj != null) {
                            updateList.add(createDMLUpdateStatement(table,
                                    field.getName(),
                                    fieldsHaveMember(fields, "code"),
                                    fieldsHaveMember(fields, "name"), o, obj));
                        }
                    } else {
                        // write select statement
                        if (obj != null) {
                            writer.print(createSelectIdByIdentifier(obj));
                        } else {
                            writer.print("NULL");
                        }
                        if (writtenFields + 1 < numFields) {
                            writer.print(", ");
                        }
                        writtenFields++;
                    }
                    obj = null;
                } else {
                    if (type.toString().equalsIgnoreCase("boolean")) {
                        writer.print(field.get(o));
                    } else if (type.toString().equalsIgnoreCase("int")) {
                        writer.print(field.get(o));
                    } else if (type.toString().equalsIgnoreCase("long")) {
                        writer.print(field.get(o));
                    } else if (type.toString().equalsIgnoreCase("float")) {
                        writer.print(field.get(o));
                    } else if (type.toString()
                            .equalsIgnoreCase("class java.lang.String")) {
                        if (field.get(o) == null) {
                            writer.print("NULL");
                        } else {
                            writer.print("'");
                            writer.print(((String) field.get(o)).replaceAll(
                                    "'", "''"));
                            writer.print("'");
                        }
                    } else {
                        System.err.println("unknown type for field "
                                + field.getName() + " - " + type.toString());
                        System.exit(1);
                    }
                    if (writtenFields + 1 < numFields) {
                        writer.print(", ");
                    }
                    writtenFields++;
                }
            }
        }
    }

    /**
     * Writes the entity classes - java, DDL, and DML.
     * @param pkg the current package
     * @throws Exception if an error occurs
     */
    private void writeEntityClasses(final String pkg)
            throws Exception {
        final File ddlFile = new File(".\\" + pkgPath + "\\schema\\"
                + schema + "_ddl.sql");
        ddlFile.getParentFile().mkdirs();

        final PrintWriter ddlWriter = new PrintWriter(ddlFile, "UTF-8");
        writeDDLSchemaHeader(ddlWriter);

        final File dmlFile = new File(".\\" + pkgPath + "\\schema\\"
                + schema + "_dml.sql");
        dmlFile.getParentFile().mkdirs();
        final PrintWriter dmlWriter = new PrintWriter(dmlFile, "UTF-8");
        fullSort(classes);
        entities = new ArrayList<>();
        ddls = new ArrayList<>();
        for (int i = 0, len = classes.size(); i < len; i++) {
            final SchemaClass schemaClass = classes.get(i);
            final Class<?> clazz = schemaClass.getClazz();
            // 1. write Entity Class
            // new EntityWriter(this).write(clazz);
            final EntityMarkup entity = createEntityMarkup(clazz);
            if (entity != null) {
                entities.add(entity);
            }
            if (clazz.getAnnotation(MappedSuperclass.class) == null) {
                // new ControllerWriter(this).write(clazz);
                // 2. write DDL
                DDLMarkup ddl = createDDL(ddlWriter, clazz);
                if (ddl != null) {
                    ddls.add(ddl);
                }
                ddl = null;
                // 3. write DML
                writeDML(dmlWriter, clazz, pkg);
            }
        }
        for (int i = 0, len = entities.size(); i < len; i++) {
            String entityClassName = SchemaUtilities.getInstance()
                    .getEntityClassName(
                            entities.get(i).getClassName());
            PooledStringBuilder sb = StringBuilderPool.getInstance()
                    .getStringBuilder();
            sb.append(".\\");
            sb.append(getPkgPath());
            sb.append("\\models\\");
            sb.append(getSchema());
            sb.append("\\");
            sb.append(entityClassName);
            sb.append(".java");
            File file = new File(sb.toString());
            file.getParentFile().mkdirs();
            PrintWriter entityWriter = new PrintWriter(file, "UTF-8");
            entities.get(i).write(entityWriter, schema);
            entityWriter.close();
            sb.returnToPool();
            sb = null;
            new ControllerWriter(this).write(entities.get(i));
            writeRepositoryClass(entities.get(i));
            entityClassName = null;
            file = null;
            entityWriter = null;
        }
        for (int i = 0, len = ddls.size(); i < len; i++) {
            ddls.get(i).write(ddlWriter, schema);
        }
        ddlWriter.close();
        dmlWriter.close();
    }

    /**
     * Writes an repository class to file.
     * @param clazz the entity {@link Class} the repository is being written for
     * @throws Exception if an error occurs
     */
    private void writeRepositoryClass(final EntityMarkup clazz)
            throws Exception {
        final String entityClassName = SchemaUtilities.getInstance()
                .getEntityClassName(
                        clazz.getClassName());
        final StringBuffer sb = new StringBuffer();
        sb.append(".\\");
        sb.append(pkgPath);
        sb.append("\\repositories\\");
        sb.append(schema);
        sb.append("\\");
        sb.append(entityClassName.replace("Entity", "Repository"));
        sb.append(".java");
        final File file = new File(sb.toString());
        file.getParentFile().mkdirs();
        final PrintWriter writer = new PrintWriter(file, "UTF-8");
        // write header
        writeRepositoryClassHeader(writer, clazz);
        // write Fields
        final List<EntityField> fields = clazz.getFields();
        for (int i = 0, len = fields.size(); i < len; i++) {
            final EntityField field = fields.get(i);
            if (field.getEntityClazz() == null) {
                writer.println("\t/**");
                writer.print("\t * Retrieves a list of ");
                writer.print(SchemaUtilities.getInstance()
                        .getTableName(entityClassName.replace(
                                schema.toUpperCase(), "")
                                .replace("Entity", ""))
                        .replaceAll("_", " "));
                writer.print("s by their ");
                writer.print(field.getName());
                writer.println(".");
                writer.print("\t * @param ");
                writer.print(field.getName());
                writer.print(" the ");
                writer.println(field.getName());
                writer.print("\t * @return {@link List}<{@link ");
                writer.print(entityClassName);
                writer.println("}>");
                writer.println("\t */");
                writer.print("\tList<");
                writer.print(entityClassName);
                writer.print("> findBy");
                writer.print(SchemaUtilities.getInstance().capitalizeFirst(
                        field.getName()));
                writer.print("(");
                if (field.getPrimitiveClazz().equalsIgnoreCase("boolean")) {
                    writer.print("Boolean ");
                } else if (field.getPrimitiveClazz().equalsIgnoreCase("int")
                        || field.getPrimitiveClazz().equalsIgnoreCase("long")) {
                    writer.print("Long ");
                } else if (field.getPrimitiveClazz()
                        .equalsIgnoreCase("float")) {
                    writer.print("Float ");
                } else if (field.getPrimitiveClazz()
                        .equalsIgnoreCase("String")) {
                    writer.print("String ");
                }
                writer.print(field.getName());
                writer.println(");");
            }
        }
        writer.println("}");
        writer.close();
    }

    /**
     * Writes the header for all java entity classes.
     * @param writer the {@link PrintWriter} used to write the file
     * @param clazz the entity {@link Class} being written
     */
    private void writeRepositoryClassHeader(final PrintWriter writer,
            final EntityMarkup clazz) {
        writer.print("package com.osrapi.repositories.");
        writer.print(schema);
        writer.println(";");
        writer.println();
        writer.println("import java.util.List;");
        writer.println();
        writer.println(
                "import org.springframework.data.repository.CrudRepository;");
        writer.println("import org.springframework.stereotype.Repository;");
        writer.println();
        writer.print("import com.osrapi.models.");
        writer.print(schema);
        writer.print(".");
        writer.print(SchemaUtilities.getInstance().getEntityClassName(
                clazz.getClassName()));
        writer.println(";");
        writer.println();
        writer.println("/**");
        writer.println(" *");
        writer.println(" * @author drau");
        writer.println(" *");
        writer.println(" */");
        writer.println("@Repository");
        writer.print("public interface ");
        writer.println(
                SchemaUtilities.getInstance().getEntityClassName(
                        clazz.getClassName()).replace("Entity", "Repository"));
        writer.print("extends CrudRepository<");
        writer.print(SchemaUtilities.getInstance().getEntityClassName(
                clazz.getClassName()));
        writer.println(", Long> {");
    }
}
