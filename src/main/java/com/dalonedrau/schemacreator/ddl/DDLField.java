package com.dalonedrau.schemacreator.ddl;

import java.io.PrintWriter;
import java.lang.reflect.Field;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.IntegerNumericType;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.dalonedrau.schemacreator.RPGException;
import com.dalonedrau.schemacreator.SchemaUtilities;
import com.dalonedrau.schemacreator.TextLoader;
import com.dalonedrau.schemacreator.TextProcessor;
import com.dalonedrow.pooled.PooledException;
import com.dalonedrow.pooled.PooledStringBuilder;
import com.dalonedrow.pooled.StringBuilderPool;

/**
 * @author drau
 */
public final class DDLField {
    /** the field's table name. */
    private final String fieldName;
    /** the field type. */
    private String fieldType;
    /** the flag indicating whether the field can be null or not. */
    private String nullFlag;

    /**
     * Creates a new instance of {@link DDLField}.
     * @param field the {@link Field} the ddl field is mimicking
     * @throws Exception if an error occurs
     */
    public DDLField(final Field field) throws Exception {
        fieldName = SchemaUtilities.getInstance().getTableName(field.getName());
        if (field.getGenericType().toString().equalsIgnoreCase("boolean")) {
            fieldType = "boolean";
        } else if (field.getGenericType().toString().equalsIgnoreCase("int")) {
            if (field.isAnnotationPresent(IntegerNumericType.class)) {
                fieldType = "integer";
            } else {
                fieldType = "smallint";
            }
        } else if (field.getGenericType().toString().equalsIgnoreCase("long")) {
            fieldType = "bigint";
        } else if (field.getGenericType().toString()
                .equalsIgnoreCase("float")) {
            fieldType = "decimal";
        } else if (field.getGenericType().toString().equalsIgnoreCase("byte")) {
            fieldType = "bit";
        } else if (field.getGenericType().toString()
                .equalsIgnoreCase("class java.lang.String")) {
            if (field.getAnnotation(VarChar.class) != null) {
                PooledStringBuilder sb = StringBuilderPool.getInstance()
                        .getStringBuilder();
                sb.append("character varying(");
                sb.append(field.getAnnotation(VarChar.class).length());
                sb.append(")");
                fieldType = sb.toString();
                sb.returnToPool();
                sb = null;
            } else {
                fieldType = "text";
            }
        } else if (field.getGenericType().getClass() != null
                && field.getGenericType().getClass().getSuperclass() != null) {
            fieldType = "smallint";
        } else {
            System.err.println("'" + fieldName + "' is unknown type - "
                    + field.getGenericType().toString());
            System.exit(1);
        }
        nullFlag = " NOT NULL";
        if (field.getAnnotation(CanBeNull.class) != null) {
            nullFlag = "";
        }
    }

    /**
     * Gets the value for the fieldName.
     * @return {@link String}
     */
    public String getFieldName() {
        return fieldName;
    }

    /**
     * Gets the value for the fieldType.
     * @return {@link String}
     */
    public String getFieldType() {
        return fieldType;
    }

    /**
     * Sets the flag indicating whether the field can be null or not.
     * @param newFlag the new value to set
     */
    public void setNullFlag(final String newFlag) {
        nullFlag = newFlag;
    }

    /**
     * Writes the DDL field.
     * @param writer the {@link PrintWriter} instance
     * @throws PooledException if an error occurs
     * @throws RPGException if an error occurs
     */
    public void write(final PrintWriter writer)
            throws RPGException, PooledException {
        String section = TextLoader.getInstance().loadText(
                "ddl_template.txt", "table_field");
        section = TextProcessor.getInstance().processText(
                new String[] {
                        "<field_name>", "<field_type>", "<null_flag>"
                }, new String[] {
                        fieldName, fieldType, nullFlag
                }, section);
        writer.print(section);
        section = null;
    }
}
