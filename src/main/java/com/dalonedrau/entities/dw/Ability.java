package com.dalonedrau.entities.dw;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class Ability {
    @Unique
    @VarChar(length = 255)
    private String name;
    @Unique
    private String description;
}
