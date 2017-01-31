package com.dalonedrau.entities.avalon;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class Gender {
    @Unique
    private String description;
    @Unique
    @VarChar(length = 10)
    private String name;
}
