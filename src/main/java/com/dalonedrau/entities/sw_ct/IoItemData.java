package com.dalonedrau.entities.sw_ct;

import java.util.List;
import java.util.Map;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.MapForeignKey;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

public class IoItemData {
    /** the current number in an inventory slot. */
    @CanBeNull
    private int count;
    /** the amount of damage the weapon does. */
    @CanBeNull
    private Dice damages;
    /** the item's description. */
    private String description;
    /** dunno? */
    @CanBeNull
    @JsonProperty("food_value")
    private int foodValue;
    /** the list of groups the item belongs to. */
    private List<Group> groups;
    /** the name of the internal script used. */
    @JsonProperty("internal_script")
    @VarChar(length = 255)
    private String internalScript;
    /** flag indicating the left ring needs to be replaced. */
    @CanBeNull
    @JsonProperty("left_ring")
    private boolean leftRing;
    /** the item's light value. */
    @CanBeNull
    @JsonProperty("light_value")
    private int lightValue;
    /** the maximum number of the item the player can own. */
    @CanBeNull
    @JsonProperty("max_owned")
    private int maxOwned;
    /** the set of element modifiers. */
    @MapForeignKey(keyColumnType = "character varying(40)", keyField = "code",
            keyTargetClass = "EquipmentElementType",
            valueColumnType = "character varying(40)",
            valueTargetClass = "EquipmentItemModifier",
            valueField = "code")
    private Map<String, String> modifiers;
    /** the item's name. */
    @VarChar(length = 40)
    private String name;
    /** the item's price. */
    private float price;
    /** the type of ring the item is. */
    @CanBeNull
    @JsonProperty("ring_type")
    private int ringType;
    /** the amount of the item that can be stacked in one inventory slot. */
    @JsonProperty("stack_size")
    private int stackSize;
    /** dunno? */
    @CanBeNull
    @JsonProperty("steal_value")
    private int stealValue;
    /** the list of object types. */
    private List<ObjectType> types;
    /** the item's weight. */
    private float weight;
}
