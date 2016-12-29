package com.dalonedrau.entities.avalon;

import com.dalonedrau.schemacreator.Annotations.IntegerNumericType;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class ObjectType {
    @Unique
    @VarChar(length = 40)
    private String code;
    @IntegerNumericType
    @Unique
    private int flag;
}
