package com.dalonedrau.entities.basic_dnd;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class EquipmentElementType {
    @Unique
    @VarChar(length = 40)
    private String code;
    @Unique
    private int value;
}
