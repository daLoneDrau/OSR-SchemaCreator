package com.dalonedrau.entities.basic_dnd;

import com.dalonedrau.schemacreator.Annotations.ForeignKey;
import com.dalonedrau.schemacreator.Annotations.Inheritance;
import com.dalonedrau.schemacreator.Annotations.InheritanceType;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
public class ScriptAction {
    @Unique
    @VarChar(length = 40)
    private String name;
    @ForeignKey(clazz = ScriptActionType.class, fieldName = "code")
    @VarChar(length = 40)
    private String type;
}
