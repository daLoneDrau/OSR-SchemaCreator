package com.dalonedrau.entities.bp;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class ScriptActionType {
    @Unique
    @VarChar(length = 40)
    private String code;
}
