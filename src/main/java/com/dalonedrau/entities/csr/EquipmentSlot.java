package com.dalonedrau.entities.csr;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class EquipmentSlot {
    @Unique
    @VarChar(length = 40)
    private String code;
    /** value. */
    private int value;
}
