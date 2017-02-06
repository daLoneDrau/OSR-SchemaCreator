package com.dalonedrau.entities.ll;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class EquipmentSlot {
    @Unique
    @VarChar(length = 40)
    private String code;
    @Unique
    private int value;
}
