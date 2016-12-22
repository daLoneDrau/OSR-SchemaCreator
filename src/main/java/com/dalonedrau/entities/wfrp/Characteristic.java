package com.dalonedrau.entities.wfrp;

import com.dalonedrau.schemacreator.Annotations.Schema;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

@Schema(name = "wfrp")
public final class Characteristic {
	@Unique
	@VarChar(length = 3)
	private String	code;
	@Unique
	private String	description;
	@JsonProperty("is_main")
	private boolean	isMain;
	@Unique
	@VarChar(length = 15)
	private String	name;
}
