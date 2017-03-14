package com.dalonedrau.entities.avalon;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

public class HexClearing {
    int number;
    @JsonProperty("type")
    HexClearingType type;
    @JsonProperty("location")
    Vector3 location;
    @Unique
    @VarChar(length = 3)
    String code;
}
