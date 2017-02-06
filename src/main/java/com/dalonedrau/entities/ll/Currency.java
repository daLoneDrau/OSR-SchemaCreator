package com.dalonedrau.entities.ll;

import java.util.Map;

import com.dalonedrau.schemacreator.Annotations.MapForeignKey;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

public class Currency {
    @Unique
    @VarChar(length = 2)
    private String code;
    @JsonProperty("exchange_rates")
    @MapForeignKey(keyColumnType = "character varying(2)", keyField = "code",
            keyTargetClass = "Currency", valueColumnType = "decimal",
            valueTargetClass = "Float", valueField = "code")
    private Map<String, Float> exchangeRates;
    @Unique
    @VarChar(length = 14)
    private String name;
    @JsonProperty("sort_order")
    @Unique
    private int sortOrder;
}
