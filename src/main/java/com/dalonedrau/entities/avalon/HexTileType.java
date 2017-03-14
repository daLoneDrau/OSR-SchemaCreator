package com.dalonedrau.entities.avalon;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class HexTileType {
    @Unique
    @VarChar(length = 18)
    String code;
}
