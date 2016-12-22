package com.dalonedrau.entities.lablord;

import java.util.Map;

import com.dalonedrau.schemacreator.Annotations.MapForeignKey;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class WeaponData {
	@Unique
	@VarChar(length = 12)
	private String					code;
	@MapForeignKey(keyColumnType = "character varying(20)", keyField = "name", keyTargetClass = "WeaponType")
	private Map<String, DieRoll>	damages;
}
