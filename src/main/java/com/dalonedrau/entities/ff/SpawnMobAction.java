package com.dalonedrau.entities.ff;

import com.dalonedrau.schemacreator.Annotations.VarChar;

public class SpawnMobAction extends ScriptAction {
	@VarChar(length = 30)
	private String mobCode;
}
