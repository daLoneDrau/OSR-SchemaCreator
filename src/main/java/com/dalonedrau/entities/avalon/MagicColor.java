package com.dalonedrau.entities.avalon;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

public class MagicColor {
    @JsonProperty("long_name")
    @Unique
    @VarChar(length = 40)
    private String longName;
    @JsonProperty("short_name")
    @Unique
    @VarChar(length = 10)
    private String name;
}
