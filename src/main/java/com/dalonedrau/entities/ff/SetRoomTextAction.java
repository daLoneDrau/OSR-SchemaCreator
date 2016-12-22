package com.dalonedrau.entities.ff;

import com.dalonedrau.schemacreator.Annotations.ForeignKey;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class SetRoomTextAction extends ScriptAction {
    @VarChar(length = 3)
    private String roomCode;
    @ForeignKey(clazz = Text.class, fieldName = "name")
    @VarChar(length = 255)
    private String textName;
}
