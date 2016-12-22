package com.dalonedrau.entities.lablord;

import com.dalonedrau.schemacreator.Annotations.Schema;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

@Schema(name = "wfrp")
public class WeaponType {
	@Unique
	private int		code;
	@Unique
	@VarChar(length = 20)
	private String	name;
}
