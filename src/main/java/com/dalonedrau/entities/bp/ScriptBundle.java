package com.dalonedrau.entities.bp;

import java.util.List;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class ScriptBundle {
    @Unique
    @VarChar(length = 50)
    private String name;
    private List<ScriptAction> scripts;
}
