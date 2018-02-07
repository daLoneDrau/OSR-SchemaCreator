package com.dalonedrau.entities.csr;

import com.dalonedrau.schemacreator.Annotations.UniqueCompositeKey;
import com.dalonedrau.schemacreator.Annotations.VarChar;

@UniqueCompositeKey(columns = { "name", "isLast" })
public final class Name {
    private boolean isLast;
    private boolean isFemale;
    @VarChar(length = 40)
    private String name;
}
