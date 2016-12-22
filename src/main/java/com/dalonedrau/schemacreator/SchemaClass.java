package com.dalonedrau.schemacreator;

import java.util.ArrayList;
import java.util.List;

public class SchemaClass {
	private final Class<?>		clazz;
	private final List<String>	dependencies;
	public SchemaClass(final Class<?> val) {
		clazz = val;
		dependencies = new ArrayList<String>();
	}
	public void addDependency(final String val) {
		if (!dependencies.contains(val)) {
			dependencies.add(val);
		}
	}
	public Class<?> getClazz() {
		return clazz;
	}
	public boolean hasDependencies() {
		return !dependencies.isEmpty();
	}
	public boolean hasDependency(final String dependency) {
		return dependencies.contains(dependency);
	}
}
