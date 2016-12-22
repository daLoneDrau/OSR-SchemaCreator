package com.dalonedrau.schemacreator.ddl;

import java.io.PrintWriter;

import com.dalonedrau.schemacreator.RPGException;
import com.dalonedrau.schemacreator.SchemaUtilities;
import com.dalonedrau.schemacreator.TextLoader;
import com.dalonedrau.schemacreator.TextProcessor;
import com.dalonedrow.pooled.PooledException;

/**
 * @author drau
 */
public final class DDLUniqueConstraint extends DDLConstraint {
	/** the list of fields in the unique constraint. */
	private final String[] fields;
	/**
	 * Creates a new instance of {@link DDLUniqueConstraint}.
	 * @param list the list of fields in the unique constraint
	 */
	public DDLUniqueConstraint(final String... list) {
		fields = list;
	}
	/*
	 * (non-Javadoc)
	 * @see
	 * com.dalonedrau.schemacreator.ddl.Constraint#write(java.io.PrintWriter,
	 * java.lang.String)
	 */
	@Override
	public void write(final PrintWriter writer, final String schema,
			final String table, final String seperator) {
		try {
			StringBuilder fieldNames = new StringBuilder();
			StringBuilder fieldList = new StringBuilder();
			for (int i = 0, len = fields.length; i < len; i++) {
				fieldNames.append(
						SchemaUtilities.getInstance().getTableName(fields[i]));
				fieldList.append(
						SchemaUtilities.getInstance().getTableName(fields[i]));
				if (i + 1 < len) {
					fieldNames.append('_');
					fieldList.append(", ");
				}
			}
			String section = TextLoader.getInstance().loadText(
					"ddl_template.txt", "table_constraint_un");
			section = TextProcessor.getInstance().processText(
					new String[] {
							"<field_list>", "<field_names>", "<table>", "<sep>"
					}, new String[] {
							fieldList.toString(), fieldNames.toString(), table,
							seperator
					}, section);
			writer.print(section);
			fieldList = null;
			fieldList = null;
			section = null;
		} catch (RPGException | PooledException e) {
			e.printStackTrace();
			System.exit(1);
		}
	}
}
