package com.dalonedrau.entities.ff;

import java.util.List;
import java.util.Map;

import com.dalonedrau.schemacreator.Annotations.MapForeignKey;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class Room {
    @Unique
    @VarChar(length = 3)
    private String code;
    private List<Door> doors;
    @MapForeignKey(keyColumnType = "character varying(5)", keyField = "code",
            keyTargetClass = "Direction", valueColumn = "value",
            valueColumnType = "character varying(3)", valueField = "code",
            valueTargetClass = "Room")
    private Map<String, String> exits;
    @MapForeignKey(keyColumnType = "character varying(20)", keyField = "code",
            keyTargetClass = "Event", valueColumnType = "character varying(50)",
            valueTargetClass = "ScriptBundle", valueField = "name")
    private Map<String, String> scriptedEvents;
    private Text text;
}
