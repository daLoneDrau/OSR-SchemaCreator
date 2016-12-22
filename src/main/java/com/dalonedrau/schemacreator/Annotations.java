package com.dalonedrau.schemacreator;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class Annotations {
	@Retention(RetentionPolicy.RUNTIME)
	public @interface CanBeNull {
	}
	@Retention(RetentionPolicy.RUNTIME)
	public @interface ForeignKey {
		Class clazz();
		String fieldName();
	}
	@Retention(RetentionPolicy.RUNTIME)
	public @interface Inheritance {
		InheritanceType strategy();
	}
	public enum InheritanceType {
		JOINED, SINGLE_TABLE, TABLE_PER_CLASS
	}
	@Retention(RetentionPolicy.RUNTIME)
	public @interface MapForeignKey {
		String keyColumnType();
		String keyField();
		String keyTargetClass();
		String valueColumn() default "";
		String valueColumnType() default "";
		String valueField() default "";
		String valueTargetClass() default "";
	}
	@Retention(RetentionPolicy.RUNTIME)
	public @interface MappedSuperclass {
	}
	@Retention(RetentionPolicy.RUNTIME)
	public @interface Schema {
		String name();
	}
	@Retention(RetentionPolicy.RUNTIME)
	public @interface ToString {
	}
	@Retention(RetentionPolicy.RUNTIME)
	public @interface Unique {
	}
	@Retention(RetentionPolicy.RUNTIME)
	public @interface UniqueCompositeKey {
		String column0();
		String column1();
	}
	@Retention(RetentionPolicy.RUNTIME)
	public @interface VarChar {
		int length();
	};
}
