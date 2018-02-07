package com.dalonedrau.entities.sw_ct;

import java.util.List;
import java.util.Map;

import com.dalonedrau.schemacreator.Annotations.MapForeignKey;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class Homeland {
    @Unique
    private String description;
    /** the set of element modifiers. */
    @MapForeignKey(keyColumnType = "character varying(40)", keyField = "code",
            keyTargetClass = "EquipmentElementType",
            valueColumnType = "character varying(40)",
            valueTargetClass = "EquipmentItemModifier", valueField = "code")
    private Map<String, String> modifiers;
    @Unique
    @VarChar(length = 20)
    private String name;
}
