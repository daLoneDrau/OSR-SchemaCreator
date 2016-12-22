package com.dalonedrau.entities.lablord;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.UniqueCompositeKey;
import com.dalonedrau.schemacreator.Annotations.VarChar;

/**
 * @author drau
 */
@UniqueCompositeKey(column0 = "die", column1 = "number")
public final class DieRoll {
    @Unique
    @VarChar(length = 5)
    private String code;
    private Die die;
    private int number;
}
