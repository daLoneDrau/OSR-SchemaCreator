package com.dalonedrau.entities.ff;

import com.dalonedrau.schemacreator.Annotations.VarChar;

public class TestYourLuckAction extends ScriptAction {
	@VarChar(length = 50)
	private String	failScripts;
	@VarChar(length = 50)
	private String	passScripts;
}
