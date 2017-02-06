package com.dalonedrau.schemacreator;

public class SchemaUtilities {
    private static SchemaUtilities instance;

    /**
     * Gets the value for the instance.
     * @return {@link SchemaUtilities}
     */
    public static SchemaUtilities getInstance() {
        if (instance == null) {
            instance = new SchemaUtilities("");
        }
        return instance;
    }

    /**
     * Gets the value for the instance.
     * @return {@link SchemaUtilities}
     */
    public static SchemaUtilities getInstance(final String schema) {
        instance = new SchemaUtilities(schema);
        return instance;
    }

    /** the schema being written. */
    private final String schema;

    /**
     * Hidden constructor.
     * @param s the schema
     */
    private SchemaUtilities(final String s) {
        schema = s;
    }

    /**
     * Capitalizes the first letter of a word.
     * @param string the word
     * @return {@link String}
     */
    public String capitalizeFirst(final String string) {
        StringBuffer sb = new StringBuffer();
        sb.append(Character.toUpperCase(string.charAt(0)));
        sb.append(string.substring(1));
        final String s = sb.toString();
        sb = null;
        return s;
    }

    /**
     * Gets the name of the entity class being written from the source class.
     * @param clazz the entity {@link Class} being written
     * @return {@link String}
     */
    public String getEntityClassName(final Class<?> clazz) {
        StringBuffer sb = new StringBuffer();
        sb.append(getSchemaPrefix());
        sb.append(clazz.getSimpleName());
        sb.append("Entity");
        final String s = sb.toString();
        sb = null;
        return s;
    }

    /**
     * Gets the name of the entity class being written from the source class.
     * @param clazz the entity {@link Class} being written
     * @return {@link String}
     */
    public String getEntityClassName(final String clazz) {
        StringBuffer sb = new StringBuffer();
        sb.append(getSchemaPrefix());
        sb.append(clazz);
        sb.append("Entity");
        final String s = sb.toString();
        sb = null;
        return s;
    }

    /**
     * Gets the name of the controller class being written from the source
     * class.
     * @param clazz the entity {@link Class} being written
     * @return {@link String}
     */
    public String getEntityControllerName(final String clazz) {
        return getEntityClassName(clazz).replace("Entity", "Controller");
    }

    /**
     * Gets the possessive form of a word.
     * @param word the word
     * @return {@link String}
     */
    public String getPossessive(final String word) {
        StringBuffer sb = new StringBuffer();
        sb.append(word);
        if (!word.endsWith("s")) {
            sb.append("'");
        } else {
            sb.append("'s");
        }
        final String s = sb.toString();
        sb = null;
        return s;
    }

    /**
     * Gets the prefix for a schema.
     * @return {@link String}
     */
    private String getSchemaPrefix() {
        StringBuffer sb = new StringBuffer();
        for (int i = 0, len = schema.length(); i < len; i++) {
            sb.append(Character.toUpperCase(schema.charAt(i)));
        }
        final String s = sb.toString();
        sb = null;
        return s;
    }

    /**
     * Gets a class name as it would be written in a schema.
     * @param className the class name
     * @return {@link String}
     */
    public String getTableName(final String className) {
        StringBuffer sb = new StringBuffer();
        for (int i = 0, len = className.length(); i < len; i++) {
            if (Character.isUpperCase(className.charAt(i))) {
                if (i > 0) {
                    sb.append('_');
                }
                sb.append(Character.toLowerCase(className.charAt(i)));
            } else {
                sb.append(className.charAt(i));
            }
        }
        final String s = sb.toString();
        sb = null;
        return s;
    }

    /**
     * Pluralizes a word.
     * @param string the word
     * @return {@link String}
     */
    public String pluralize(final String string) {
        StringBuffer sb = new StringBuffer();
        if (string.endsWith("ey")) {
            sb.append(string.substring(0, string.length() - 2));
            sb.append("ies");
        } else if (string.endsWith("y")) {
            sb.append(string.substring(0, string.length() - 1));
            sb.append("ies");
        } else if (string.endsWith("ss")) {
            sb.append(string);
            sb.append("es");
        } else if (string.endsWith("es")) {
            sb.append(string);
        } else if (string.endsWith("data")) {
            sb.append(string);
        } else {
            sb.append(string);
            sb.append("s");
        }
        final String s = sb.toString();
        sb = null;
        return s;
    }
}
