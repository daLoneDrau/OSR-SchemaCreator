/**
 *
 */
package com.dalonedrau.entities.avalon;

import java.util.List;
import java.util.Map;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.MapForeignKey;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * @author drau
 */
public final class IoPcData {
    @JsonProperty("advantage_one")
    Advantage advantage1;
    @JsonProperty("advantage_two")
    Advantage advantage2;
    @CanBeNull
    List<Group> ally;
    @CanBeNull
    List<Group> enemy;
    String evaluation;
    @CanBeNull
    List<Group> friendly;
    /** the {@link IoPcData}'s gender. */
    private Gender gender;
    /** the character's gold. */
    @CanBeNull
    private float gold;
    /** interface flags. */
    @CanBeNull
    private int interfaceFlags;
    /** the {@link IoPcData}'s name. */
    @VarChar(length = 40)
    private String name;
    @JsonProperty("stage_one_actions")
    private List<ActionChit> stageOneActions;
    /**
     * the reference ids of all items equipped by the {@link IoPcData}, indexed
     * by equipment slot.
     */
    @JsonProperty("stage_one_equipped_items")
    @MapForeignKey(keyColumnType = "character varying(40)", keyField = "code",
            keyTargetClass = "EquipmentSlot",
            valueColumnType = "character varying(40)",
            valueTargetClass = "IoItemData", valueField = "name")
    private Map<String, String> stageOneEquippedItems;
    @VarChar(length = 40)
    @JsonProperty("stage_one_name")
    private String stageOneName;
    @JsonProperty("stage_two_actions")
    private List<ActionChit> stageTwoActions;
    /**
     * the reference ids of all items equipped by the {@link IoPcData}, indexed
     * by equipment slot.
     */
    @JsonProperty("stage_two_equipped_items")
    @MapForeignKey(keyColumnType = "character varying(40)", keyField = "code",
            keyTargetClass = "EquipmentSlot",
            valueColumnType = "character varying(40)",
            valueTargetClass = "IoItemData", valueField = "name")
    private Map<String, String> stageTwoEquippedItems;
    @VarChar(length = 40)
    @JsonProperty("stage_two_name")
    private String stageTwoName;
    @JsonProperty("stage_three_actions")
    private List<ActionChit> stageThreeActions;
    /**
     * the reference ids of all items equipped by the {@link IoPcData}, indexed
     * by equipment slot.
     */
    @JsonProperty("stage_three_equipped_items")
    @MapForeignKey(keyColumnType = "character varying(40)", keyField = "code",
            keyTargetClass = "EquipmentSlot",
            valueColumnType = "character varying(40)",
            valueTargetClass = "IoItemData", valueField = "name")
    private Map<String, String> stageThreeEquippedItems;
    @JsonProperty("stage_three_name")
    @VarChar(length = 40)
    private String stageThreeName;
    @JsonProperty("stage_four_actions")
    private List<ActionChit> stageFourActions;
    /**
     * the reference ids of all items equipped by the {@link IoPcData}, indexed
     * by equipment slot.
     */
    @JsonProperty("stage_four_equipped_items")
    @MapForeignKey(keyColumnType = "character varying(40)", keyField = "code",
            keyTargetClass = "EquipmentSlot",
            valueColumnType = "character varying(40)",
            valueTargetClass = "IoItemData", valueField = "name")
    private Map<String, String> stageFourEquippedItems;
    @JsonProperty("starting_location")
    @VarChar(length=20)
    String startingLocation;
    @CanBeNull
    List<Group> unfriendly;
    /** the npc's vulnerability. */
    @CanBeNull
    private Vulnerability vulnerability;
}
