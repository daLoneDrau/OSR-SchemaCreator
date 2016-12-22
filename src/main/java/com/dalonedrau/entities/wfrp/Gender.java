package com.dalonedrau.entities.wfrp;

import com.dalonedrau.schemacreator.Annotations.Unique;

public class Gender {
	@Unique
	private String	description;
	@Unique
	private String	name;
}
