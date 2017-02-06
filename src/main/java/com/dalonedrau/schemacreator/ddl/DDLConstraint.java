package com.dalonedrau.schemacreator.ddl;

import java.io.PrintWriter;

/**
 * @author drau
 */
public abstract class DDLConstraint {
    /** unique composite key constraint. */
    public static final int UNIQUE_COMPOSITE_KEY = 0;

    /** Class constructor. */
    protected DDLConstraint() {
        super();
    }

    /**
     * Writes the constraint.
     * @param writer the {@link PrintWriter} instance
     * @param schema the schema
     * @param table the table
     * @param seperator the line seperator
     */
    public abstract void write(final PrintWriter writer, final String schema,
            final String table, final String seperator);
}
