package com.dalonedrau.entities.avalon;

import com.fasterxml.jackson.annotation.JsonProperty;

public class HexClearing {
    int number;
    @JsonProperty("type")
    HexClearingType type;
    @JsonProperty("location")
    Vector3 location;
}
