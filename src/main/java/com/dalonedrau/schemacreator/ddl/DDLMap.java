package com.dalonedrau.schemacreator.ddl;

import java.io.PrintWriter;

import com.dalonedrau.schemacreator.RPGException;
import com.dalonedrau.schemacreator.SchemaUtilities;
import com.dalonedrau.schemacreator.TextLoader;
import com.dalonedrau.schemacreator.TextProcessor;
import com.dalonedrow.pooled.PooledException;
import com.dalonedrow.pooled.PooledStringBuilder;
import com.dalonedrow.pooled.StringBuilderPool;

public class DDLMap {
    public static String getColumnType(final String fieldType) {
        String ct = null;
        if (fieldType.equalsIgnoreCase("boolean")) {
            ct = "boolean";
        } else if (fieldType.equalsIgnoreCase("int")) {
            ct = "smallint";
        } else if (fieldType.equalsIgnoreCase("float")) {
            ct = "decimal";
        } else if (fieldType.equalsIgnoreCase("byte")) {
            ct = "bit";
        } else if (fieldType.equalsIgnoreCase("class java.lang.String")) {
            ct = "text";
        } else {
            ct = "smallint";
        }
        return ct;
    }
    /** the name of the field being mapped by the lookup map. */
    private final String fieldName;
    /** the name of the value field being mapped by the lookup map. */
    private final String keyFieldName;
    /** the name of the key table being mapped by the lookup map. */
    private final String keyTableName;
    /** the column type of the key column. */
    private final String keyType;
    /** the name of the value field being mapped by the lookup map. */
    private final String valueFieldName;
    /** the name of the value table being mapped by the lookup map. */
    private final String valueTableName;
    /** the column type of the key column. */
    private final String valueType;
    public DDLMap(final String fieldName, final String keyFieldName,
            final String keyTableName,
            final String keyType, final String valueFieldName,
            final String valueTableName,
            final String valueType) {
        super();
        this.fieldName = fieldName;
        this.keyFieldName = keyFieldName;
        this.keyTableName = keyTableName;
        this.keyType = keyType;
        this.valueFieldName = valueFieldName;
        this.valueTableName = valueTableName;
        this.valueType = valueType;
    }
    /**
     * Writes the map markup to output stream.
     * @param writer
     * @param schema
     * @param table
     * @throws RPGException
     * @throws PooledException
     */
    public void write(final PrintWriter writer, final String schema,
            final String table) throws RPGException, PooledException {
        String section = TextLoader.getInstance().loadText(
                "ddl_template.txt", "table_map_header");
        String seperator = "";
        if (keyTableName != null
                && keyTableName.length() > 0
                || valueTableName != null
                        && valueTableName.length() > 0) {
            seperator = ",";
        }
        section = TextProcessor.getInstance().processText(
                new String[] {
                        "<schema>", "<table>", "<field_name>", "<key_type>",
                        "<value_type>", "<sep>"
                }, new String[] {
                        schema, table,
                        SchemaUtilities.getInstance().getTableName(
                                fieldName),
                        keyType, valueType, seperator
                }, section);
        writer.print(section);
        if (keyTableName != null
                && keyTableName.length() > 0) {
            section = TextLoader.getInstance().loadText(
                    "ddl_template.txt", "table_map_constraint_fk");
            String fk = keyFieldName;
            if (fk == null
                    || fk != null
                            && fk.length() == 0) {
                PooledStringBuilder sb =
                        StringBuilderPool.getInstance().getStringBuilder();
                sb.append(keyTableName);
                sb.append("_id");
                fk = sb.toString();
                sb.returnToPool();
                sb = null;
            }
            seperator = "";
            if (valueTableName != null
                    && valueTableName.length() > 0) {
                seperator = ",";
            }
            section = TextProcessor.getInstance().processText(
                    new String[] {
                            "<schema>", "<table>", "<field_name>", "<field>",
                            "<foreign_table>", "<foreign_key>", "<sep>"
                    }, new String[] {
                            schema, table,
                            SchemaUtilities.getInstance().getTableName(
                                    fieldName),
                            "key", keyTableName, fk,
                            seperator
                    }, section);
            writer.print(section);
        }
        if (valueTableName != null
                && valueTableName.length() > 0) {
            section = TextLoader.getInstance().loadText(
                    "ddl_template.txt", "table_map_constraint_fk");
            String fk = valueFieldName;
            if (fk == null
                    || fk != null
                            && fk.length() == 0) {
                PooledStringBuilder sb =
                        StringBuilderPool.getInstance().getStringBuilder();
                sb.append(valueTableName);
                sb.append("_id");
                fk = sb.toString();
                sb.returnToPool();
                sb = null;
            }
            seperator = "";
            section = TextProcessor.getInstance().processText(
                    new String[] {
                            "<schema>", "<table>", "<field_name>", "<field>",
                            "<foreign_table>", "<foreign_key>", "<sep>"
                    }, new String[] {
                            schema, table,
                            SchemaUtilities.getInstance().getTableName(
                                    fieldName),
                            "value", valueTableName,
                            fk, seperator
                    }, section);
            writer.print(section);
        }
        writer.println(");");
        writer.println();
        section = null;
        seperator = null;
    }
}
