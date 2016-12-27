/**
 *
 */
package com.dalonedrau.entities.crypts_things;

import java.util.List;
import java.util.Map;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.MapForeignKey;
import com.dalonedrau.schemacreator.Annotations.VarChar;

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
    private int interfaceFlags;
    /** the name of the internal script used. */
    @CanBeNull
    private String internalScript;
    /** the player's key ring. */
    @VarChar(length = 40)
    private List<String> keyring;
    /** the {@link IoPcData}'s level. */
    private int level = 0;
    /** the list of groups the item belongs to. */
    private List<LifeEvent> lifeEvents;
    /** the {@link IoPcData}'s name. */
    @VarChar(length = 40)
    private List<String> name;
    /** the {@link IoPcData}'s script. */
    @MapForeignKey(keyColumnType = "character varying(40)", keyField = "code",
            keyTargetClass = "Event", valueColumnType = "character varying(50)",
            valueTargetClass = "ScriptBundle", valueField = "name")
    private Map<String, String> scriptedEvents;
    /** the {@link IoPcData}'s experience points. */
    private long xp;
}
