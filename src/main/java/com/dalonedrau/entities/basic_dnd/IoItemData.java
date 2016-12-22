package com.dalonedrau.entities.basic_dnd;

import java.util.List;
import java.util.Map;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.MapForeignKey;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class IoItemData {
	/** the current number in an inventory slot. */
	private int									count;
	/** the item's description. */
	private String								description;
	/** dunno? */
	@CanBeNull
	private int									foodValue;
	/** the list of groups the item belongs to. */
	private List<Group> groups;
	/** the name of the internal script used. */
	@CanBeNull
	private String internalScript;
	/** the item's name. */
	@VarChar(length = 30)
	private String								itemName;
	/** flag indicating the left ring needs to be replaced. */
	@CanBeNull
	private boolean								leftRing;
	/** the item's light value. */
	@CanBeNull
	private int									lightValue;
	/** the maximum number of the item the player can own. */
	private int									maxOwned;
	/** the set of element modifiers. */
	@MapForeignKey(keyColumnType = "character varying(40)", keyField = "code",
	keyTargetClass = "EquipmentElementType",
	valueColumnType = "character varying(20)",
	valueTargetClass = "EquipmentItemModifier",
	valueField = "code")
	private Map<String, String>	modifiers;
	/** the item's price. */
	private float								price;
	/** the type of ring the item is. */
	private int ringType;
	/** the amount of the item that can be stacked in one inventory slot. */
	private int									stackSize;
	/** dunno? */
	@CanBeNull
	private int									stealValue;
	/** the list of object types. */
	private List<ObjectType>					types;
	/** the item's weight. */
	private float								weight;
}
