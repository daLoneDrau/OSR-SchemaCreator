package com.dalonedrau.entities.avalon;

import com.fasterxml.jackson.annotation.JsonProperty;

public class HexSideEdge {
    @JsonProperty("clearing_from")
    HexClearing clearingFrom;
    int side;
    @JsonProperty("path")
    HexPath path;
}
