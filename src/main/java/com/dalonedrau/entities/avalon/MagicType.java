package com.dalonedrau.entities.avalon;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

public class MagicType {
    @Unique
    @VarChar(length = 4)
    private String code;
    @JsonProperty("spell_name")
    @Unique
    @VarChar(length = 10)
    private String spellName;
    @Unique
    @VarChar(length = 40)
    private String title;
}
