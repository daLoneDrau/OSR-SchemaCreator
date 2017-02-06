package com.dalonedrau.entities.ll;

import java.util.List;
import java.util.Map;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.ForeignKey;
import com.dalonedrau.schemacreator.Annotations.MapForeignKey;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class IoNpcData {
	/** the set of attributes defining the NPC. */
	@MapForeignKey(keyColumnType = "character varying(3)", keyField = "code", keyTargetClass = "Attribute", valueColumnType = "smallint")
	private Map<String, Integer>	attributes;
	@CanBeNull
	long							behavior;
	@CanBeNull
	float							behaviorParam;
	@CanBeNull
	float							climbCount;
	@CanBeNull
	long							collidState;
	@CanBeNull
	long							collidTime;
	@CanBeNull
	float							critical;
	@CanBeNull
	boolean							cut;
	@CanBeNull
	int								cuts;
	@CanBeNull
	float							damages;
	/** the set of element modifiers. */
	@MapForeignKey(keyColumnType = "character varying(40)", keyField = "code", keyTargetClass = "EquipmentSlot", valueColumnType = "character varying(40)", valueTargetClass = "IoItemData", valueField = "name")
	private Map<String, String>		equippedItems;
	/** the {@link IoNpcData}'s gender. */
	private Gender					gender;
	/** the name of the internal script used. */
	@CanBeNull
	private String					internalScript;
	private List<IoItemData>		inventoryItems;
	int								level;
	@CanBeNull
	float							life;
	@CanBeNull
	float							mana;
	@CanBeNull
	float							maxlife;
	@CanBeNull
	float							maxmana;
	@CanBeNull
	String							module;
	/** the {@link IoNpcData}'s name. */
	@VarChar(length = 50)
	private String					name;
	/** all NPC flags. */
	@CanBeNull
	private long					npcFlags;
	/** the {@link IoNpcData}'s script. */
	@MapForeignKey(keyColumnType = "character varying(20)", keyField = "code", keyTargetClass = "Event", valueColumnType = "character varying(50)", valueTargetClass = "ScriptBundle", valueField = "name")
	private Map<String, String>		scriptedEvents;
	/** the {@link IoNpcData}'s title. */
	@VarChar(length = 50)
	private String					title;
	@ForeignKey(clazz = IoItemData.class, fieldName = "name")
	private String					weapon;
	@CanBeNull
	int								xpvalue;
}
