package com.dalonedrau.entities.avalon;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

public class ActionChit {
    @JsonProperty("type")
    private ActionType type;
    @CanBeNull
    @JsonProperty("strength")
    private Vulnerability strength;
    @CanBeNull
    @JsonProperty("magic_type")
    private MagicColor magicType;
    private int speed;
    @CanBeNull
    @JsonProperty("fatigue_asterisk")
    private int fatigueAsterisk;
    @Unique
    @VarChar(length = 12)
    String code;
}
