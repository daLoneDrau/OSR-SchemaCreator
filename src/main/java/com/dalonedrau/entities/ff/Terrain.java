package com.dalonedrau.entities.ff;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class Terrain {
    @Unique
    @VarChar(length = 30)
    private String name;
}
