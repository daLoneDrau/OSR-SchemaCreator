package com.dalonedrau.entities.lablord;

import java.util.List;
import java.util.Map;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.MapForeignKey;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class Equipment {
    @CanBeNull
    private Armor armorData;
    @MapForeignKey(keyColumnType = "character varying(2)", keyField = "code",
            keyTargetClass = "Currency")
    private Map<String, Integer> cost;
    @Unique
    private String description;
    @Unique
    @VarChar(length = 30)
    private String name;
    private List<EquipmentType> type;
    @CanBeNull
    private WeaponData weaponData;
    private float weight;
}
