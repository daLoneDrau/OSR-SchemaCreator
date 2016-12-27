package com.dalonedrau.entities.crypts_things;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class EquipmentItemModifier {
    @Unique
    @VarChar(length = 40)
    private String code;
    /** the flag indicating whether the modifier is a percentage modifier. */
    private boolean percent;
    /** not used. yet. */
    private int special;
    /** the value of modifier to be applied. */
    private float value;
}
