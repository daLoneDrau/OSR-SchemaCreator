package com.dalonedrau.entities.crypts_things;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class Group {
    @Unique
    @VarChar(length = 255)
    private String name;
}
