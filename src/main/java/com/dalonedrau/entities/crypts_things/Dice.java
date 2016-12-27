package com.dalonedrau.entities.crypts_things;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class Dice {
    @Unique
    @VarChar(length = 40)
    private String code;
    private Die die;
    private int number;
}
