package com.dalonedrau.schemacreator.ddl;

import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

import com.dalonedrau.schemacreator.RPGException;
import com.dalonedrau.schemacreator.TextLoader;
import com.dalonedrau.schemacreator.TextProcessor;
import com.dalonedrow.pooled.PooledException;

/**
 * @author drau
 */
public final class DDLMarkup {
    /** the list of constraints. */
    private final List<DDLConstraint> constraints;
    /** the list of constraints. */
    private final List<DDLField> fields;
    /** the list of lookup tables. */
    private final List<DDLLookup> lookups;
    /** the list of map tables. */
    private final List<DDLMap> maps;
    /** the table name. */
    private String table;
    /** Creates a new instance of {@link DDLMarkup}. */
    public DDLMarkup() {
        constraints = new ArrayList<DDLConstraint>();
        fields = new ArrayList<DDLField>();
        lookups = new ArrayList<DDLLookup>();
        maps = new ArrayList<DDLMap>();
    }
    /**
     * Adds a constraint.
     * @param constraint the constraint
     */
    public void addConstraint(final DDLConstraint constraint) {
        constraints.add(constraint);
    }
    /**
     * Adds a list of constraints.
     * @param newConstraints the constraints
     * @throws Exception if an error occurs
     */
    public void addConstraints(final List<DDLConstraint> newConstraints)
            throws Exception {
        if (constraints.isEmpty()) {
            constraints.addAll(newConstraints);
        } else {
            for (int o = newConstraints.size() - 1; o >= 0; o--) {
                DDLConstraint newC = newConstraints.get(o);
                boolean found = false;
                for (int i = constraints.size() - 1; i >= 0; i--) {
                    DDLConstraint oldC = constraints.get(i);
                    if (newC.getClass().equals(oldC.getClass())) {
                        if (newC instanceof DDLForeignKeyConstraint) {
                            String nfn = ((DDLForeignKeyConstraint) newC)
                                    .getFieldName();
                            String ofn = ((DDLForeignKeyConstraint) oldC)
                                    .getFieldName();
                            if (nfn.equalsIgnoreCase(ofn)) {
                                System.out.println(nfn);
                                found = true;
                                break;
                            }
                        }
                    }
                    oldC = null;
                }
                if (!found) {
                    constraints.add(newC);
                }
                newC = null;
            }
        }
    }
    /**
     * Adds a field.
     * @param field the field
     * @throws Exception if an error occurs
     */
    public void addField(final DDLField field) throws Exception {
        fields.add(field);
    }
    /**
     * Adds a field.
     * @param field the field
     * @throws Exception if an error occurs
     */
    public void addField(final Field field) throws Exception {
        fields.add(new DDLField(field));
    }
    /**
     * Adds a list of fields.
     * @param newFields the fields
     * @throws Exception if an error occurs
     */
    public void addFields(final List<DDLField> newFields) throws Exception {
        if (fields.isEmpty()) {
            fields.addAll(newFields);
        } else {
            for (int o = newFields.size() - 1; o >= 0; o--) {
                DDLField newFld = newFields.get(o);
                boolean found = false;
                for (int i = fields.size() - 1; i >= 0; i--) {
                    DDLField oldFld = fields.get(i);
                    if (newFld.getFieldName().equalsIgnoreCase(
                            oldFld.getFieldName())) {
                        if (!newFld.getFieldType().equalsIgnoreCase(
                                oldFld.getFieldType())) {
                            throw new Exception("field " + newFld.getFieldName()
                                    + " already exists in class " + table
                                    + " but of type " + oldFld.getFieldType());
                        }
                        found = true;
                        oldFld = null;
                        break;
                    }
                    oldFld = null;
                }
                if (!found) {
                    fields.add(newFld);
                }
                newFld = null;
            }
        }
    }
    /**
     * Adds a ddl lookup.
     * @param ddlLookup the ddl lookup
     */
    public void addLookup(final DDLLookup ddlLookup) {
        lookups.add(ddlLookup);
    }
    public void addLookups(final List<DDLLookup> lookups2) {
        if (lookups.isEmpty()) {
            lookups.addAll(lookups2);
        } else {
            for (int o = lookups2.size() - 1; o >= 0; o--) {
                DDLLookup newFld = lookups2.get(o);
                boolean found = false;
                for (int i = lookups.size() - 1; i >= 0; i--) {
                    DDLLookup oldFld = lookups.get(i);
                    if (newFld.getField().equalsIgnoreCase(
                            oldFld.getField())) {
                        found = true;
                        oldFld = null;
                        break;
                    }
                    oldFld = null;
                }
                if (!found) {
                    lookups.add(newFld);
                }
                newFld = null;
            }
        }
    }
    /**
     * Adds a map.
     * @param map the map
     * @throws Exception if an error occurs
     */
    public void addMap(final DDLMap map) throws Exception {
        maps.add(map);
    }
    /**
     * Gets the value for the constraints.
     * @return {@link List<Constraint>}
     */
    public List<DDLConstraint> getConstraints() {
        return constraints;
    }
    /**
     * Gets the value for the fields.
     * @return {@link List<DDLField>}
     */
    public List<DDLField> getFields() {
        return fields;
    }
    /**
     * Gets the value for the lookups.
     * @return {@link List<DDLLookup>}
     */
    public List<DDLLookup> getLookups() {
        return lookups;
    }
    /**
     * Gets the table name.
     * @return {@link String}
     */
    public String getTable() {
        return table;
    }
    /**
     * Sets the table name.
     * @param val the new value to set
     */
    public void setTable(final String val) {
        table = val;
    }
    /**
     * Writes the ddl markup.
     * @param writer the {@link PrintWriter} instance
     * @param schema the schema
     */
    public void write(final PrintWriter writer, final String schema) {
        TextLoader.getInstance().setLibraryFolder(
                "com/dalonedrau/schemacreator");
        try {
            // write header
            String section = TextLoader.getInstance().loadText(
                    "ddl_template.txt", "table_header");
            section = TextProcessor.getInstance().processText(
                    new String[] {
                            "<schema>", "<table>"
                    }, new String[] {
                            schema, table
                    }, section);
            writer.print(section);
            // write all fields
            for (int i = 0, len = fields.size(); i < len; i++) {
                fields.get(i).write(writer);
            }
            // write the primary key constraint
            String seperator = "";
            if (!constraints.isEmpty()) {
                seperator = ",";
            }
            section = TextLoader.getInstance().loadText(
                    "ddl_template.txt", "table_constraint_pk");
            section = TextProcessor.getInstance().processText(
                    new String[] {
                            "<table>", "<sep>"
                    }, new String[] {
                            table, seperator
                    }, section);
            writer.print(section);
            // write the constraints
            for (int i = 0, len = constraints.size(); i < len; i++) {
                if (i + 1 < len) {
                    constraints.get(i).write(writer, schema, table, ",");
                } else {
                    constraints.get(i).write(writer, schema, table, "");
                }
            }
            writer.println(");");
            writer.println();
            // write the lookups
            for (int i = 0, len = lookups.size(); i < len; i++) {
                lookups.get(i).write(writer, schema, table);
            }
            // write the maps
            for (int i = 0, len = maps.size(); i < len; i++) {
                maps.get(i).write(writer, schema, table);
            }
        } catch (RPGException | PooledException e) {
            e.printStackTrace();
            System.exit(1);
        }
    }
}
