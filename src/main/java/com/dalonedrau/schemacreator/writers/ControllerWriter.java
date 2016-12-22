package com.dalonedrau.schemacreator.writers;

import java.io.File;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

import com.dalonedrau.schemacreator.SchemaCreator;
import com.dalonedrau.schemacreator.SchemaUtilities;
import com.dalonedrau.schemacreator.TextLoader;
import com.dalonedrau.schemacreator.TextProcessor;
import com.dalonedrau.schemacreator.entity.EntityField;
import com.dalonedrau.schemacreator.entity.EntityLookupField;
import com.dalonedrau.schemacreator.entity.EntityMapField;
import com.dalonedrau.schemacreator.entity.EntityMarkup;

/**
 * @author drau
 */
public final class ControllerWriter {
	/** the schema being written. */
	private final SchemaCreator schema;
	/**
	 * Creates a new instance of {@link ControllerWriter}.
	 * @param s the schema being written
	 */
	public ControllerWriter(final SchemaCreator s) {
		schema = s;
	}
	/**
	 * Gets the list of entity lookup save routines needed to write the
	 * Controller class.
	 * @param clazz the entity class
	 * @return {@link String}
	 * @throws Exception if an error occurs
	 */
	private String getControllerEmbeddedEntitiesSaveRoutines(
			final Class<?> clazz) throws Exception {
		StringBuffer full = new StringBuffer();
		Field[] fields = clazz.getDeclaredFields();
		for (int i = 0, len = fields.length; i < len; i++) {
			Field field = fields[i];
			Type type = field.getGenericType();
			if (type instanceof ParameterizedType) {
				continue;
			} else {
				String section = TextLoader.getInstance().loadText(
						"controller_template.txt",
						"controller_save_embedded_member");
				String fieldName = field.getName();
				String fieldClass = field.getType().getSimpleName();
				if (schema.hasTable(fieldClass)) {
					StringBuffer temp = new StringBuffer();
					temp.append("get");
					temp.append(fieldName.substring(0, 1).toUpperCase());
					temp.append(fieldName.substring(1));
					String fieldGetter = temp.toString();
					temp.setLength(0);

					temp.append("set");
					temp.append(fieldName.substring(0, 1).toUpperCase());
					temp.append(fieldName.substring(1));
					String fieldSetter = temp.toString();
					temp.setLength(0);
					temp = null;
					section = TextProcessor.getInstance().processText(
							new String[] {
									"<fieldNameFirstCap>",
									"<entityClass>",
									"<embeddedEntityClass>",
									"<embeddedEntityController>",
									"<getMemberField>",
									"<setMemberField>"
							}, new String[] {
									SchemaUtilities.getInstance()
											.capitalizeFirst(field.getName()),
									SchemaUtilities.getInstance()
											.getEntityClassName(clazz),
									SchemaUtilities.getInstance()
											.getEntityClassName(fieldClass),
									SchemaUtilities.getInstance()
											.getEntityControllerName(
													fieldClass),
									fieldGetter,
									fieldSetter
							}, section);
					full.append(section);
					full.append("\n");
				}
			}
		}
		String s = full.toString();
		full = null;
		return s;
	}
	/**
	 * Gets the list of entity lookup save routines needed to write the
	 * Controller class.
	 * @param clazz the entity class
	 * @return {@link String}
	 * @throws Exception if an error occurs
	 */
	private String getControllerEmbeddedEntitiesSaveRoutines(
			final EntityMarkup clazz) throws Exception {
		StringBuffer full = new StringBuffer();
		List<EntityField> fields = clazz.getFields();
		for (int i = 0, len = fields.size(); i < len; i++) {
			EntityField field = fields.get(i);
			if (field.getEntityClazz() != null) {
				String section = TextLoader.getInstance().loadText(
						"controller_template.txt",
						"controller_save_embedded_member");
				String fieldName = field.getName();
				String fieldClass = field.getEntityClazz();
				StringBuffer temp = new StringBuffer();
				temp.append("get");
				temp.append(fieldName.substring(0, 1).toUpperCase());
				temp.append(fieldName.substring(1));
				String fieldGetter = temp.toString();
				temp.setLength(0);

				temp.append("set");
				temp.append(fieldName.substring(0, 1).toUpperCase());
				temp.append(fieldName.substring(1));
				String fieldSetter = temp.toString();
				temp.setLength(0);
				temp = null;
				section = TextProcessor.getInstance().processText(
						new String[] {
								"<fieldNameFirstCap>",
								"<entityClass>",
								"<embeddedEntityClass>",
								"<embeddedEntityController>",
								"<getMemberField>",
								"<setMemberField>"
						}, new String[] {
								SchemaUtilities.getInstance()
										.capitalizeFirst(field.getName()),
								SchemaUtilities.getInstance()
										.getEntityClassName(
												clazz.getClassName()),
								SchemaUtilities.getInstance()
										.getEntityClassName(fieldClass),
								SchemaUtilities.getInstance()
										.getEntityControllerName(fieldClass),
								fieldGetter,
								fieldSetter
						}, section);
				full.append(section);
				full.append("\n");
			}
		}
		String s = full.toString();
		full = null;
		return s;
	}
	/**
	 * Gets the list of entity lookup save routines needed to write the
	 * Controller class.
	 * @param clazz the entity class
	 * @return {@link String}
	 * @throws Exception if an error occurs
	 */
	private String getControllerEmbeddedLookupSaveRoutines(
			final EntityMarkup clazz) throws Exception {
		StringBuffer full = new StringBuffer();
		List<EntityLookupField> lookupFields = clazz.getLookupFields();
		for (int i = 0, len = lookupFields.size(); i < len; i++) {
			EntityLookupField field = lookupFields.get(i);
			if (field.getLookupClazz() != null) {
				String section = TextLoader.getInstance().loadText(
						"controller_template.txt",
						"controller_save_embedded_lookup");
				String fieldName = field.getFieldName();
				StringBuffer temp = new StringBuffer();
				temp.append("get");
				temp.append(SchemaUtilities.getInstance()
						.capitalizeFirst(fieldName));
				String fieldGetter = temp.toString();
				temp = null;
				section = TextProcessor.getInstance().processText(
						new String[] {
								"<getEmbeddedLookup>",
								"<embeddedLookupClass>",
								"<embeddedLookupController>",
								"<embeddedLookupInstance>"
						}, new String[] {
								fieldGetter,
								SchemaUtilities.getInstance()
										.getEntityClassName(
												field.getLookupClazz()),
								SchemaUtilities.getInstance()
										.getEntityClassName(
												field.getLookupClazz())
										.replace("Entity",
												"Controller"),
								fieldName
						}, section);
				full.append(section);
				full.append("\n");
			}
			field = null;
		}
		lookupFields = null;

		List<EntityField> fields = clazz.getFields();
		for (int i = 0, len = fields.size(); i < len; i++) {
			EntityField field = fields.get(i);
			if (field.getEntityClazz() != null) {
				String section = TextLoader.getInstance().loadText(
						"controller_template.txt", "controller_save_embedded");
				String fieldName = field.getName();
				String fieldClass = field.getEntityClazz();
				if (schema.hasTable(fieldClass)) {
					StringBuffer temp = new StringBuffer();
					temp.append("get");
					temp.append(fieldName.substring(0, 1).toUpperCase());
					temp.append(fieldName.substring(1));
					String fieldGetter = temp.toString();
					temp.setLength(0);
					temp = null;
					section = TextProcessor.getInstance().processText(
							new String[] {
									"<getEmbeddedEntity>",
									"<fieldNameFirstCap>"
							}, new String[] {
									fieldGetter,
									SchemaUtilities.getInstance()
											.capitalizeFirst(field.getName())
							}, section);
					full.append(section);
					full.append("\n");
				}
				section = null;
				fieldName = null;
				fieldClass = null;
			}
			field = null;
		}
		fields = null;
		String s = full.toString();
		full = null;
		return s;
	}
	/**
	 * Gets the list of entity lookup save routines needed to write the
	 * Controller class.
	 * @param clazz the entity class
	 * @return {@link String}
	 * @throws Exception if an error occurs
	 */
	private String getControllerEmbeddedMapSaveRoutines(final Class<?> clazz)
			throws Exception {
		StringBuffer full = new StringBuffer();
		Field[] fields = clazz.getDeclaredFields();
		for (int i = 0, len = fields.length; i < len; i++) {
			Field field = fields[i];
			Type type = field.getGenericType();
			if (type instanceof ParameterizedType) {
				if (((ParameterizedType) type).getRawType().getTypeName()
						.equalsIgnoreCase("java.util.List")) {
					continue;
				} else if (((ParameterizedType) type).getRawType()
						.getTypeName()
						.equalsIgnoreCase("java.util.Map")
						|| ((ParameterizedType) type).getRawType()
								.getTypeName()
								.equalsIgnoreCase("java.util.HashMap")) {
					Type[] types =
							((ParameterizedType) type)
									.getActualTypeArguments();
					String typeClassName0 =
							types[0].getTypeName().substring(
									types[0].getTypeName().lastIndexOf('.')
											+ 1);
					String typeClassName1 =
							types[1].getTypeName().substring(
									types[1].getTypeName().lastIndexOf('.')
											+ 1);
					if (schema.hasTable(typeClassName0)
							|| schema.hasTable(typeClassName1)) {
						String section1 = TextLoader.getInstance().loadText(
								"controller_template.txt",
								"controller_save_embedded_map_condition");
						StringBuffer temp = new StringBuffer();
						temp.append("get");
						temp.append(SchemaUtilities.getInstance()
								.capitalizeFirst(field.getName()));
						String fieldGetter = temp.toString();
						temp.setLength(0);
						section1 = TextProcessor.getInstance().processText(
								new String[] {
										"<getEmbeddedMap>",
										"<embeddedEntityClass>",
										"<fieldNameFirstCap>"
								}, new String[] {
										fieldGetter,
										SchemaUtilities.getInstance()
												.getEntityClassName(
														typeClassName1),
										SchemaUtilities.getInstance()
												.capitalizeFirst(
														field.getName())
								}, section1);
						full.append(section1);
						full.append("\n");
					}
				}
			}
		}
		String s = full.toString();
		full = null;
		return s;
	}
	/**
	 * Gets the list of entity lookup save routines needed to write the
	 * Controller class.
	 * @param clazz the entity class
	 * @return {@link String}
	 * @throws Exception if an error occurs
	 */
	private String getControllerEmbeddedMapSaveRoutines(
			final EntityMarkup clazz)
					throws Exception {
		StringBuffer full = new StringBuffer();
		List<EntityMapField> fields = clazz.getMapFields();
		for (int i = 0, len = fields.size(); i < len; i++) {
			EntityMapField field = fields.get(i);
			if (field.isEntity()) {
				String section1 = TextLoader.getInstance().loadText(
						"controller_template.txt",
						"controller_save_embedded_map_condition");
				StringBuffer temp = new StringBuffer();
				temp.append("get");
				temp.append(SchemaUtilities.getInstance()
						.capitalizeFirst(field.getName()));
				String fieldGetter = temp.toString();
				temp.setLength(0);
				section1 = TextProcessor.getInstance().processText(
						new String[] {
								"<getEmbeddedMap>",
								"<embeddedEntityClass>",
								"<fieldNameFirstCap>"
						}, new String[] {
								fieldGetter,
								SchemaUtilities.getInstance()
										.getEntityClassName(
												field.getValueClass()),
								SchemaUtilities.getInstance().capitalizeFirst(
										field.getName())
						}, section1);
				full.append(section1);
				full.append("\n");
			}
		}
		String s = full.toString();
		full = null;
		return s;
	}
	/**
	 * Gets the list of entity lookup save routines needed to write the
	 * Controller class.
	 * @param clazz the entity class
	 * @return {@link String}
	 * @throws Exception if an error occurs
	 */
	private String getControllerEmbeddedMapSaves(final Class<?> clazz)
			throws Exception {
		StringBuffer full = new StringBuffer();
		Field[] fields = clazz.getDeclaredFields();
		for (int i = 0, len = fields.length; i < len; i++) {
			Field field = fields[i];
			Type type = field.getGenericType();
			if (type instanceof ParameterizedType) {
				if (((ParameterizedType) type).getRawType().getTypeName()
						.equalsIgnoreCase("java.util.List")) {
					continue;
				} else if (((ParameterizedType) type).getRawType()
						.getTypeName()
						.equalsIgnoreCase("java.util.Map")
						|| ((ParameterizedType) type).getRawType()
								.getTypeName()
								.equalsIgnoreCase("java.util.HashMap")) {
					Type[] types =
							((ParameterizedType) type)
									.getActualTypeArguments();
					String typeClassName0 =
							types[0].getTypeName().substring(
									types[0].getTypeName().lastIndexOf('.')
											+ 1);
					String typeClassName1 =
							types[1].getTypeName().substring(
									types[1].getTypeName().lastIndexOf('.')
											+ 1);
					if (schema.hasTable(typeClassName0)
							|| schema.hasTable(typeClassName1)) {
						String section1 = TextLoader.getInstance().loadText(
								"controller_template.txt",
								"controller_save_embedded_map");
						section1 = TextProcessor.getInstance().processText(
								new String[] {
										"<fieldNameFirstCap>",
										"<embeddedEntityClass>",
										"<entityClass>",
										"<embeddedEntityController>"
								}, new String[] {
										SchemaUtilities.getInstance()
												.capitalizeFirst(
														field.getName()),
										SchemaUtilities.getInstance()
												.getEntityClassName(
														typeClassName1),
										SchemaUtilities.getInstance()
												.getEntityClassName(
														clazz.getSimpleName()),
										SchemaUtilities.getInstance()
												.getEntityClassName(
														typeClassName1)
												.replace("Entity", "Controller")
								}, section1);
						full.append(section1);
						full.append("\n");
					}
				}
			}
		}
		String s = full.toString();
		full = null;
		return s;
	}
	/**
	 * Gets the list of entity lookup save routines needed to write the
	 * Controller class.
	 * @param clazz the entity class
	 * @return {@link String}
	 * @throws Exception if an error occurs
	 */
	private String getControllerEmbeddedMapSaves(final EntityMarkup clazz)
			throws Exception {
		StringBuffer full = new StringBuffer();
		List<EntityMapField> fields = clazz.getMapFields();
		for (int i = 0, len = fields.size(); i < len; i++) {
			EntityMapField field = fields.get(i);
			if (field.isEntity()) {
				String section1 = TextLoader.getInstance().loadText(
						"controller_template.txt",
						"controller_save_embedded_map");
				section1 = TextProcessor.getInstance().processText(
						new String[] {
								"<fieldNameFirstCap>", "<embeddedEntityClass>",
								"<entityClass>", "<embeddedEntityController>"
						}, new String[] {
								SchemaUtilities.getInstance()
										.capitalizeFirst(
												field.getName()),
								SchemaUtilities.getInstance()
										.getEntityClassName(
												field.getValueClass()),
								SchemaUtilities.getInstance()
										.getEntityClassName(
												clazz.getClassName()),
								SchemaUtilities.getInstance()
										.getEntityClassName(
												field.getValueClass())
										.replace("Entity", "Controller")
						}, section1);
				full.append(section1);
				full.append("\n");
			}
		}
		String s = full.toString();
		full = null;
		return s;
	}
	/**
	 * Gets the list of entity class imports needed to write the Controller
	 * class.
	 * @param clazz the entity class
	 * @return {@link String}
	 * @throws Exception if an error occurs
	 */
	private String getControllerImports(final Class<?> clazz) throws Exception {
		StringBuffer sb = new StringBuffer();
		Field[] fields = clazz.getDeclaredFields();
		for (int i = 0, len = fields.length; i < len; i++) {
			Field field = fields[i];
			Type type = field.getGenericType();
			if (type instanceof ParameterizedType) {
				if (((ParameterizedType) type).getRawType().getTypeName()
						.equalsIgnoreCase("java.util.List")) {
					Type[] types =
							((ParameterizedType) type).getActualTypeArguments();
					String typeClassName =
							types[0].getTypeName().substring(
									types[0].getTypeName().lastIndexOf('.')
											+ 1);
					if (schema.hasTable(typeClassName)) {
						sb.append("import com.osrapi.models.");
						sb.append(schema.getSchema());
						sb.append('.');
						sb.append(SchemaUtilities.getInstance()
								.getEntityClassName(typeClassName));
						sb.append(";\n");
					} else {
						throw new Exception(
								"Need lookup table for non-entity field");
					}
				} else if (((ParameterizedType) type).getRawType()
						.getTypeName()
						.equalsIgnoreCase("java.util.Map")
						|| ((ParameterizedType) type).getRawType()
								.getTypeName()
								.equalsIgnoreCase("java.util.HashMap")) {
					Type[] types =
							((ParameterizedType) type)
									.getActualTypeArguments();
					String typeClassName0 =
							types[0].getTypeName().substring(
									types[0].getTypeName().lastIndexOf('.')
											+ 1);
					String typeClassName1 =
							types[1].getTypeName().substring(
									types[1].getTypeName().lastIndexOf('.')
											+ 1);
					if (schema.hasTable(typeClassName0)) {
						sb.append("import com.osrapi.models.");
						sb.append(schema.getSchema());
						sb.append('.');
						sb.append(SchemaUtilities.getInstance()
								.getEntityClassName(typeClassName0));
						sb.append(";\n");
					}
					if (schema.hasTable(typeClassName1)) {
						sb.append("import com.osrapi.models.");
						sb.append(schema.getSchema());
						sb.append('.');
						sb.append(SchemaUtilities.getInstance()
								.getEntityClassName(typeClassName1));
						sb.append(";\n");
					}
				}
			} else {
				String fieldClass = field.getType().getSimpleName();
				if (schema.hasTable(fieldClass)) {
					sb.append("import com.osrapi.models.");
					sb.append(schema.getSchema());
					sb.append('.');
					sb.append(SchemaUtilities.getInstance()
							.getEntityClassName(field.getType()));
					sb.append(";\n");
				}
			}
		}
		String s = sb.toString();
		sb = null;
		return s;
	}
	/**
	 * Gets the list of entity class imports needed to write the Controller
	 * class.
	 * @param clazz the entity class
	 * @return {@link String}
	 * @throws Exception if an error occurs
	 */
	private String getControllerImports(final EntityMarkup clazz)
			throws Exception {
		StringBuffer sb = new StringBuffer();
		for (int i = 0, len = clazz.getFields().size(); i < len; i++) {
			EntityField field = clazz.getFields().get(i);
			if (field.getEntityClazz() != null) {
				sb.append("import com.osrapi.models.");
				sb.append(schema.getSchema());
				sb.append('.');
				sb.append(SchemaUtilities.getInstance().getEntityClassName(
						field.getEntityClazz()));
				sb.append(";\n");
			}
		}
		for (int i = 0, len = clazz.getLookupFields().size(); i < len; i++) {
			EntityLookupField field = clazz.getLookupFields().get(i);
			if (field.getLookupClazz() != null
					&& !sb.toString().contains(field.getLookupClazz())) {
				sb.append("import com.osrapi.models.");
				sb.append(schema.getSchema());
				sb.append('.');
				sb.append(SchemaUtilities.getInstance().getEntityClassName(
						field.getLookupClazz()));
				sb.append(";\n");
			}
		}
		for (int i = 0, len = clazz.getMapFields().size(); i < len; i++) {
			EntityMapField field = clazz.getMapFields().get(i);
			if (field.isEntity()
					&& !sb.toString().contains(field.getValueClass())) {
				sb.append("import com.osrapi.models.");
				sb.append(schema.getSchema());
				sb.append('.');
				sb.append(SchemaUtilities.getInstance().getEntityClassName(
						field.getValueClass()));
				sb.append(";\n");
			}
		}
		String s = sb.toString();
		sb = null;
		return s;
	}
	/**
	 * Writes a controller class to file.
	 * @param clazz the entity {@link Class} the controller is being written for
	 * @throws Exception if an error occurs
	 */
	public void write(final EntityMarkup clazz) throws Exception {
		TextLoader.getInstance().setLibraryFolder(
				"com/dalonedrau/schemacreator");
		StringBuffer sb = new StringBuffer();
		sb.append("get");
		sb.append(clazz.getClassName());
		sb.append("Resource");
		String resourceMethod = sb.toString();
		sb.setLength(0);

		String embeddedClasses = getControllerImports(clazz);

		String saveEmbeddedEntities =
				getControllerEmbeddedEntitiesSaveRoutines(clazz);

		String saveEmbeddedLookup =
				getControllerEmbeddedLookupSaveRoutines(clazz);

		String saveEmbeddedMapConditions =
				getControllerEmbeddedMapSaveRoutines(clazz);

		String saveEmbeddedMapMethods =
				getControllerEmbeddedMapSaves(clazz);

		String section = TextLoader.getInstance().loadText(
				"controller_template.txt", "controller_header");
		section = TextProcessor.getInstance().processText(
				new String[] {
						"<schema>", "<entityClass>", "<repositoryClass>",
						"<tableNamePlural>", "<controllerClass>",
						"<resourceAssemblyMethod>", "<embeddedEntityImports>",
						"<saveEmbeddedEntities>", "<saveEmbeddedMapEntities>"
				}, new String[] {
						schema.getSchema(),
						SchemaUtilities.getInstance()
								.getEntityClassName(clazz.getClassName()),
						SchemaUtilities.getInstance()
								.getEntityClassName(clazz.getClassName())
								.replace(
										"Entity", "Repository"),
						SchemaUtilities.getInstance()
								.pluralize(SchemaUtilities.getInstance()
										.getTableName(clazz.getClassName())),
						SchemaUtilities.getInstance()
								.getEntityClassName(clazz.getClassName())
								.replace(
										"Entity", "Controller"),
						resourceMethod,
						embeddedClasses, saveEmbeddedLookup,
						saveEmbeddedMapConditions
				}, section);
		sb.append(".\\");
		sb.append(schema.getPkgPath());
		sb.append("\\controllers\\");
		sb.append(schema.getSchema());
		sb.append("\\");
		sb.append(SchemaUtilities.getInstance()
				.getEntityClassName(clazz.getClassName())
				.replace("Entity", "Controller"));
		sb.append(".java");
		File file = new File(sb.toString());
		sb.setLength(0);
		file.getParentFile().mkdirs();
		PrintWriter writer = new PrintWriter(file, "UTF-8");
		writer.println(section);
		if (saveEmbeddedEntities.length() > 0) {
			writer.println(saveEmbeddedEntities);
		}
		if (saveEmbeddedMapMethods.length() > 0) {
			writer.println(saveEmbeddedMapMethods);
		}
		List<EntityField> fields = clazz.getFields();
		for (int i = 0, len = fields.size(); i < len; i++) {
			EntityField field = fields.get(i);
			if (field.getEntityClazz() != null) {
				continue;
			}
			String fieldClass = field.getPrimitiveClazz();
			if (fieldClass.equalsIgnoreCase("int")
					|| fieldClass.equalsIgnoreCase("Integer")
					|| fieldClass.equalsIgnoreCase("long")) {
				fieldClass = "Long";
			} else if (fieldClass.equalsIgnoreCase("boolean")) {
				fieldClass = "Boolean";
			}
			String fieldName = field.getName();
			sb.append(fieldName.substring(0, 1).toUpperCase());
			sb.append(fieldName.substring(1));
			String fieldName1stCap = sb.toString();
			sb.setLength(0);
			section = TextLoader.getInstance().loadText(
					"controller_template.txt", "controller_get_by_field");
			section = TextProcessor.getInstance().processText(
					new String[] {
							"<entityClass>", "<fieldName>", "<fieldClass>",
							"<tableNamePossessive>", "<tableFieldName>",
							"<fieldNameFirstCap>", "<resourceAssemblyMethod>"
					}, new String[] {
							SchemaUtilities.getInstance()
									.getEntityClassName(clazz.getClassName()),
							field.getName(),
							fieldClass,
							SchemaUtilities.getInstance().getPossessive(
									SchemaUtilities.getInstance().getTableName(
											clazz.getClassName())),
							SchemaUtilities.getInstance().getTableName(
									fieldName),
							fieldName1stCap, resourceMethod
					}, section);
			writer.print(section);
		}
		writer.println("}");
		writer.close();
	}
}
