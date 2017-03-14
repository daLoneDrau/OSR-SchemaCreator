package com.dalonedrau.entities.avalon;

import java.util.List;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

public class HexTile {
    @Unique
    @VarChar(length = 2)
    String abbreviation;
    @JsonProperty("clearings")
    List<HexClearing> clearings;
    @JsonProperty("edges")
    List<HexNodeEdge> edges;
    @CanBeNull
    @JsonProperty("enchanted_edges")
    List<HexNodeEdge> enchantedEdges;
    @CanBeNull
    @JsonProperty("enchanted_secret_edges")
    List<HexNodeEdge> enchantedSecretEdges;
    @CanBeNull
    @JsonProperty("enchanted_side_edges")
    List<HexSideEdge> enchantedSideEdges;
    @JsonProperty("enchanted_terrain")
    List<HexNode> enchantedTerrain;
    @Unique
    @VarChar(length = 20)
    String name;
    @CanBeNull
    @JsonProperty("secret_edges")
    List<HexNodeEdge> secretEdges;
    @JsonProperty("side_edges")
    List<HexSideEdge> sideEdges;
    @JsonProperty("terrain")
    List<HexNode> terrain;
    @JsonProperty("type")
    HexTileType type;
}
