package com.dalonedrau.schemacreator.entity;

import java.io.PrintWriter;

import com.dalonedrau.schemacreator.RPGException;
import com.dalonedrau.schemacreator.SchemaUtilities;
import com.dalonedrau.schemacreator.TextLoader;
import com.dalonedrau.schemacreator.TextProcessor;
import com.dalonedrow.pooled.PooledException;

/**
 * @author drau
 */
public final class EntityMapField {
    /** flag indicating the map's values are entity instances. */
    private final boolean isEntity;
    /** the map's key class. */
    private final String keyClass;
    /** the map's name. */
    private final String name;
    /** the map's value class. */
    private final String valueClass;

    /**
     * Creates a new instance of {@link EntityMapField}.
     * @param n the map's name
     * @param kc the map's key class
     * @param vc the map's value class
     * @param e flag indicating the map's values are entity instances
     */
    public EntityMapField(final String n, final String kc, final String vc,
            final boolean e) {
        super();
        name = n;
        keyClass = kc;
        valueClass = vc;
        isEntity = e;
    }

    /**
     * Gets the value for the keyClass.
     * @return {@link String}
     */
    public String getKeyClass() {
        return keyClass;
    }

    /**
     * Gets the value for the name.
     * @return {@link String}
     */
    public String getName() {
        return name;
    }

    /**
     * Gets the value for the valueClass.
     * @return {@link String}
     */
    public String getValueClass() {
        return valueClass;
    }

    /**
     * Gets the value for the isEntity.
     * @return {@link boolean}
     */
    public boolean isEntity() {
        return isEntity;
    }

    /**
     * Writes the entity class markup.
     * @param writer the {@link PrintWriter} instance
     * @param schema the schema
     * @param entityClazz the entity class the map is a member of
     * @throws PooledException if an error occurs
     * @throws RPGException if an error occurs
     */
    public void write(final PrintWriter writer, final String schema,
            final String entityClazz)
            throws RPGException, PooledException {
        String section = null;
        if (isEntity) {
            section = TextLoader.getInstance().loadText(
                    "entity_template.txt", "entity_entity_map_lookup");
            section = TextProcessor.getInstance().processText(
                    new String[] {
                            "<entity_table>", "<field_table_name>", "<schema>",
                            "<value_entity_table>",
                            "<key_class>", "<value_class>", "<field_name>",
                            "<field_name_plural>", "<field_name_first_cap>"

                    }, new String[] {
                            SchemaUtilities.getInstance().getTableName(
                                    entityClazz),
                            SchemaUtilities.getInstance().getTableName(name),
                            schema,
                            SchemaUtilities.getInstance().getTableName(
                                    valueClass),
                            keyClass,
                            SchemaUtilities.getInstance().getEntityClassName(
                                    valueClass),
                            name,
                            SchemaUtilities.getInstance().pluralize(name),
                            SchemaUtilities.getInstance().capitalizeFirst(name)
                    }, section);
        } else {
            section = TextLoader.getInstance().loadText(
                    "entity_template.txt", "entity_primitive_map_lookup");
            section = TextProcessor.getInstance().processText(
                    new String[] {
                            "<entity_table>", "<field_table_name>", "<schema>",
                            "<key_class>", "<value_class>", "<field_name>",
                            "<field_name_plural>", "<field_name_first_cap>"

                    }, new String[] {
                            SchemaUtilities.getInstance().getTableName(
                                    entityClazz),
                            SchemaUtilities.getInstance().getTableName(name),
                            schema, keyClass, valueClass, name,
                            SchemaUtilities.getInstance().pluralize(name),
                            SchemaUtilities.getInstance().capitalizeFirst(name)
                    }, section);
        }
        writer.println(section);
    }
}
