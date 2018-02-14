package com.dalonedrau.entities.shin_sam;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class Die {
    @Unique
    @VarChar(length = 4)
    private String code;
    @Unique
    private int value;
}
