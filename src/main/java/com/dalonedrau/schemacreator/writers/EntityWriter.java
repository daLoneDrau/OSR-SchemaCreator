package com.dalonedrau.schemacreator.writers;

import java.io.File;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.MappedSuperclass;
import com.dalonedrau.schemacreator.Annotations.ToString;
import com.dalonedrau.schemacreator.RPGException;
import com.dalonedrau.schemacreator.SchemaCreator;
import com.dalonedrau.schemacreator.SchemaUtilities;
import com.dalonedrau.schemacreator.TextLoader;
import com.dalonedrau.schemacreator.TextProcessor;
import com.dalonedrow.pooled.PooledException;

public class EntityWriter {
    /** the schema.getSchema() being written. */
    private final SchemaCreator schema;

    /**
     * Creates a new instance of {@link ControllerWriter}.
     * @param s the schema.getSchema() being written
     */
    public EntityWriter(final SchemaCreator s) {
        schema = s;
    }

    /**
     * Writes an entity class to file.
     * @param clazz the entity {@link Class} being written
     * @throws Exception
     */
    public void write(final Class<?> clazz)
            throws Exception {
        TextLoader.getInstance().setLibraryFolder(
                "com/dalonedrau/schemacreator");
        final String entityClassName = SchemaUtilities.getInstance()
                .getEntityClassName(clazz);
        final StringBuffer sb = new StringBuffer();
        sb.append(".\\");
        sb.append(schema.getPkgPath());
        sb.append("\\models\\");
        sb.append(schema.getSchema());
        sb.append("\\");
        sb.append(entityClassName);
        sb.append(".java");
        final File file = new File(sb.toString());
        file.getParentFile().mkdirs();
        final PrintWriter writer = new PrintWriter(file, "UTF-8");

        // write header
        writeEntityClassHeader(writer, clazz);
        // write Fields
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
                    if (schema.hasTable(typeClassName)) {
                        // create lookup table
                        writeEntityLookupMember(writer, clazz, typeClassName,
                                field.getName());
                    } else {
                        throw new Exception(
                                "Need lookup table for non-entity field");
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
                    if (schema.hasTable(typeClassName0)
                            || schema.hasTable(typeClassName1)) {
                        // create lookup table
                        writeEntityMapLookupMember(writer, clazz, types,
                                field.getName());
                    } else {
                        writeEntityMapLookupNonMember(writer, clazz, types,
                                field.getName());
                    }
                }
            } else {
                final String fieldClass = field.getType().getSimpleName();
                if (schema.hasTable(fieldClass)) {
                    if (field.getType().equals(clazz)) {
                        writeEntitySelfReferenceMember(writer, field.getName(),
                                entityClassName,
                                field.getAnnotation(CanBeNull.class) == null);
                    } else {
                        boolean oneToOne = false;
                        final Class<?> memberClass = field.getType();
                        final Field[] memberClassFields = memberClass
                                .getDeclaredFields();
                        for (int j = memberClassFields.length - 1; j >= 0;
                                j--) {
                            if (memberClassFields[j].getType().getName()
                                    .equals(clazz.getName())) {
                                oneToOne = true;
                                break;
                            }
                        }
                        if (oneToOne) {
                            writeEntityOneToOneMember(writer, field.getName(),
                                    field.getType(),
                                    field.getAnnotation(
                                            CanBeNull.class) == null);
                        } else {
                            writeEntityManyToOneMember(writer, field.getName(),
                                    field.getType(),
                                    field.getAnnotation(
                                            CanBeNull.class) == null);
                        }
                    }
                } else {
                    String outClass = "";
                    if (type.toString().equalsIgnoreCase("boolean")) {
                        outClass = "Boolean";
                    } else if (type.toString().equalsIgnoreCase("int")) {
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
                    writeEntityMember(writer, field.getName(), outClass,
                            field.getAnnotation(CanBeNull.class) == null);
                }
                if (field.getAnnotation(ToString.class) != null) {
                    TextLoader.getInstance().setLibraryFolder(
                            "com/dalonedrau/schemacreator");
                    try {
                        String section = TextLoader.getInstance().loadText(
                                "entity_template.txt", "entity_to_string");
                        final StringBuffer sb1 = new StringBuffer();
                        if (type.toString().equalsIgnoreCase("boolean")) {
                            sb1.append("Boolean.toString(");
                            sb1.append(field.getName());
                            sb1.append(")");
                        } else if (type.toString().equalsIgnoreCase("int")) {
                            sb1.append("Long.toString(");
                            sb1.append(field.getName());
                            sb1.append(")");
                        } else if (type.toString()
                                .equalsIgnoreCase("class java.lang.String")) {
                            sb1.append(field.getName());
                        }
                        section = TextProcessor.getInstance().processText(
                                new String[] {
                                        "<fieldValue>"
                                }, new String[] {
                                        sb1.toString()
                                }, section);
                        writer.println(section);
                    } catch (RPGException | PooledException e) {
                        e.printStackTrace();
                        System.exit(1);
                    }
                }
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
    private void writeEntityClassHeader(final PrintWriter writer,
            final Class<?> clazz) {
        try {
            if (clazz.getAnnotation(MappedSuperclass.class) != null) {
                String section = TextLoader.getInstance().loadText(
                        "entity_template.txt", "mapped_superclass_header");
                section = TextProcessor.getInstance().processText(
                        new String[] {
                                "<schema>", "<entityClass>"
                        }, new String[] {
                                schema.getSchema(),
                                SchemaUtilities.getInstance()
                                        .getEntityClassName(clazz)
                        }, section);
                writer.println(section);
            } else {
                String section = TextLoader.getInstance().loadText(
                        "entity_template.txt", "entity_header");
                section = TextProcessor.getInstance().processText(
                        new String[] {
                                "<schema>", "<tableName>", "<entityClass>"
                        }, new String[] {
                                schema.getSchema(),
                                SchemaUtilities.getInstance()
                                        .getTableName(clazz.getSimpleName()),
                                SchemaUtilities.getInstance()
                                        .getEntityClassName(clazz)
                        }, section);
                writer.println(section);
            }
        } catch (RPGException | PooledException e) {
            e.printStackTrace();
            System.exit(1);
        }
    }

    /**
     * Writes the definition of a class member that is referenced in a lookup
     * table.
     * @param writer the {@link PrintWriter} instance
     * @param clazz the entity class
     * @param typeClassName the lookup member entity class name
     * @param fieldName the lookup member field name
     */
    private void writeEntityLookupMember(final PrintWriter writer,
            final Class<?> clazz, final String typeClassName,
            final String fieldName) {
        try {
            String section = TextLoader.getInstance().loadText(
                    "entity_template.txt", "entity_lookup_member");
            String colName = SchemaUtilities.getInstance()
                    .getTableName(typeClassName);
            if (colName.equalsIgnoreCase(SchemaUtilities.getInstance()
                    .getTableName(clazz.getSimpleName()))) {
                StringBuffer sb = new StringBuffer();
                sb.append(colName);
                sb.append('2');
                colName = sb.toString();
                sb = null;
            }
            section = TextProcessor.getInstance().processText(
                    new String[] {
                            "<lookupEntityClass>", "<entityClass>",
                            "<tableName>", "<fieldTableName>", "<schema>",
                            "<lookupEntityColumnName>",
                            "<lookupEntityTableName>", "<fieldName>",
                            "<fieldNamePlural>", "<fieldNameFirstCap>",
                    }, new String[] {
                            SchemaUtilities.getInstance()
                                    .getEntityClassName(typeClassName),
                            SchemaUtilities.getInstance()
                                    .getEntityClassName(clazz.getSimpleName()),
                            SchemaUtilities.getInstance()
                                    .getTableName(clazz.getSimpleName()),
                            SchemaUtilities.getInstance()
                                    .getTableName(fieldName),
                            schema.getSchema(), colName,
                            SchemaUtilities.getInstance()
                                    .getTableName(typeClassName),
                            fieldName,
                            SchemaUtilities.getInstance().pluralize(fieldName),
                            SchemaUtilities.getInstance()
                                    .capitalizeFirst(fieldName)

                    }, section);
            writer.println(section);
        } catch (RPGException | PooledException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            System.exit(1);
        }
    }

    /**
     * Writes a many-to-one member to an entity class.
     * @param writer the {@link PrintWriter} used to write the file
     * @param fieldName the field name
     * @param fieldClass the field class
     * @param notNull the flag indicating that field cannot be null
     */
    private void writeEntityManyToOneMember(final PrintWriter writer,
            final String fieldName, final Class<?> fieldClass,
            final boolean notNull) {
        try {
            String section = TextLoader.getInstance().loadText(
                    "entity_template.txt", "entity_many_to_one_member");
            String n = "";
            if (notNull) {
                n = "@NotNull";
            }
            section = TextProcessor.getInstance().processText(
                    new String[] {
                            "<fieldName>", "<tableFieldName>",
                            "<fieldClass>", "<notNull>", "<fieldNameFirstCap>"
                    }, new String[] {
                            fieldName, SchemaUtilities.getInstance()
                                    .getTableName(fieldName),
                            SchemaUtilities.getInstance()
                                    .getEntityClassName(fieldClass),
                            n,
                            SchemaUtilities.getInstance()
                                    .capitalizeFirst(fieldName)
                    }, section);
            writer.println(section);
        } catch (RPGException | PooledException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            System.exit(1);
        }
    }

    private void writeEntityMapLookupMember(final PrintWriter writer,
            final Class<?> clazz,
            final Type[] types, final String name) {
        final String typeClassName0 = types[0].getTypeName().substring(
                types[0].getTypeName().lastIndexOf('.')
                        + 1);
        final String typeClassName1 = types[1].getTypeName().substring(
                types[1].getTypeName().lastIndexOf('.')
                        + 1);
        try {
            String section = TextLoader.getInstance().loadText(
                    "entity_template.txt", "entity_lookup_map_member");
            String colName = SchemaUtilities.getInstance()
                    .getTableName(typeClassName1);
            if (colName.equalsIgnoreCase(SchemaUtilities.getInstance()
                    .getTableName(clazz.getSimpleName()))) {
                StringBuffer sb = new StringBuffer();
                sb.append(colName);
                sb.append('2');
                colName = sb.toString();
                sb = null;
            }
            section = TextProcessor.getInstance().processText(
                    new String[] {
                            "<tableName>", "<fieldTableName>", "<schema>",
                            "<lookupMappingTableName>", "<keyClass>",
                            "<lookupMappingEntityClass>", "<fieldNameFirstCap>",
                            "<fieldName>", "<fieldNamePlural>"
                    }, new String[] {
                            SchemaUtilities.getInstance()
                                    .getTableName(clazz.getSimpleName()),
                            SchemaUtilities.getInstance().getTableName(name),
                            schema.getSchema(),
                            SchemaUtilities.getInstance().getTableName(
                                    typeClassName1),
                            typeClassName0,
                            SchemaUtilities.getInstance()
                                    .getEntityClassName(typeClassName1),
                            SchemaUtilities.getInstance().capitalizeFirst(name),
                            name, SchemaUtilities.getInstance().pluralize(name)

                    }, section);
            writer.println(section);
        } catch (RPGException | PooledException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            System.exit(1);
        }
    }

    private void writeEntityMapLookupNonMember(final PrintWriter writer,
            final Class<?> clazz,
            final Type[] types, final String name) {
        final String typeClassName0 = types[0].getTypeName().substring(
                types[0].getTypeName().lastIndexOf('.')
                        + 1);
        final String typeClassName1 = types[1].getTypeName().substring(
                types[1].getTypeName().lastIndexOf('.')
                        + 1);
        try {
            String section = TextLoader.getInstance().loadText(
                    "entity_template.txt", "entity_lookup_map_non_member");
            final String colName = SchemaUtilities.getInstance()
                    .getTableName(typeClassName0);
            section = TextProcessor.getInstance().processText(
                    new String[] {
                            "<tableName>", "<fieldTableName>", "<schema>",
                            "<lookupEntityColumnName>",
                            "<lookupEntityTableName>", "<lookupEntityClass>",
                            "<lookupMappingClass>", "<fieldNamePlural>",
                            "<fieldNameFirstCap>", "<fieldName>"
                    }, new String[] {
                            SchemaUtilities.getInstance()
                                    .getTableName(clazz.getSimpleName()),
                            SchemaUtilities.getInstance().getTableName(name),
                            schema.getSchema(), "key",
                            typeClassName0,
                            typeClassName0,
                            typeClassName1,
                            SchemaUtilities.getInstance().pluralize(name),
                            SchemaUtilities.getInstance().capitalizeFirst(name),
                            name

                    }, section);
            writer.println(section);
        } catch (RPGException | PooledException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            System.exit(1);
        }
    }

    /**
     * Writes a member to an entity class.
     * @param writer the {@link PrintWriter} used to write the file
     * @param fieldName the field name
     * @param fieldClass the field class
     * @param notNull the flag indicating that field cannot be null
     */
    private void writeEntityMember(final PrintWriter writer,
            final String fieldName, final String fieldClass,
            final boolean notNull) {
        try {
            String section = TextLoader.getInstance().loadText(
                    "entity_template.txt", "entity_member");
            String n = "";
            if (notNull) {
                n = "@NotNull";
            }
            section = TextProcessor.getInstance().processText(
                    new String[] {
                            "<fieldName>", "<tableFieldName>",
                            "<fieldClass>", "<notNull>", "<fieldNameFirstCap>"
                    }, new String[] {
                            fieldName, SchemaUtilities.getInstance()
                                    .getTableName(fieldName),
                            fieldClass, n,
                            SchemaUtilities.getInstance()
                                    .capitalizeFirst(fieldName)
                    }, section);
            writer.println(section);
        } catch (RPGException | PooledException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            System.exit(1);
        }
    }

    /**
     * Writes a one-to-one member to an entity class.
     * @param writer the {@link PrintWriter} used to write the file
     * @param fieldName the field name
     * @param fieldClass the field class
     * @param notNull the flag indicating that field cannot be null
     */
    private void writeEntityOneToOneMember(final PrintWriter writer,
            final String fieldName,
            final Class<?> fieldClass, final boolean notNull) {
        writer.print("\t/** the ");
        writer.print(fieldName);
        writer.println(". */");
        final String fieldEntityClass = SchemaUtilities.getInstance()
                .getEntityClassName(fieldClass);
        writer.print("\t@OneToOne(cascade = CascadeType.ALL, targetEntity = ");
        writer.print(fieldEntityClass);
        writer.println(".class, fetch = FetchType.EAGER)");
        writer.println("\t@Fetch(FetchMode.SELECT)");
        writer.print("\t@JoinColumn(name = \"");
        writer.print(SchemaUtilities.getInstance().getTableName(fieldName));
        writer.println("\")");
        if (!SchemaUtilities.getInstance().getTableName(fieldName)
                .equalsIgnoreCase(fieldName)) {
            writer.print("\t@JsonProperty(\"");
            writer.print(SchemaUtilities.getInstance().getTableName(fieldName));
            writer.println("\")");
        }
        if (notNull) {
            writer.println("\t@NotNull");
        }
        writer.print("\tprivate ");
        writer.print(fieldEntityClass);
        writer.print(" ");
        writer.print(fieldName);
        writer.println(";");
        writer.println("\t/**");
        writer.print("\t * Gets the ");
        writer.print(fieldName);
        writer.println(".");
        writer.print("\t * @return {@link ");
        writer.print(fieldEntityClass);
        writer.println("}");
        writer.println("\t */");
        writer.print("\tpublic ");
        writer.print(fieldEntityClass);
        writer.print(" get");
        writer.print(SchemaUtilities.getInstance().capitalizeFirst(fieldName));
        writer.println("() {");
        writer.print("\t\treturn ");
        writer.print(fieldName);
        writer.println(";");
        writer.println("\t}");
        writer.println("\t/**");
        writer.print("\t * Sets the ");
        writer.print(fieldName);
        writer.println(".");
        writer.println("\t * @param val the new value");
        writer.println("\t */");
        writer.print("\tpublic void set");
        writer.print(SchemaUtilities.getInstance().capitalizeFirst(fieldName));
        writer.print("(final ");
        writer.print(fieldEntityClass);
        writer.println(" val) {");
        writer.print("\t\t");
        writer.print(fieldName);
        writer.println(" = val;");
        writer.println("\t}");
    }

    /**
     * Writes a self-referencing member to an entity class.
     * @param writer the {@link PrintWriter} used to write the file
     * @param fieldName the field name
     * @param fieldClass the field class
     * @param notNull the flag indicating that field cannot be null
     */
    private void writeEntitySelfReferenceMember(final PrintWriter writer,
            final String fieldName,
            final String fieldClass, final boolean notNull) {
        try {
            String section = TextLoader.getInstance().loadText(
                    "entity_template.txt", "entity_self_ref");
            String n = "";
            if (notNull) {
                n = "@NotNull";
            }
            section = TextProcessor.getInstance().processText(
                    new String[] {
                            "<fieldName>", "<entityClass>",
                            "<notNull>", "<fieldNameFirstCap>",
                            "<fieldTableName>"
                    }, new String[] {
                            fieldName, fieldClass, n,
                            SchemaUtilities.getInstance()
                                    .capitalizeFirst(fieldName),
                            SchemaUtilities.getInstance()
                                    .getTableName(fieldName)
                    }, section);
            writer.println(section);
        } catch (RPGException | PooledException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            System.exit(1);
        }
    }
}
