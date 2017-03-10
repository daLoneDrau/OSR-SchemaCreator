package com.dalonedrau.entities.csr;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class BirthAspect {
    @Unique
    @VarChar(length = 20)
    private String code;
    @Unique
    @VarChar(length = 20)
    private String title;
}
