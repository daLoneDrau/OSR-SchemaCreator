package com.dalonedrau.schemacreator.ddl;

import java.io.PrintWriter;

import com.dalonedrau.schemacreator.RPGException;
import com.dalonedrau.schemacreator.TextLoader;
import com.dalonedrau.schemacreator.TextProcessor;
import com.dalonedrow.pooled.PooledException;

public class DDLForeignKeyConstraint extends DDLConstraint {
    /** the field name. */
    private final String fieldName;
    /** the foreign key. */
    private final String foreignKey;
    /** the foreign key table. */
    private final String foreignTable;
    /**
     * Creates a new instance of {@link DDLForeignKeyConstraint}.
     * @param fk the foreign key
     * @param fkTable the foreign key table
     */
    public DDLForeignKeyConstraint(final String fn, final String fk,
            final String fkTable) {
        super();
        fieldName = fn;
        foreignKey = fk;
        foreignTable = fkTable;
    }
    /**
     * Gets the value for the fieldName.
     * @return {@link String}
     */
    public String getFieldName() {
        return fieldName;
    }
    /**
     * Gets the value for the foreignKey.
     * @return {@link String}
     */
    public String getForeignKey() {
        return foreignKey;
    }
    /**
     * Gets the value for the foreignTable.
     * @return {@link String}
     */
    public String getForeignTable() {
        return foreignTable;
    }
    @Override
    public void write(final PrintWriter writer, final String schema,
            final String table,
            final String seperator) {
        try {
            String section = TextLoader.getInstance().loadText(
                    "ddl_template.txt", "table_constraint_fk");
            section = TextProcessor.getInstance().processText(
                    new String[] {
                            "<table>", "<field_name>", "<foreign_key>",
                            "<schema>", "<foreign_table>", "<sep>"
                    }, new String[] {
                            table, fieldName, foreignKey, schema, foreignTable,
                            seperator
                    }, section);
            writer.print(section);
            section = null;
        } catch (RPGException | PooledException e) {
            e.printStackTrace();
            System.exit(1);
        }
    }
}
