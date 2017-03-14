package com.dalonedrau.entities.avalon;

import com.fasterxml.jackson.annotation.JsonProperty;

public class HexNodeEdge {
    @JsonProperty("clearing_from")
    HexClearing clearingFrom;
    @JsonProperty("clearing_to")
    HexClearing clearingTo;
    @JsonProperty("path")
    HexPath path;
}
