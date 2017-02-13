/**
 *
 */
package com.dalonedrau.entities.ll;

import java.util.List;
import java.util.Map;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.MapForeignKey;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * @author drau
 */
public class IoPcData {
    /** the set of attributes defining the PC. */
    @MapForeignKey(keyField = "code", keyTargetClass = "Attribute",
            keyColumnType = "character varying(3)",
            valueColumnType = "smallint")
    private Map<String, Integer> attributes;
    /** the number of bags the player has. */
    private int bags;
    /**
     * the reference ids of all items equipped by the {@link IoPcData}, indexed
     * by equipment slot.
     */
    @JsonProperty("equipped_items")
    private List<Integer> equippedItems;
    /** any flags being applied to the {@link IoPcData}. */
    @CanBeNull
    private long flags;
    /** the {@link IoPcData}'s gender. */
    private Gender gender;
    /** the character's gold. */
    private float gold;
    /** the list of groups the item belongs to. */
    private List<Group> groups;
    /** interface flags. */
    @CanBeNull
    private int interfaceFlags;
    /** the name of the internal script used. */
    @CanBeNull
    @JsonProperty("internal_script")
    private String internalScript;
    /** the player's key ring. */
    @VarChar(length = 40)
    private List<String> keyring;
    /** the {@link IoPcData}'s level. */
    private final int level = 0;
    @CanBeNull
    private String module;
    /** the {@link IoPcData}'s name. */
    @VarChar(length = 40)
    private String name;
    /** the {@link IoPcData}'s experience points. */
    private long xp;
}
