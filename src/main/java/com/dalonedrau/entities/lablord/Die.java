package com.dalonedrau.entities.lablord;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

/**
 * @author drau
 */
public final class Die {
	@Unique
	@VarChar(length = 4)
	private String	code;
	@Unique
	private int		value;
}
