package com.dalonedrau.entities.avalon;

import java.util.List;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

public class HexPath {
    @Unique
    @VarChar(length = 20)
    String code;
    @JsonProperty("nodes")
    List<PathNode> nodes;
}
