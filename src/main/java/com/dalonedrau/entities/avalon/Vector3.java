package com.dalonedrau.entities.avalon;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class Vector3 {
    int x;
    int y;
    int z;
    @Unique
    @VarChar(length = 8)
    String code;
}
