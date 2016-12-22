package com.dalonedrau.entities.ff;

import com.dalonedrau.schemacreator.Annotations.VarChar;

/**
 * Perma-lock action.
 * @author drau
 */
public class PermaLockAction extends ScriptAction {
    /** the name of the door that gets perma-locked. */
    @VarChar(length = 20)
    private String doorName;
}
