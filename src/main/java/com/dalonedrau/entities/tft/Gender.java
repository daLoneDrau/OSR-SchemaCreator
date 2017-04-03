package com.dalonedrau.entities.tft;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class Gender {
    @Unique
    private String description;
    @Unique
    @VarChar(length = 10)
    private String name;
    @Unique
    @VarChar(length = 3)
    private String subjective;
    @Unique
    @VarChar(length = 3)
    private String objective;
    @Unique
    @VarChar(length = 3)
    private String dependentPossessive;
    @Unique
    @VarChar(length = 4)
    private String independentPossessive;
    @Unique
    @VarChar(length = 7)
    private String reflexive;
    @Unique
    @VarChar(length = 8)
    private String genderOffspring;
    @Unique
    @VarChar(length = 6)
    private String genderParent;
}
