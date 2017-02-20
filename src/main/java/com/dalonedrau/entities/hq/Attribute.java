package com.dalonedrau.entities.hq;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

public final class Attribute {
    @Unique
    @VarChar(length = 3)
    private String code;
    @Unique
    private String description;
    @JsonProperty("element")
    private EquipmentElementType element;
    @Unique
    @VarChar(length = 40)
    private String name;
}
