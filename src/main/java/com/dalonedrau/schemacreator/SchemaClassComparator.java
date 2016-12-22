package com.dalonedrau.schemacreator;

import java.util.Comparator;

public class SchemaClassComparator implements Comparator<SchemaClass> {

	@Override
	public int compare(final SchemaClass o1, final SchemaClass o2) {
		int c = 0;
		if (o1.hasDependency(o2.getClazz().getSimpleName())) {
			c = 1;
			System.out.println(o1.getClazz().getSimpleName() + ">"
					+ o2.getClazz().getSimpleName());
		} else if (o2.hasDependency(o1.getClazz().getSimpleName())) {
			c = -1;
			System.out.println(o1.getClazz().getSimpleName() + "<"
					+ o2.getClazz().getSimpleName());
		} else {
			System.out.println(o1.getClazz().getSimpleName() + "=="
					+ o2.getClazz().getSimpleName());
		}
		return c;
	}

}
