package com.dalonedrau.entities.avalon;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class Advantage {
    private String description;
    /** advantage flag. */
    private int flag;
    @Unique
    @VarChar(length = 40)
    private String name;
}
