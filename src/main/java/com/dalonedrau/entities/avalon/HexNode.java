package com.dalonedrau.entities.avalon;

import com.dalonedrau.schemacreator.Annotations.IntegerNumericType;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class HexNode {
    private String description;
    /** advantage flag. */
    @IntegerNumericType
    private int flag;
    @Unique
    @VarChar(length = 40)
    private String name;
}
