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
public final class EntityField {
    /** the field's entity class. */
    private final String entityClazz;
    /** the field's name. */
    private final String name;
    /** the flag indicating if null values are allowed. */
    private boolean nullAllowed;
    /** the field's primitive class. */
    private final String primitiveClazz;
    /**
     * Creates a new instance of {@link EntityField}.
     * @param n the field's name
     * @param ec the field's entity class
     * @param pc the field's primitive class
     * @param a the flag indicating if null values are allowed
     */
    public EntityField(final String n, final String ec, final String pc,
            final boolean a) {
        name = n;
        entityClazz = ec;
        primitiveClazz = pc;
        nullAllowed = a;
    }
    /**
     * Gets the field's entity class.
     * @return {@link String}
     */
    public String getEntityClazz() {
        return entityClazz;
    }
    /**
     * Gets the field's name.
     * @return {@link String}
     */
    public String getName() {
        return name;
    }
    /**
     * Gets the field's primitive class.
     * @return {@link String}
     */
    public String getPrimitiveClazz() {
        return primitiveClazz;
    }
    /**
     * Sets the flag indicating if null values are allowed.
     * @param flag the new value to set
     */
    public void setNullAllowed(final boolean flag) {
        nullAllowed = flag;
    }
    /**
     * Writes the entity class markup.
     * @param writer the {@link PrintWriter} instance
     * @throws PooledException if an error occurs
     * @throws RPGException if an error occurs
     */
    public void write(final PrintWriter writer)
            throws RPGException, PooledException {
        String n = "";
        if (!nullAllowed) {
            n = "@NotNull";
        }
        String section = null;
        if (entityClazz != null) {
            section = TextLoader.getInstance().loadText(
                    "entity_template.txt", "entity_entity_member");
            section = TextProcessor.getInstance().processText(
                    new String[] {
                            "<fieldName>", "<entityClass>", "<fieldTableName>",
                            "<notNull>", "<fieldNameFirstCap>"
                    }, new String[] {
                            name,
                            SchemaUtilities.getInstance().getEntityClassName(
                                    entityClazz),
                            SchemaUtilities.getInstance()
                                    .getTableName(entityClazz),
                            n,
                            SchemaUtilities.getInstance().capitalizeFirst(name)
                    }, section);
        } else {
            section = TextLoader.getInstance().loadText(
                    "entity_template.txt", "entity_member");
            section = TextProcessor.getInstance().processText(
                    new String[] {
                            "<fieldName>", "<tableFieldName>",
                            "<fieldClass>", "<notNull>", "<fieldNameFirstCap>"
                    }, new String[] {
                            name, SchemaUtilities.getInstance()
                                    .getTableName(name),
                            primitiveClazz, n,
                            SchemaUtilities.getInstance()
                                    .capitalizeFirst(name)
                    }, section);
        }
        writer.println(section);
    }
}
