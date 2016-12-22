package com.dalonedrau.entities.lablord;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class EquipmentType {
    @Unique
    private int code;
    @Unique
    @VarChar(length = 30)
    private String name;
}
