package com.dalonedrau.schemacreator;

import java.util.Comparator;

public class SchemaClassComparator implements Comparator<SchemaClass> {

    @Override
    public int compare(final SchemaClass o1, final SchemaClass o2) {
        int c = 0;
        if (o1.hasDependency(o2.getClazz().getSimpleName())) {
            c = 1;
        } else if (o2.hasDependency(o1.getClazz().getSimpleName())) {
            c = -1;
        }
        return c;
    }

}
