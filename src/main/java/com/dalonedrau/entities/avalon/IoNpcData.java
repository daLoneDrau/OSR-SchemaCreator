package com.dalonedrau.entities.avalon;

import java.util.List;
import java.util.Map;

import com.dalonedrau.entities.ll.IoItemData;
import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.MapForeignKey;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

public class IoNpcData {
    @JsonProperty("alerted_attack_speed")
    private int alertedAttackSpeed;
    @CanBeNull
    @JsonProperty("alerted_attack_stars")
    private int alertedAttackStars;
    @JsonProperty("alerted_attack_weight")
    private Vulnerability alertedAttackWeight;
    @JsonProperty("alerted_move")
    private int alertedMove;
    /** the set of element modifiers. */
    @JsonProperty("equipped_items")
    @MapForeignKey(keyColumnType = "character varying(40)", keyField = "code",
            keyTargetClass = "EquipmentSlot",
            valueColumnType = "character varying(40)",
            valueTargetClass = "IoItemData", valueField = "name")
    private Map<String, String> equippedItems;
    @CanBeNull
    @JsonProperty("fame_bounty")
    private int fameBounty;
    /** the {@link IoNpcData}'s gender. */
    @CanBeNull
    private Gender gender;
    @CanBeNull
    @JsonProperty("gold_bounty")
    private int goldBounty;
    /** the list of groups the item belongs to. */
    private List<Group> groups;
    /** the name of the internal script used. */
    @CanBeNull
    @JsonProperty("internal_script")
    private String internalScript;
    @JsonProperty("inventory_items")
    private List<IoItemData> inventoryItems;
    /** the npc's move strength. */
    @CanBeNull
    @JsonProperty("move_strength")
    private Vulnerability moveStrength;
    /** the {@link IoNpcData}'s name. */
    @Unique
    @VarChar(length = 50)
    private String name;
    @CanBeNull
    @JsonProperty("natural_weapon_length")
    private int naturalWeaponLength;
    @CanBeNull
    @JsonProperty("natural_weapon_type")
    private AttackType naturalWeaponType;
    private int notoriety;
    /** all NPC flags. */
    @CanBeNull
    private long npcFlags;
    /** the {@link IoNpcData}'s title. */
    @VarChar(length = 50)
    private String title;
    @JsonProperty("unalerted_attack_speed")
    private int unalertedAttackSpeed;
    @CanBeNull
    @JsonProperty("unalerted_attack_spell")
    private MagicType unalertedAttackSpell;
    @CanBeNull
    @JsonProperty("unalerted_attack_stars")
    private int unalertedAttackStars;
    @CanBeNull
    @JsonProperty("unalerted_attack_weight")
    private Vulnerability unalertedAttackWeight;
    @JsonProperty("unalerted_move")
    private int unalertedMove;
    /** the npc's vulnerability. */
    @CanBeNull
    private Vulnerability vulnerability;
    @CanBeNull
    private int wage;
    /** the npc's weight. */
    @CanBeNull
    @JsonProperty("weight")
    private Vulnerability weight;
}
