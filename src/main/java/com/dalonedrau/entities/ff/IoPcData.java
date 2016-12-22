package com.dalonedrau.entities.ff;

import java.util.List;
import java.util.Map;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.MapForeignKey;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class IoPcData {
	/** the set of attributes defining the PC. */
	@MapForeignKey(keyField = "code", keyTargetClass = "Attribute",
			keyColumnType = "character varying(3)",
			valueColumnType = "smallint")
	private Map<String, Integer>	attributes;
	/**
	 * the reference ids of all items equipped by the {@link IoPcData}, indexed
	 * by equipment slot.
	 */
	private List<Integer>			equippedItems;
	/** any flags being applied to the {@link IoPcData}. */
	@CanBeNull
	private long					flags;
	/** the {@link IoPcData}'s gender. */
	private Gender					gender;
	/** the character's gold. */
	@CanBeNull
	private float					gold;
	/** interface flags. */
	@CanBeNull
	private int						interfaceFlags;
	/** the name of the internal script used. */
	@CanBeNull
	private String internalScript;
	/** the player's key ring. */
	@VarChar(length = 20)
	private List<String>			keyring;
	/** the {@link IoPcData}'s level. */
	private int						level;
	/** the {@link IoPcData}'s name. */
	@VarChar(length = 50)
	private String					name;
	/** the {@link IoPcData}'s Profession. */
	private int						profession;
	/** the {@link IoPcData}'s Race. */
	private int						race;
	/** the {@link IoPcData}'s script. */
	@MapForeignKey(keyColumnType = "character varying(20)", keyField = "code",
			keyTargetClass = "Event", valueColumnType = "character varying(50)",
			valueTargetClass = "ScriptBundle", valueField = "name")
	private Map<String, String>		scriptedEvents;
	/** the {@link IoPcData}'s experience points. */
	private long					xp;
}
