package com.dalonedrau.entities.hq;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class EquipmentSlot {
    @Unique
    @VarChar(length = 40)
    private String name;
    /** value. */
    private int val;
}
