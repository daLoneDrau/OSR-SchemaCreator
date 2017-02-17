package com.dalonedrau.entities.avalon;

import java.util.List;
import java.util.Map;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.MapForeignKey;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

public class IoItemData {
    /** the item's alerted attack speed. */
    @CanBeNull
    @JsonProperty("alerted_speed")
    private int alertedSpeed;
    /** the number of sharpness stars when alerted. */
    @CanBeNull
    @JsonProperty("alerted_sharpness")
    private int alertedSharpness;
    /** the item's alerted weight class. */
    @CanBeNull
    @JsonProperty("alerted_weight_class")
    private Vulnerability alertedWeightClass;
    /** the type of attack. */
    @CanBeNull
    @JsonProperty("attack_method")
    private AttackType attackMethod;
    /** the armor's condition. */
    @CanBeNull
    private ArmorCondition condition;
    /** the current number in an inventory slot. */
    @CanBeNull
    private int count;
    /** the item's description. */
    @CanBeNull
    private String description;
    @CanBeNull
    private int fame;
    /** dunno? */
    @CanBeNull
    @JsonProperty("food_value")
    private int foodValue;
    /** the list of groups the item belongs to. */
    private List<Group> groups;
    @CanBeNull
    @JsonProperty("horse_type")
    private HorseType horseType;
    /** the name of the internal script used. */
    @JsonProperty("internal_script")
    @VarChar(length = 255)
    private String internalScript;
    /** flag indicating the left ring needs to be replaced. */
    @CanBeNull
    @JsonProperty("left_ring")
    private boolean leftRing;
    /** the weapon length. */
    @CanBeNull
    private int length;
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
            valueTargetClass = "EquipmentItemModifier", valueField = "code")
    private Map<String, String> modifiers;
    /** the item's name. */
    @Unique
    @VarChar(length = 40)
    private String name;
    @CanBeNull
    private int notoriety;
    /** the item's price. */
    private float price;
    /** the item's price if damaged. */
    @CanBeNull
    @JsonProperty("price_damaged")
    private float priceDamaged;
    /** the item's price if destroyed. */
    @CanBeNull
    @JsonProperty("price_destroyed")
    private float priceDestroyed;
    /** the protections the armor provides. */
    private List<ArmorProtection> protections;
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
    /** the item's title. */
    @VarChar(length = 40)
    private String title;
    /** the list of object types. */
    private List<ObjectType> types;
    /** the item's unalerted attack speed. */
    @CanBeNull
    @JsonProperty("unalerted_speed")
    private int unalertedSpeed;
    /** the number of sharpness stars when unalerted. */
    @CanBeNull
    @JsonProperty("unalerted_sharpness")
    private int unalertedSharpness;
    /** the item's unalerted weight class. */
    @CanBeNull
    @JsonProperty("unalerted_weight_class")
    private Vulnerability unalertedWeightClass;
    /** the item's weight class. */
    @CanBeNull
    @JsonProperty("weight_class")
    private Vulnerability weightClass;
    /** the item's weapon length. */
    @CanBeNull
    @JsonProperty("weapon_length")
    private int weaponLength;
}
