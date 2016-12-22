package com.dalonedrau.entities.lablord;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class AbilityRequirement {
    private Ability ability;
    @Unique
    @VarChar(length = 4)
    private String code;
    private int requirement;
}
