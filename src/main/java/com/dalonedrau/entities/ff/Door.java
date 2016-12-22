package com.dalonedrau.entities.ff;

import java.util.Map;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.ForeignKey;
import com.dalonedrau.schemacreator.Annotations.MapForeignKey;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class Door {
    @CanBeNull
    @VarChar(length = 2)
    private String attributeTest;
    @ForeignKey(clazz = Direction.class, fieldName = "code")
    @VarChar(length = 5)
    private String direction;
    @CanBeNull
    @VarChar(length = 3)
    private String leadsTo;
    private boolean locked;
    @Unique
    @VarChar(length = 20)
    private String name;
    @CanBeNull
    private int numDiceRoll;
    @MapForeignKey(keyColumnType = "character varying(20)", keyField = "code",
            keyTargetClass = "Event", valueColumnType = "character varying(50)",
            valueTargetClass = "ScriptBundle", valueField = "name")
    private Map<String, String> scriptedEvents;
    @VarChar(length = 40)
    private String title;
}
