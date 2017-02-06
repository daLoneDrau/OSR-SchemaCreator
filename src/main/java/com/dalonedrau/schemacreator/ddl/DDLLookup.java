package com.dalonedrau.schemacreator.ddl;

import java.io.PrintWriter;

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
public class DDLLookup {
    private final String field;
    private final int fieldLimit;
    private final String fieldType;
    private String table1;
    private final String table2;

    /**
     * Creates a new instance of {@link DDLLookup}.
     * @param t1
     * @param t2
     * @param f
     */
    public DDLLookup(final String t1, final String t2, final String f,
            final String type, final int lim) {
        table1 = t1;
        table2 = t2;
        field = f;
        fieldType = type;
        fieldLimit = lim;
    }

    /**
     * Gets the value for the field.
     * @return {@link String}
     */
    public String getField() {
        return field;
    }

    /**
     * Gets the value for the fieldType.
     * @return {@link String}
     */
    public String getFieldType() {
        return fieldType;
    }

    /**
     * Gets the value for the table1.
     * @return {@link String}
     */
    public String getTable1() {
        return table1;
    }

    /**
     * Sets the value of the table1.
     * @param table1 the new value to set
     */
    public void setTable1(final String table1) {
        this.table1 = table1;
    }

    public void write(final PrintWriter writer, final String schema,
            final String table) {
        try {
            PooledStringBuilder sb = StringBuilderPool.getInstance()
                    .getStringBuilder();
            String section = null;
            if (table2 != null) {
                sb.append(table2);
                if (table1.equalsIgnoreCase(table2)) {
                    sb.append("2");
                }
                section = TextLoader.getInstance().loadText(
                        "ddl_template.txt", "lookup_table");
                section = TextProcessor.getInstance().processText(
                        new String[] {
                                "<schema>", "<table1>", "<field_table_name>",
                                "<table2Key>", "<table2>"
                        }, new String[] {
                                schema, table1,
                                SchemaUtilities.getInstance()
                                        .getTableName(field),
                                sb.toString(),
                                table2
                        }, section);
            } else {
                section = TextLoader.getInstance().loadText(
                        "ddl_template.txt", "lookup_table_primitive");
                String type = "";
                if (fieldType.equalsIgnoreCase("Integer")) {
                    type = "smallint";
                }
                if (fieldType.equalsIgnoreCase("String")) {
                    if (fieldLimit > 0) {
                        sb.append("character varying(");
                        sb.append(fieldLimit);
                        sb.append(")");
                        type = sb.toString();
                    } else {
                        type = "text";
                    }
                }
                section = TextProcessor.getInstance().processText(
                        new String[] {
                                "<schema>", "<table>", "<field_table_name>",
                                "<field>", "<field_type>"
                        }, new String[] {
                                schema, table1,
                                SchemaUtilities.getInstance().getTableName(
                                        field),
                                field, type
                        }, section);
            }
            writer.print(section);
            section = null;
            sb.returnToPool();
            sb = null;
        } catch (RPGException | PooledException e) {
            e.printStackTrace();
            System.exit(1);
        }
    }
}
