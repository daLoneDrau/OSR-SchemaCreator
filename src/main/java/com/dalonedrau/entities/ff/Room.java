package com.dalonedrau.entities.ff;

import java.util.Map;

import com.dalonedrau.schemacreator.Annotations.MapForeignKey;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class Room {
    @Unique
    @VarChar(length = 3)
    private String code;
    @MapForeignKey(keyColumnType = "character varying(5)", keyField = "code",
            keyTargetClass = "Direction", valueColumn = "value",
            valueColumnType = "character varying(3)", valueField = "code",
            valueTargetClass = "Room")
    private Map<String, String> exits;
}
