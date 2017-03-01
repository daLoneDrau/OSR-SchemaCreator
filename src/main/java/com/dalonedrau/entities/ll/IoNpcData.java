package com.dalonedrau.entities.ll;

import java.util.List;
import java.util.Map;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.ForeignKey;
import com.dalonedrau.schemacreator.Annotations.MapForeignKey;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

public class IoNpcData {
    @CanBeNull
    @JsonProperty("attacks_per_round")
    int attacksPerRound;
    /** the set of attributes defining the NPC. */
    @MapForeignKey(keyColumnType = "character varying(3)", keyField = "code",
            keyTargetClass = "Attribute", valueColumnType = "smallint")
    private Map<String, Integer> attributes;
    @CanBeNull
    long behavior;
    @CanBeNull
    float behaviorParam;
    @CanBeNull
    float climbCount;
    @CanBeNull
    long collidState;
    @CanBeNull
    long collidTime;
    @CanBeNull
    float critical;
    @CanBeNull
    boolean cut;
    @CanBeNull
    int cuts;
    @CanBeNull
    Dice damages;
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
    @JsonProperty("hoard_class")
    int hoardClass;
    @CanBeNull
    @VarChar(length = 50)
    String icon;
    /** the name of the internal script used. */
    @CanBeNull
    @JsonProperty("internal_script")
    private String internalScript;
    @JsonProperty("inventory_items")
    private List<IoItemData> inventoryItems;
    int level;
    @CanBeNull
    float life;
    @CanBeNull
    float mana;
    @CanBeNull
    float maxlife;
    @CanBeNull
    float maxmana;
    @CanBeNull
    String module;
    @CanBeNull
    int morale;
    @CanBeNull
    @JsonProperty("move_per_round")
    int movePerRound;
    @CanBeNull
    @JsonProperty("move_per_turn")
    int movePerTurn;
    /** the {@link IoNpcData}'s name. */
    @VarChar(length = 50)
    private String name;
    @CanBeNull
    @JsonProperty("num_appearing")
    Dice numberAppearing;
    @CanBeNull
    @JsonProperty("num_appearing_in_lair")
    Dice numberAppearingInLair;
    /** all NPC flags. */
    @CanBeNull
    private long npcFlags;
    @CanBeNull
    @JsonProperty("saving_throw")
    String savingThrow;
    /** the {@link IoNpcData}'s title. */
    @VarChar(length = 50)
    private String title;
    @CanBeNull
    @ForeignKey(clazz = IoItemData.class, fieldName = "name")
    private String weapon;
    @CanBeNull
    int xpvalue;
}