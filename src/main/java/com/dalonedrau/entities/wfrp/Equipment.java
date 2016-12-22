package com.dalonedrau.entities.wfrp;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.Schema;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

@Schema(name = "wfrp")
public class Equipment {
	@CanBeNull
	@JsonProperty("armour_data")
	private Armour					armourData;
	private EquipmentAvailability	availability;
	@CanBeNull
	@JsonProperty("cost_gc")
	private int						costGc;
	@CanBeNull
	@JsonProperty("cost_p")
	private int						costP;
	@CanBeNull
	@JsonProperty("cost_s")
	private int						costS;
	private String					description;
	private int						encumbrance;
	@Unique
	@VarChar(length = 40)
	private String					name;
	private EquipmentType			type;
	@CanBeNull
	@JsonProperty("weapon_data")
	private Weapon					weaponData;
	@CanBeNull
	@JsonProperty("weapon_quality")
	private WeaponQuality			weaponQuality;
}
