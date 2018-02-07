package com.dalonedrau.entities.ff;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

public final class MapTile {
    @VarChar(length = 200)
    private String name;
    @JsonProperty("code_number")
    @Unique
    private int codeNumber;
}
