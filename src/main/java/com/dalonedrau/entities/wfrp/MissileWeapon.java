package com.dalonedrau.entities.wfrp;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.Schema;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

@Schema(name = "wfrp")
public class MissileWeapon {
	@CanBeNull
	private int		dmg;
	@JsonProperty("dmg_is_sb")
	private boolean	dmgIsSb;
	@CanBeNull
	@JsonProperty("dmg_modifier")
	private int		dmgModifier;
	@CanBeNull
	@JsonProperty("long_range")
	private int		longRange;
	@Unique
	@VarChar(length = 40)
	private String	name;
	@CanBeNull
	WeaponReload	reload;
	@CanBeNull
	@JsonProperty("short_range")
	private int		shortRange;
}
