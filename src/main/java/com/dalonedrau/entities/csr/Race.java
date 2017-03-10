package com.dalonedrau.entities.csr;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class Race {
    @Unique
    @VarChar(length = 255)
    private String name;
}
