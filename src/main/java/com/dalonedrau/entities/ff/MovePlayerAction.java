package com.dalonedrau.entities.ff;

import com.dalonedrau.schemacreator.Annotations.VarChar;

/**
 * Perma-lock action.
 * @author drau
 */
public class MovePlayerAction extends ScriptAction {
	@VarChar(length = 3)
	private String roomCode;
}
