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
public final class EntityLookupField {
	/** the field name. */
	private final String	fieldName;
	/** the lookup class. */
	private final String	lookupEntityClazz;
	/** the field's primitive class. */
	private final String	primitiveClazz;
	/**
	 * Creates a new instance of {@link EntityLookupField}.
	 * @param fn the field name
	 * @param lc the lookup class
	 */
	public EntityLookupField(final String fn, final String lc,
			final String pc) {
		fieldName = fn;
		lookupEntityClazz = lc;
		primitiveClazz = pc;
	}
	/**
	 * Gets the value for the fieldName.
	 * @return {@link String}
	 */
	public String getFieldName() {
		return fieldName;
	}
	/**
	 * Gets the value for the lookupClazz.
	 * @return {@link String}
	 */
	public String getLookupClazz() {
		return lookupEntityClazz;
	}
	/**
	 * Writes the instance to file.
	 * @param writer the {@link }
	 * @param schema the schema
	 * @param entityClazz the entity class this lookup is a member of
	 * @throws RPGException if an error occurs
	 * @throws PooledException if an error occurs
	 */
	public void write(final PrintWriter writer, final String schema,
			final String entityClazz)
					throws RPGException, PooledException {
		String section = null;
		if (lookupEntityClazz != null) {
			section = TextLoader.getInstance().loadText(
					"entity_template.txt", "entity_lookup_member");
			section = TextProcessor.getInstance().processText(
					new String[] {
							"<lookup_entity_class>", "<entity_class>",
							"<table>", "<field_table_name>", "<schema>",
							"<lookup_table>", "<field>", "<field_name_plural>",
							"<field_name_first_cap>"
					}, new String[] {
							SchemaUtilities.getInstance().getEntityClassName(
									lookupEntityClazz),
							SchemaUtilities.getInstance().getEntityClassName(
									entityClazz),
							SchemaUtilities.getInstance().getTableName(
									entityClazz),
							SchemaUtilities.getInstance().getTableName(
									fieldName),
							schema,
							SchemaUtilities.getInstance().getTableName(
									lookupEntityClazz),
							fieldName,
							SchemaUtilities.getInstance().pluralize(fieldName),
							SchemaUtilities.getInstance().capitalizeFirst(
									fieldName)

			}, section);
		} else {
			section = TextLoader.getInstance().loadText(
					"entity_template.txt", "entity_lookup_primitive_member");
			section = TextProcessor.getInstance().processText(
					new String[] {
							"<field>", "<entity_class>",
							"<table>", "<field_table_name>", "<schema>",
							"<lookup_primitive_class>", "<field_name_first_cap>"
					}, new String[] {
							fieldName,
							SchemaUtilities.getInstance().getEntityClassName(
									entityClazz),
							SchemaUtilities.getInstance().getTableName(
									entityClazz),
							SchemaUtilities.getInstance().getTableName(
									fieldName),
							schema, primitiveClazz,
							SchemaUtilities.getInstance().capitalizeFirst(
									fieldName)
					}, section);
		}
		writer.println(section);
	}
}
