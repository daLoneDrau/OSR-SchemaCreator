package com.dalonedrau.entities.ff;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public final class Attribute {
    @Unique
    @VarChar(length = 3)
    private String code;
    @Unique
    private String description;
    private EquipmentElementType element;
    @Unique
    @VarChar(length = 40)
    private String name;
}
