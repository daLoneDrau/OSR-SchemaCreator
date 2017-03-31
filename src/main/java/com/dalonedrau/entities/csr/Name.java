package com.dalonedrau.entities.csr;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.UniqueCompositeKey;
import com.dalonedrau.schemacreator.Annotations.VarChar;

@UniqueCompositeKey(column0 = "name", column1 = "isLast")
public final class Name {
    private boolean isLast;
    private boolean isFemale;
    @VarChar(length = 40)
    private String name;
}
