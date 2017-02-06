package com.dalonedrau.schemacreator.entity;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import com.dalonedrau.schemacreator.RPGException;
import com.dalonedrau.schemacreator.SchemaUtilities;
import com.dalonedrau.schemacreator.TextLoader;
import com.dalonedrau.schemacreator.TextProcessor;
import com.dalonedrow.pooled.PooledException;

/**
 * @author drau
 */
public final class EntityMarkup {
    /** the entity class name. */
    private final Class<?> clazz;
    /** the list entity members. */
    private final List<EntityField> fields;
    /** the list entity lookup members. */
    private final List<EntityLookupField> lookupFields;
    /** the list entity map members. */
    private final List<EntityMapField> mapFields;

    /**
     * Creates a new instance of {@link EntityMarkup}.
     * @param c the entity class name
     */
    public EntityMarkup(final Class<?> c) {
        clazz = c;
        fields = new ArrayList<>();
        lookupFields = new ArrayList<>();
        mapFields = new ArrayList<>();
    }

    /**
     * Adds a field.
     * @param field the field
     */
    public void addField(final EntityField field) {
        fields.add(field);
    }

    /**
     * Adds all fields.
     * @param list the list of fields being added
     * @throws Exception if an error occurs
     */
    public void addFields(final List<EntityField> list) throws Exception {
        if (fields.isEmpty()) {
            fields.addAll(list);
        } else {
            for (int o = list.size() - 1; o >= 0; o--) {
                EntityField newFld = list.get(o);
                boolean found = false;
                for (int i = fields.size() - 1; i >= 0; i--) {
                    EntityField oldFld = fields.get(i);
                    if (newFld.getName().equalsIgnoreCase(oldFld.getName())) {
                        if (newFld.getEntityClazz() == null
                                && oldFld.getEntityClazz() != null
                                || newFld.getEntityClazz() != null
                                        && oldFld.getEntityClazz() == null) {
                            throw new Exception("field " + newFld.getName()
                                    + " already exists in class "
                                    + clazz.getSimpleName()
                                    + " but of a different type");
                        } else if (newFld.getPrimitiveClazz() == null
                                && oldFld.getPrimitiveClazz() != null
                                || newFld.getPrimitiveClazz() != null
                                        && oldFld.getPrimitiveClazz() == null) {
                            throw new Exception("field " + newFld.getName()
                                    + " already exists in class "
                                    + clazz.getSimpleName()
                                    + " but of a different type");
                        } else if (newFld.getEntityClazz() != null
                                && oldFld.getEntityClazz() != null
                                && !newFld.getEntityClazz().equalsIgnoreCase(
                                        oldFld.getEntityClazz())) {
                            throw new Exception("field " + newFld.getName()
                                    + " already exists in class "
                                    + clazz.getSimpleName()
                                    + " but of a different type");
                        } else if (newFld.getPrimitiveClazz() != null
                                && oldFld.getPrimitiveClazz() != null
                                && !newFld.getPrimitiveClazz().equalsIgnoreCase(
                                        oldFld.getPrimitiveClazz())) {
                            throw new Exception("field " + newFld.getName()
                                    + " already exists in class "
                                    + clazz.getSimpleName()
                                    + " but of a different type");
                        }
                        found = true;
                        oldFld = null;
                        break;
                    }
                    oldFld = null;
                }
                if (!found) {
                    fields.add(newFld);
                }
                newFld = null;
            }
        }
    }

    /**
     * Adds a lookup field.
     * @param field the field
     */
    public void addLookupField(final EntityLookupField field) {
        lookupFields.add(field);
    }

    public void addLookupFields(final List<EntityLookupField> list) {
        if (lookupFields.isEmpty()) {
            lookupFields.addAll(list);
        } else {
            for (int o = list.size() - 1; o >= 0; o--) {
                EntityLookupField newFld = list.get(o);
                boolean found = false;
                for (int i = fields.size() - 1; i >= 0; i--) {
                    EntityLookupField oldFld = lookupFields.get(i);
                    if (newFld.getFieldName().equalsIgnoreCase(
                            oldFld.getFieldName())) {
                        found = true;
                        oldFld = null;
                        break;
                    }
                    oldFld = null;
                }
                if (!found) {
                    lookupFields.add(newFld);
                }
                newFld = null;
            }
        }
    }

    /**
     * Adds a map field.
     * @param field the field
     */
    public void addMapField(final EntityMapField field) {
        mapFields.add(field);
    }

    /**
     * Gets the value for the className.
     * @return {@link String}
     */
    public String getClassName() {
        return clazz.getSimpleName();
    }

    public Class<?> getClazz() {
        return clazz;
    }

    /**
     * Gets the list of fields.
     * @return {@link List}<{@link EntityField}>
     */
    public List<EntityField> getFields() {
        return fields;
    }

    /**
     * Gets the value for the lookupFields.
     * @return {@link List<EntityLookupField>}
     */
    public List<EntityLookupField> getLookupFields() {
        return lookupFields;
    }

    /**
     * Gets the value for the mapFields.
     * @return {@link List<EntityMapField>}
     */
    public List<EntityMapField> getMapFields() {
        return mapFields;
    }

    /**
     * Writes the entity class markup.
     * @param writer the {@link PrintWriter} instance
     * @param schema the schema
     */
    public void write(final PrintWriter writer, final String schema) {
        TextLoader.getInstance().setLibraryFolder(
                "com/dalonedrau/schemacreator");
        try {
            writeHeader(writer, schema);
            for (int i = fields.size() - 1; i >= 0; i--) {
                fields.get(i).write(writer);
            }
            for (int i = lookupFields.size() - 1; i >= 0; i--) {
                lookupFields.get(i).write(writer, schema,
                        clazz.getSimpleName());
            }
            for (int i = mapFields.size() - 1; i >= 0; i--) {
                mapFields.get(i).write(writer, schema, clazz.getSimpleName());
            }
            writer.println("}");
            writer.println();
        } catch (final Exception ex) {
            ex.printStackTrace();
            System.exit(1);
        }
    }

    /**
     * Writes the entity class header.
     * @param writer the {@link PrintWriter} instance
     * @param schema the schema
     * @throws RPGException if an error occurs
     * @throws PooledException if an error occurs
     */
    private void writeHeader(final PrintWriter writer, final String schema)
            throws RPGException, PooledException {
        String section = TextLoader.getInstance().loadText(
                "entity_template.txt", "entity_header");
        section = TextProcessor.getInstance().processText(
                new String[] {
                        "<schema>", "<tableName>", "<entityClass>"
                }, new String[] {
                        schema,
                        SchemaUtilities.getInstance().getTableName(
                                clazz.getSimpleName()),
                        SchemaUtilities.getInstance().getEntityClassName(
                                clazz.getSimpleName())
                }, section);
        writer.println(section);
    }
}
