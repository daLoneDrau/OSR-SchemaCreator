package com.dalonedrau.entities.avalon;

import java.util.List;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

public class HexTile {
    @Unique
    @VarChar(length = 2)
    String abbreviation;
    @Unique
    @VarChar(length = 20)
    String name;
    @JsonProperty("type")
    HexTileType type;
    @JsonProperty("clearings")
    List<HexClearing> clearings;
    @JsonProperty("edges")
    List<HexNodeEdge> edges;
    @JsonProperty("secret_edges")
    List<HexNodeEdge> secretEdges;
    @JsonProperty("side_edges")
    List<HexSideEdge> sideEdges;
    @JsonProperty("paths")
    List<HexPath> paths;
    @JsonProperty("enchanted_paths")
    List<HexPath> enchantedPaths;
    @JsonProperty("terrain")
    List<HexNode> terrain;
    @JsonProperty("enchanted_terrain")
    List<HexNode> enchantedTerrain;
}
