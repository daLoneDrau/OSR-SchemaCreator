package com.dalonedrau.entities.sw_ct;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class EquipmentElementType {
    @Unique
    @VarChar(length = 40)
    private String code;
    @Unique
    private int value;
}
