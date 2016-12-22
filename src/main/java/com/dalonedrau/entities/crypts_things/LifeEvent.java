package com.dalonedrau.entities.crypts_things;

import java.util.List;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class LifeEvent {
	@Unique
	private String	description;
	@Unique
	@VarChar(length = 20)
	private String	name;
	private List<EquipmentItemModifier> modifiers;
}
