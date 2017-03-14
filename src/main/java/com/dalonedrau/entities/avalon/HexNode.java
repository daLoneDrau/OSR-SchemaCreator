package com.dalonedrau.entities.avalon;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

public class HexNode {
    @JsonProperty("location")
    Vector3 location;
    @JsonProperty("type")
    HexTerrainType type;
    @Unique
    @VarChar(length = 30)
    String code;
}
