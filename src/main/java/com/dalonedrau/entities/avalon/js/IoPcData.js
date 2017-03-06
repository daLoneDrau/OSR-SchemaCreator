[{
	"name": "Amazon",
	"gender": {
		"name": "Female"
	},
	"evaluation": "The Amazon is a skilled warrior and soldier, with excellent speed and fair strength. She is deadliest against Medium and Heavy opponents. She should avoid or run from Tremendous and armored Heavy monsters, who are too dangerous for her to handle even if she obtains heavier equipment.",
	"vulnerability": {
		"code": "M"
	},
	"advantage_one": {
		"name": "AIM"
	},
	"advantage_two": {
		"name": "STAMINA"
	},
	"starting_location": "Inn",
	"friendly": [{
		"name": "LANCERS"
	}, {
		"name": "PATROL"
	}, {
		"name": "SHAMAN"
	}],
	"unfriendly": [{
		"name": "COMPANY"
	}, {
		"name": "BASHKARS"
	}],
	"stage_one_name": "Scout",
	"stage_one_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Light Bow"
	},
	"stage_one_actions": [{
		"code": "Move M4"
	}, {
		"code": "Move M3*"
	}, {
		"code": "Fight L4"
	}],
	"stage_two_name": "Warrior",
	"stage_two_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Spear",
		"EQUIP_SLOT_HELMET": "Helmet",
		"EQUIP_SLOT_TORSO": "Breastplate",
		"EQUIP_SLOT_SHIELD": "Shield"
	},
	"stage_two_actions": [{
		"code": "Move M4"
	}, {
		"code": "Fight M5"
	}, {
		"code": "Fight M4*"
	}],
	"stage_three_name": "Champion",
	"stage_three_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Spear",
		"EQUIP_SLOT_HELMET": "Helmet",
		"EQUIP_SLOT_TORSO": "Breastplate",
		"EQUIP_SLOT_SHIELD": "Shield"
	},
	"stage_three_actions": [{
		"code": "Move M3*"
	}, {
		"code": "Fight M3**"
	}, {
		"code": "Fight H4**"
	}],
	"stage_four_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Short Sword",
		"EQUIP_SLOT_HELMET": "Helmet",
		"EQUIP_SLOT_TORSO": "Breastplate",
		"EQUIP_SLOT_SHIELD": "Shield"
	},
	"stage_four_actions": [{
		"code": "Fight M4*"
	}, {
		"code": "Fight M3**"
	}, {
		"code": "Move M3*"
	}]
}, {
	"name": "Berserker",
	"gender": {
		"name": "Male"
	},
	"evaluation": "The Berserker is a powerful fighting man with the strength to dispatch the largest monsters and humans and the speed to outmaneuver them. He is not fast enough to escape faster opponents, so against them he must rely on going berserk to survive and on his robust health to help him recover from his wounds.",
	"vulnerability": {
		"code": "H"
	},
	"advantage_one": {
		"name": "ROBUST"
	},
	"advantage_two": {
		"name": "BERSERK"
	},
	"starting_location": "Inn",
	"friendly": [{
		"name": "ROGUES"
	}, {
		"name": "LANCERS"
	}, {
		"name": "SHAMAN"
	}],
	"unfriendly": [{
		"name": "PATROL"
	}, {
		"name": "GUARD"
	}],
	"stage_one_name": "Youth",
	"stage_one_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Axe",
		"EQUIP_SLOT_HELMET": "Helmet"
	},
	"stage_one_actions": [{
		"code": "Move H6"
	}, {
		"code": "Move H5*"
	}, {
		"code": "Fight H4*"
	}],
	"stage_two_name": "Raider",
	"stage_two_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Axe",
		"EQUIP_SLOT_HELMET": "Helmet",
		"EQUIP_SLOT_SHIELD": "Shield"
	},
	"stage_two_actions": [{
		"code": "Move T6*"
	}, {
		"code": "Move H4**"
	}, {
		"code": "Fight H5"
	}],
	"stage_three_name": "Viking",
	"stage_three_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Axe",
		"EQUIP_SLOT_HELMET": "Helmet",
		"EQUIP_SLOT_TORSO": "Breastplate",
		"EQUIP_SLOT_SHIELD": "Shield"
	},
	"stage_three_actions": [{
		"code": "Move H4**"
	}, {
		"code": "Fight T6*"
	}, {
		"code": "Fight T4**"
	}],
	"stage_four_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Great Axe",
		"EQUIP_SLOT_HELMET": "Helmet"
	},
	"stage_four_actions": [{
		"code": "Berserk T4**"
	}, {
		"code": "Fight T5*"
	}, {
		"code": "Fight T4**"
	}]
}, {
	"name": "Black Knight",
	"gender": {
		"name": "Male"
	},
	"evaluation": "The Black Knight is a deadly and feared veteran of many battlefields. He is at his best against humans. He is too weak to dispatch Tremendous monsters until he gets a heavier weapon.",
	"vulnerability": {
		"code": "M"
	},
	"advantage_one": {
		"name": "AIM"
	},
	"advantage_two": {
		"name": "FEAR"
	},
	"starting_location": "Inn",
	"ally": [{
		"name": "COMPANY"
	}],
	"friendly": [{
		"name": "SOLDIERS"
	}, {
		"name": "CRONE"
	}],
	"unfriendly": [{
		"name": "LANCERS"
	}],
	"enemy": [{
		"name": "GUARD"
	}],
	"stage_one_name": "Spearman",
	"stage_one_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Spear",
		"EQUIP_SLOT_HELMET": "Helmet",
		"EQUIP_SLOT_TORSO": "Breastplate"
	},
	"stage_one_actions": [{
		"code": "Move M5"
	}, {
		"code": "Move H5*"
	}, {
		"code": "Fight H5*"
	}],
	"stage_two_name": "Mercenary",
	"stage_two_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Crossbow",
		"EQUIP_SLOT_HELMET": "Helmet",
		"EQUIP_SLOT_TORSO": "Breastplate"
	},
	"stage_two_actions": [{
		"code": "Move H6"
	}, {
		"code": "Move M4*"
	}, {
		"code": "Fight H6"
	}],
	"stage_three_name": "Heavy Footman",
	"stage_three_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Mace",
		"EQUIP_SLOT_HELMET": "Helmet",
		"EQUIP_SLOT_TORSO": "Breastplate",
		"EQUIP_SLOT_SHIELD": "Shield"
	},
	"stage_three_actions": [{
		"code": "Fight M4*"
	}, {
		"code": "Fight M4*"
	}, {
		"code": "Fight M5"
	}],
	"stage_four_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Mace",
		"EQUIP_SLOT_ARMOR": "Suit of Armor",
		"EQUIP_SLOT_SHIELD": "Shield"
	},
	"stage_four_actions": [{
		"code": "Move H4**"
	}, {
		"code": "Fight H4**"
	}, {
		"code": "Fight M3**"
	}]
}]