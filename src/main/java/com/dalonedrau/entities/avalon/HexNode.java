package com.dalonedrau.entities.avalon;

import com.fasterxml.jackson.annotation.JsonProperty;

public class HexNode {
    Vector3 location;
    @JsonProperty("type")
    HexTerrainType type;
}
