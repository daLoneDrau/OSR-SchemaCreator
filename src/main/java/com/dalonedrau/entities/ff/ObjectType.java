package com.dalonedrau.entities.ff;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class ObjectType {
	@Unique
	@VarChar(length = 40)
	private String	code;
	@Unique
	private int		flag;
}
