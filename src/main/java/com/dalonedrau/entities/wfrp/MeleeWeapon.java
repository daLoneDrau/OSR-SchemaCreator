package com.dalonedrau.entities.wfrp;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.Schema;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

@Schema(name = "wfrp")
public class MeleeWeapon {
	@CanBeNull
	@JsonProperty("dmg_modifier")
	private int		dmgModifier;
	@Unique
	@VarChar(length = 40)
	private String	name;
}
