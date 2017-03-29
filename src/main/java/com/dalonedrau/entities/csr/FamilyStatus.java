package com.dalonedrau.entities.csr;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class FamilyStatus {
    @Unique
    @VarChar(length = 20)
    private String code;
    @Unique
    @VarChar(length = 20)
    private String title;
    @Unique
    private int rollMin;
    @Unique
    private int rollMax;
    private int pointsAdjustment;
}
