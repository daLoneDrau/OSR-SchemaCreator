package com.dalonedrau.entities.arkania;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

public final class Attribute {
    @Unique
    @VarChar(length = 2)
    private String code;
    @Unique
    private String description;
    @JsonProperty("is_flaw")
    private boolean isFlaw;
    @Unique
    @VarChar(length = 15)
    private String name;
}
