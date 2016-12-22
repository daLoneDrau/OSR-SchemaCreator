package com.dalonedrau.entities.ff;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.VarChar;

/**
 * Perma-lock action.
 * @author drau
 */
public class DamagePlayerAction extends ScriptAction {
	/** the amount the attribute is damaged. */
	@CanBeNull
	private int		amount;
	/** the attribute affected. */
	@VarChar(length = 2)
	private String	attribute;
	/**
	 * the flag indicating the action requires a die roll to determine damage
	 * amount.
	 */
	@CanBeNull
	private boolean	isDieRoll;
	/** the number of dice rolled. */
	@CanBeNull
	private int		numDieRolled;
}
