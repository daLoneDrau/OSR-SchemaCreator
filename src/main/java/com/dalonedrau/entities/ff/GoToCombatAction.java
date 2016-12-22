package com.dalonedrau.entities.ff;

import java.util.List;

import com.dalonedrau.schemacreator.Annotations.ForeignKey;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class GoToCombatAction extends ScriptAction {
	/** the player's key ring. */
	@VarChar(length = 20)
	private List<String>	mobs;
	@ForeignKey(clazz = Text.class, fieldName = "name")
	@VarChar(length = 255)
	private String			textName;
}
