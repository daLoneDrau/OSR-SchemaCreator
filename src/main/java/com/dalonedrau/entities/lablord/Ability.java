package com.dalonedrau.entities.lablord;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

/**
 * @author drau
 */
public final class Ability {
	@Unique
	@VarChar(length = 3)
	private String	code;
	@Unique
	private String	description;
	@Unique
	@VarChar(length = 12)
	private String	name;
}
