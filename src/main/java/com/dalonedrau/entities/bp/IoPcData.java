/**
 *
 */
package com.dalonedrau.entities.bp;

import java.util.List;
import java.util.Map;

import com.dalonedrau.schemacreator.Annotations.MapForeignKey;
import com.dalonedrau.schemacreator.Annotations.VarChar;

/**
 * @author drau
 */
public final class IoPcData {
    /** the set of attributes defining the PC. */
    @MapForeignKey(keyColumnType = "character varying(3)", keyField = "code",
            keyTargetClass = "Attribute", valueColumnType = "smallint")
    private Map<String, Integer> attributes;
    /** the number of bags the player has. */
    private int bags;
    /**
     * the reference ids of all items equipped by the {@link IoPcData}, indexed
     * by equipment slot.
     */
    @MapForeignKey(keyColumnType = "character varying(40)", keyField = "name",
            keyTargetClass = "EquipmentSlot", valueColumnType = "smallint",
            valueTargetClass = "IoItemData", valueField = "io_item_data_id")
    private Map<String, Integer> equippedItems;
    /** the {@link IoPcData}'s gender. */
    private Gender gender;
    /** the character's gold. */
    private float gold;
    /** interface flags. */
    private int interfaceFlags;
    /** the player's key ring. */
    @VarChar(length = 40)
    private List<String> keyring;
    /** the {@link IoPcData}'s level. */
    private final int level = 0;
    /** the {@link IoPcData}'s name. */
    @VarChar(length = 40)
    private String name;
    /** the {@link IoPcData}'s experience points. */
    private int xp;
}
