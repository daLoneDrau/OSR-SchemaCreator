package com.dalonedrau.entities.avalon;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class HexTerrainType {
    @Unique
    @VarChar(length = 20)
    String code;
}
