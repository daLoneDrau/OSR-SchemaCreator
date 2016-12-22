package com.dalonedrau.entities.ff;

import com.dalonedrau.schemacreator.Annotations.ForeignKey;
import com.dalonedrau.schemacreator.Annotations.VarChar;

/**
 * Perma-lock action.
 * @author drau
 */
public class CreateExitAction extends ScriptAction {
	/** the room destination. */
	@VarChar(length = 3)
	private String	destination;
	/** the direction in which the exit leads. */
	@ForeignKey(clazz = Direction.class, fieldName = "code")
	@VarChar(length = 5)
	private String	direction;
	/** the room where the exit is being created. */
	@VarChar(length = 3)
	private String	origin;
}
