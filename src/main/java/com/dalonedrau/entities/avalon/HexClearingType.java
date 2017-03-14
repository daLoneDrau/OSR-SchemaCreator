package com.dalonedrau.entities.avalon;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class HexClearingType {
    @Unique
    @VarChar(length = 22)
    String code;
}
