package com.dalonedrau.entities.ff;

import com.dalonedrau.schemacreator.Annotations.ForeignKey;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class ShowTextAction extends ScriptAction {
    private boolean error;
    @ForeignKey(clazz = Text.class, fieldName = "name")
    @VarChar(length = 255)
    private String textName;
}
