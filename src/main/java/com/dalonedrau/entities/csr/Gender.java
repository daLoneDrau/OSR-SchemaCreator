package com.dalonedrau.entities.csr;

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
    @VarChar(length = 3)
    private String reflexive;
}
