package com.dalonedrau.entities.lablord;

import java.util.Map;

import com.dalonedrau.schemacreator.Annotations.MapForeignKey;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class Currency {
	@Unique
	@VarChar(length = 2)
	private String				code;
	@MapForeignKey(keyColumnType = "character varying(2)", keyField = "code", keyTargetClass = "Currency")
	private Map<String, Float>	exchangeRates;
	@Unique
	@VarChar(length = 14)
	private String				name;
	@Unique
	private int					sortOrder;
}
