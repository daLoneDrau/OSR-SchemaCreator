package com.dalonedrau.entities.ff;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class Direction {
	@Unique
	@VarChar(length = 5)
	private String	code;
	@Unique
	private int		value;
}
