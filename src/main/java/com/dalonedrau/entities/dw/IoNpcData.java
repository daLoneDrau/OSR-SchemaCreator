package com.dalonedrau.entities.dw;

import java.util.List;
import java.util.Map;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.MapForeignKey;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

public class IoNpcData {
    /** the set of attributes defining the NPC. */
    @MapForeignKey(keyColumnType = "character varying(3)", keyField = "code",
            keyTargetClass = "Attribute", valueColumnType = "smallint")
    private Map<String, Integer> attributes;
    @CanBeNull
    String description;
    /** the set of element modifiers. */
    @JsonProperty("equipped_items")
    @MapForeignKey(keyColumnType = "character varying(40)", keyField = "code",
            keyTargetClass = "EquipmentSlot",
            valueColumnType = "character varying(40)",
            valueTargetClass = "IoItemData", valueField = "name")
    private Map<String, String> equippedItems;
    /** the {@link IoNpcData}'s gender. */
    private Gender gender;
    /** the list of groups the item belongs to. */
    private List<Group> groups;
    @CanBeNull
    @VarChar(length = 50)
    String icon;
    /** the name of the internal script used. */
    @CanBeNull
    @JsonProperty("internal_script")
    private String internalScript;
    @JsonProperty("inventory_items")
    private List<IoItemData> inventoryItems;
    @CanBeNull
    String module;
    /** the {@link IoNpcData}'s name. */
    @VarChar(length = 50)
    private String name;
    /** all NPC flags. */
    @CanBeNull
    private long npcFlags;
    @CanBeNull
    int rank;
    /** the {@link IoNpcData}'s title. */
    @VarChar(length = 50)
    private String title;
    @CanBeNull
    int xpvalue;
}