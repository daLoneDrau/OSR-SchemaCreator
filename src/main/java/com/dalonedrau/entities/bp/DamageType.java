package com.dalonedrau.entities.bp;

import com.dalonedrau.schemacreator.Annotations.IntegerNumericType;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class DamageType {
    /** advantage flag. */
    @IntegerNumericType
    private int flag;
    @Unique
    @VarChar(length = 40)
    private String name;
}
