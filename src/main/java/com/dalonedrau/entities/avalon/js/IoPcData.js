[{
	"name": "Amazon",
	"glyph": "icon-swordwoman",
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
	"starting_location": ["Inn"],
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
		"action": {
			"code": "Move M4"
		},
		"quantity": 1,
		"code": "1 Move M4"
	}, {
		"action": {
			"code": "Move M3*"
		},
		"quantity": 1,
		"code": "1 Move M3*"
	}, {
		"action": {
			"code": "Fight L4"
		},
		"quantity": 1,
		"code": "1 Fight L4"
	}],
	"stage_two_name": "Warrior",
	"stage_two_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Spear",
		"EQUIP_SLOT_HELMET": "Helmet",
		"EQUIP_SLOT_TORSO": "Breastplate",
		"EQUIP_SLOT_SHIELD": "Shield"
	},
	"stage_two_actions": [{
		"action": {
			"code": "Move M4"
		},
		"quantity": 1,
		"code": "1 Move M4"
	}, {
		"action": {
			"code": "Fight M5"
		},
		"quantity": 1,
		"code": "1 Fight M5"
	}, {
		"action": {
			"code": "Fight M4*"
		},
		"quantity": 1,
		"code": "1 Fight M4*"
	}],
	"stage_three_name": "Champion",
	"stage_three_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Spear",
		"EQUIP_SLOT_HELMET": "Helmet",
		"EQUIP_SLOT_TORSO": "Breastplate",
		"EQUIP_SLOT_SHIELD": "Shield"
	},
	"stage_three_actions": [{
		"action": {
			"code": "Move M3*"
		},
		"quantity": 1,
		"code": "1 Move M3*"
	}, {
		"action": {
			"code": "Fight M3**"
		},
		"quantity": 1,
		"code": "1 Fight M3**"
	}, {
		"action": {
			"code": "Fight H4**"
		},
		"quantity": 1,
		"code": "1 Fight H4**"
	}],
	"stage_four_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Short Sword",
		"EQUIP_SLOT_HELMET": "Helmet",
		"EQUIP_SLOT_TORSO": "Breastplate",
		"EQUIP_SLOT_SHIELD": "Shield"
	},
	"stage_four_actions": [{
		"action": {
			"code": "Fight M4*"
		},
		"quantity": 1,
		"code": "1 Fight M4*"
	}, {
		"action": {
			"code": "Fight M3**"
		},
		"quantity": 1,
		"code": "1 Fight M3**"
	}, {
		"action": {
			"code": "Move M3*"
		},
		"quantity": 1,
		"code": "1 Move M3*"
	}]
}, {
	"name": "Berserker",
	"glyph": "icon-viking-head",
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
	"starting_location": ["Inn"],
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
		"action": {
			"code": "Move H6"
		},
		"quantity": 1,
		"code": "1 Move H6"
	}, {
		"action": {
			"code": "Move H5*"
		},
		"quantity": 1,
		"code": "1 Move H5*"
	}, {
		"action": {
			"code": "Fight H4*"
		},
		"quantity": 1,
		"code": "1 Fight H4*"
	}],
	"stage_two_name": "Raider",
	"stage_two_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Axe",
		"EQUIP_SLOT_HELMET": "Helmet",
		"EQUIP_SLOT_SHIELD": "Shield"
	},
	"stage_two_actions": [{
		"action": {
			"code": "Move T6*"
		},
		"quantity": 1,
		"code": "1 Move T6*"
	}, {
		"action": {
			"code": "Move H4**"
		},
		"quantity": 1,
		"code": "1 Move H4**"
	}, {
		"action": {
			"code": "Fight H5"
		},
		"quantity": 1,
		"code": "1 Fight H5"
	}],
	"stage_three_name": "Viking",
	"stage_three_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Axe",
		"EQUIP_SLOT_HELMET": "Helmet",
		"EQUIP_SLOT_TORSO": "Breastplate",
		"EQUIP_SLOT_SHIELD": "Shield"
	},
	"stage_three_actions": [{
		"action": {
			"code": "Move H4**"
		},
		"quantity": 1,
		"code": "1 Move H4**"
	}, {
		"action": {
			"code": "Fight T6*"
		},
		"quantity": 1,
		"code": "1 Fight T6*"
	}, {
		"action": {
			"code": "Fight T4**"
		},
		"quantity": 1,
		"code": "1 Fight T4**"
	}],
	"stage_four_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Great Axe",
		"EQUIP_SLOT_HELMET": "Helmet"
	},
	"stage_four_actions": [{
		"action": {
			"code": "Berserk T4**"
		},
		"quantity": 1,
		"code": "1 Berserk T4**"
	}, {
		"action": {
			"code": "Fight T5*"
		},
		"quantity": 1,
		"code": "1 Fight T5*"
	}, {
		"action": {
			"code": "Fight T4**"
		},
		"quantity": 1,
		"code": "1 Fight T4**"
	}]
}, {
	"name": "Black Knight",
	"glyph": "icon-black-knight-helm",
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
	"starting_location": ["Inn"],
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
		"action": {
			"code": "Move M5"
		},
		"quantity": 1,
		"code": "1 Move M5"
	}, {
		"action": {
			"code": "Move H5*"
		},
		"quantity": 1,
		"code": "1 Move H5*"
	}, {
		"action": {
			"code": "Fight H5*"
		},
		"quantity": 1,
		"code": "1 Fight H5*"
	}],
	"stage_two_name": "Mercenary",
	"stage_two_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Crossbow",
		"EQUIP_SLOT_HELMET": "Helmet",
		"EQUIP_SLOT_TORSO": "Breastplate"
	},
	"stage_two_actions": [{
		"action": {
			"code": "Move H6"
		},
		"quantity": 1,
		"code": "1 Move H6"
	}, {
		"action": {
			"code": "Move M4*"
		},
		"quantity": 1,
		"code": "1 Move M4*"
	}, {
		"action": {
			"code": "Fight H6"
		},
		"quantity": 1,
		"code": "1 Fight H6"
	}],
	"stage_three_name": "Heavy Footman",
	"stage_three_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Mace",
		"EQUIP_SLOT_HELMET": "Helmet",
		"EQUIP_SLOT_TORSO": "Breastplate",
		"EQUIP_SLOT_SHIELD": "Shield"
	},
	"stage_three_actions": [{
		"action": {
			"code": "Fight M4*"
		},
		"quantity": 2,
		"code": "2 Fight M4*"
	}, {
		"action": {
			"code": "Fight M5"
		},
		"quantity": 1,
		"code": "1 Fight M5"
	}],
	"stage_four_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Mace",
		"EQUIP_SLOT_ARMOR": "Suit of Armor",
		"EQUIP_SLOT_SHIELD": "Shield"
	},
	"stage_four_actions": [{
		"action": {
			"code": "Move H4**"
		},
		"quantity": 1,
		"code": "1 Move H4**"
	}, {
		"action": {
			"code": "Fight H4**"
		},
		"quantity": 1,
		"code": "1 Fight H4**"
	}, {
		"action": {
			"code": "Fight M3**"
		},
		"quantity": 1,
		"code": "1 Fight M3**"
	}]
}, {
	"name": "Captain",
	"glyph": "icon-swordman",
	"gender": {
		"name": "Male"
	},
	"evaluation": "The Captain is a renowned hero of many wars. His strength, weapon and armor make him dangerous when facing Medium or Heavy opponents, but he needs heavier equipment to deal with heavily armored foes. He is not really strong enough to face Tremendous foes.",
	"vulnerability": {
		"code": "M"
	},
	"advantage_one": {
		"name": "AIM"
	},
	"advantage_two": {
		"name": "REPUTATION"
	},
	"starting_location": ["Inn", "House", "Guardhouse"],
	"friendly": [{
		"name": "PATROL"
	}, {
		"name": "SOLDIERS"
	}, {
		"name": "GUARD"
	}, {
		"name": "SCHOLAR"
	}],
	"unfriendly": [{
		"name": "WOODFOLK"
	}],
	"enemy": [{
		"name": "BASHKARS"
	}],
	"stage_one_name": "Spearman",
	"stage_one_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Spear",
		"EQUIP_SLOT_SHIELD": "Shield"
	},
	"stage_one_actions": [{
		"action": {
			"code": "Move M4*"
		},
		"quantity": 1,
		"code": "1 Move M4*"
	}, {
		"action": {
			"code": "Move M5"
		},
		"quantity": 1,
		"code": "1 Move M5"
	}, {
		"action": {
			"code": "Fight H5*"
		},
		"quantity": 1,
		"code": "1 Fight H5*"
	}],
	"stage_two_name": "Soldier",
	"stage_two_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Short Sword",
		"EQUIP_SLOT_HELMET": "Helmet",
		"EQUIP_SLOT_TORSO": "Breastplate",
		"EQUIP_SLOT_SHIELD": "Shield"
	},
	"stage_two_actions": [{
		"action": {
			"code": "Fight M5"
		},
		"quantity": 1,
		"code": "1 Fight M5"
	}, {
		"action": {
			"code": "Fight M3**"
		},
		"quantity": 1,
		"code": "1 Fight M3**"
	}, {
		"action": {
			"code": "Move M3**"
		},
		"quantity": 1,
		"code": "1 Move M3**"
	}],
	"stage_three_name": "Lieutenant",
	"stage_three_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Short Sword",
		"EQUIP_SLOT_HELMET": "Helmet",
		"EQUIP_SLOT_TORSO": "Breastplate",
		"EQUIP_SLOT_SHIELD": "Shield"
	},
	"stage_three_actions": [{
		"action": {
			"code": "Move M4*"
		},
		"quantity": 1,
		"code": "1 Move M4*"
	}, {
		"action": {
			"code": "Fight H5*"
		},
		"quantity": 1,
		"code": "1 Fight H5*"
	}, {
		"action": {
			"code": "Fight M4*"
		},
		"quantity": 1,
		"code": "1 Fight M4*"
	}],
	"stage_four_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Short Sword",
		"EQUIP_SLOT_HELMET": "Helmet",
		"EQUIP_SLOT_TORSO": "Breastplate",
		"EQUIP_SLOT_SHIELD": "Shield"
	},
	"stage_four_actions": [{
		"action": {
			"code": "Move M4*"
		},
		"quantity": 1,
		"code": "1 Move M4*"
	}, {
		"action": {
			"code": "Fight H6"
		},
		"quantity": 1,
		"code": "1 Fight H6"
	}, {
		"action": {
			"code": "Fight M4*"
		},
		"quantity": 1,
		"code": "1 Fight M4*"
	}]
}, {
	"name": "Druid",
	"glyph": "icon-holy-oak",
	"gender": {
		"name": "Male"
	},
	"evaluation": "The Druid is an elusive magician at peace with nature. Since he cannot deal with most opponents even if he gets a weapon, he must operate alone, avoiding and hiding from monsters and running from them at need. He needs to win without combat, if possible.",
	"vulnerability": {
		"code": "L"
	},
	"advantage_one": {
		"name": "CONCEALMENT"
	},
	"advantage_two": {
		"name": "PEACE WITH NATURE"
	},
	"starting_location": ["Inn"],
	"ally": [{
		"name": "BASHKARS"
	}],
	"friendly": [{
		"name": "LANCERS"
	}],
	"unfriendly": [{
		"name": "ORDER"
	}, {
		"name": "SHAMAN"
	}],
	"enemy": [{
		"name": "WOODFOLK"
	}],
	"stage_one_name": "Herbalist",
	"stage_one_equipped_items": {},
	"stage_one_actions": [{
		"action": {
			"code": "Move L3*"
		},
		"quantity": 1,
		"code": "1 Move L3*"
	}, {
		"action": {
			"code": "Move L4"
		},
		"quantity": 1,
		"code": "1 Move L4"
	}, {
		"action": {
			"code": "Fight L3*"
		},
		"quantity": 1,
		"code": "1 Fight L3*"
	}],
	"stage_two_name": "Animalist",
	"stage_two_equipped_items": {},
	"stage_two_actions": [{
		"action": {
			"code": "Fight L4"
		},
		"quantity": 1,
		"code": "1 Fight L4"
	}, {
		"action": {
			"code": "Move L2**"
		},
		"quantity": 1,
		"code": "1 Move L2**"
	}, {
		"action": {
			"code": "Fight L2**"
		},
		"quantity": 1,
		"code": "1 Fight L2**"
	}],
	"stage_three_name": "Soothsayer",
	"stage_three_equipped_items": {},
	"stage_three_spells": 1,
	"stage_three_actions": [{
		"action": {
			"code": "Magic II3*"
		},
		"quantity": 1,
		"code": "1 Magic II3*"
	}, {
		"action": {
			"code": "Magic VIII4*"
		},
		"quantity": 1,
		"code": "1 Magic VIII4*"
	}, {
		"action": {
			"code": "Magic VIII3*"
		},
		"quantity": 1,
		"code": "1 Magic VIII3*"
	}],
	"stage_four_equipped_items": {},
	"stage_four_spells": 2,
	"stage_four_actions": [{
		"action": {
			"code": "Magic II2**"
		},
		"quantity": 1,
		"code": "1 Magic II2**"
	}, {
		"action": {
			"code": "Magic VIII3*"
		},
		"quantity": 1,
		"code": "1 Magic VIII3*"
	}, {
		"action": {
			"code": "Magic VIII2**"
		},
		"quantity": 1,
		"code": "1 Magic VIII2**"
	}]
}, {
	"name": "Dwarf",
	"glyph": "icon-dwarf-face",
	"gender": {
		"name": "Male"
	},
	"evaluation": "The Dwarf is a slow and powerful fighter who is at his best in the caves, where he is respected as a master of searching, hiding and fighting the monsters that live there. Outside of the caves he is slow and clumsy. In battle, his ability to duck allows him to swiftly escape enemy blows and out-maneuver the largest and slowest denizens. He must be careful to avoid the fast opponents who live outside of the caves, however, and he is extremely vulnerable to attacks made by other characters, who can always Smash him as he ducks. Since he relies heavily on the ducking maneuver, his helmet is a critical part of his defenses.",
	"vulnerability": {
		"code": "M"
	},
	"advantage_one": {
		"name": "SHORT LEGS"
	},
	"advantage_two": {
		"name": "CAVE KNOWLEDGE"
	},
	"starting_location": ["Inn", "Guardhouse"],
	"friendly": [{
		"name": "COMPANY"
	}, {
		"name": "GUARD"
	}, {
		"name": "SCHOLAR"
	}],
	"unfriendly": [{
		"name": "WOODFOLK"
	}, {
		"name": "BASHKARS"
	}],
	"stage_one_name": "Youngster",
	"stage_one_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Axe",
		"EQUIP_SLOT_HELMET": "Helmet"
	},
	"stage_one_actions": [{
		"action": {
			"code": "Duck T3*"
		},
		"quantity": 1,
		"code": "1 Duck T3*"
	}, {
		"action": {
			"code": "Move H6"
		},
		"quantity": 1,
		"code": "1 Move H6"
	}, {
		"action": {
			"code": "Fight H5*"
		},
		"quantity": 1,
		"code": "1 Fight H5*"
	}],
	"stage_two_name": "Smith",
	"stage_two_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Axe",
		"EQUIP_SLOT_HELMET": "Helmet"
	},
	"stage_two_actions": [{
		"action": {
			"code": "Move T6*"
		},
		"quantity": 1,
		"code": "1 Move T6*"
	}, {
		"action": {
			"code": "Fight H6"
		},
		"quantity": 1,
		"code": "1 Fight H6"
	}, {
		"action": {
			"code": "Fight H4**"
		},
		"quantity": 1,
		"code": "1 Fight H4**"
	}],
	"stage_three_name": "Warrior",
	"stage_three_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Great Axe",
		"EQUIP_SLOT_HELMET": "Helmet"
	},
	"stage_three_actions": [{
		"action": {
			"code": "Move H5*"
		},
		"quantity": 1,
		"code": "1 Move H5*"
	}, {
		"action": {
			"code": "Fight T6*"
		},
		"quantity": 1,
		"code": "1 Fight T6*"
	}, {
		"action": {
			"code": "Fight H4**"
		},
		"quantity": 1,
		"code": "1 Fight H4**"
	}],
	"stage_four_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Great Axe",
		"EQUIP_SLOT_HELMET": "Helmet"
	},
	"stage_four_actions": [{
		"action": {
			"code": "Move T5**"
		},
		"quantity": 1,
		"code": "1 Move T5**"
	}, {
		"action": {
			"code": "Fight T5**"
		},
		"quantity": 2,
		"code": "2 Fight T5**"
	}]
}, {
	"name": "Elf",
	"glyph": "icon-woman-elf-face",
	"gender": {
		"name": "Male"
	},
	"evaluation": "The Elf is an elusive and graceful warrior and magician. With his Light bow, he is a deadly match for anything less than an armored Heavy foe, and with a Medium bow he can face any opponent. He has the speed to escape numerous opponents.",
	"vulnerability": {
		"code": "L"
	},
	"advantage_one": {
		"name": "ELUSIVENESS"
	},
	"advantage_two": {
		"name": "ARCHER"
	},
	"starting_location": ["Inn"],
	"ally": [{
		"name": "WOODFOLK"
	}],
	"friendly": [{
		"name": "BASHKARS"
	}],
	"unfriendly": [{
		"name": "ORDER"
	}, {
		"name": "SCHOLAR"
	}],
	"enemy": [{
		"name": "LANCERS"
	}],
	"stage_one_name": "Stripling",
	"stage_one_equipped_items": {},
	"stage_one_spells": 1,
	"stage_one_actions": [{
		"action": {
			"code": "Magic III3*"
		},
		"quantity": 1,
		"code": "1 Magic III3*"
	}, {
		"action": {
			"code": "Magic III4*"
		},
		"quantity": 1,
		"code": "1 Magic III4*"
	}, {
		"action": {
			"code": "Magic VII4*"
		},
		"quantity": 1,
		"code": "1 Magic VII4*"
	}],
	"stage_two_name": "Faerie",
	"stage_two_equipped_items": {},
	"stage_two_spells": 2,
	"stage_two_actions": [{
		"action": {
			"code": "Magic III2*"
		},
		"quantity": 1,
		"code": "1 Magic III2*"
	}, {
		"action": {
			"code": "Magic III3*"
		},
		"quantity": 1,
		"code": "1 Magic III3*"
	}, {
		"action": {
			"code": "Magic VII3*"
		},
		"quantity": 1,
		"code": "1 Magic VII3*"
	}],
	"stage_three_name": "Hunter",
	"stage_three_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Light Bow"
	},
	"stage_three_spells": 2,
	"stage_three_actions": [{
		"action": {
			"code": "Move L2*"
		},
		"quantity": 1,
		"code": "1 Move L2*"
	}, {
		"action": {
			"code": "Move L3*"
		},
		"quantity": 1,
		"code": "1 Move L3*"
	}, {
		"action": {
			"code": "Fight L3*"
		},
		"quantity": 1,
		"code": "1 Fight L3*"
	}],
	"stage_four_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Light Bow"
	},
	"stage_four_spells": 2,
	"stage_four_actions": [{
		"action": {
			"code": "Move M4"
		},
		"quantity": 1,
		"code": "1 Move M4"
	}, {
		"action": {
			"code": "Fight M3*"
		},
		"quantity": 1,
		"code": "1 Fight M3*"
	}, {
		"action": {
			"code": "Fight M4"
		},
		"quantity": 1,
		"code": "1 Fight M4"
	}]
}, {
	"name": "Magician",
	"glyph": "icon-magic-swirl",
	"gender": {
		"name": "Male"
	},
	"evaluation": "The Magician knows a little about a lot of different types of magic. He can cast nearly any spell – if he can obtain the right magic color. He must make the best use of the magic color he finds in the game, for he lacks the paired magic chits necessary to enchant tiles. Obviously, he values enchanted cards above all else. When he picks his starting spells, he must be very careful to pick spells that he can cast with the chits he has available.",
	"vulnerability": {
		"code": "L"
	},
	"advantage_one": {
		"name": "MAGICAL PARAPHERNALIA"
	},
	"advantage_two": {
		"name": "KNOWLEDGE"
	},
	"starting_location": ["Inn"],
	"friendly": [{
		"name": "COMPANY"
	}, {
		"name": "ROGUES"
	}],
	"unfriendly": [{
		"name": "PATROL"
	}, {
		"name": "SOLDIERS"
	}, {
		"name": "CRONE"
	}],
	"stage_one_name": "Student",
	"stage_one_equipped_items": {},
	"stage_one_spells": 0,
	"stage_one_actions": [{
		"action": {
			"code": "Move L3*"
		},
		"quantity": 1,
		"code": "1 Move L3*"
	}, {
		"action": {
			"code": "Move L4"
		},
		"quantity": 1,
		"code": "1 Move L4"
	}, {
		"action": {
			"code": "Fight L3*"
		},
		"quantity": 1,
		"code": "1 Fight L3*"
	}],
	"stage_two_name": "Trickster",
	"stage_two_equipped_items": {},
	"stage_two_spells": 1,
	"stage_two_actions": [{
		"action": {
			"code": "Move M4"
		},
		"quantity": 1,
		"code": "1 Move M4"
	}, {
		"action": {
			"code": "Fight L4"
		},
		"quantity": 1,
		"code": "1 Fight L4"
	}, {
		"action": {
			"code": "Magic II3*"
		},
		"quantity": 1,
		"code": "1 Magic II3*"
	}],
	"stage_three_name": "Illusionist",
	"stage_three_equipped_items": {},
	"stage_three_spells": 2,
	"stage_three_actions": [{
		"action": {
			"code": "Magic III3*"
		},
		"quantity": 1,
		"code": "1 Magic III3*"
	}, {
		"action": {
			"code": "Magic VII4**"
		},
		"quantity": 1,
		"code": "1 Magic VII4**"
	}, {
		"action": {
			"code": "Magic VIII4*"
		},
		"quantity": 1,
		"code": "1 Magic VIII4*"
	}],
	"stage_four_equipped_items": {},
	"stage_four_spells": 3,
	"stage_four_actions": [{
		"action": {
			"code": "Magic IV3*"
		},
		"quantity": 1,
		"code": "1 Magic IV3*"
	}, {
		"action": {
			"code": "Magic V4**"
		},
		"quantity": 1,
		"code": "1 Magic V4**"
	}, {
		"action": {
			"code": "Magic VI4*"
		},
		"quantity": 1,
		"code": "1 Magic VI4*"
	}]
}, {
	"name": "Pilgrim",
	"glyph": "icon-monk-face",
	"gender": {
		"name": "Male"
	},
	"evaluation": "The Pilgrim is an adventurous cleric who must rely on his alliance with the Order and his ability to swiftly dispatch Medium opponents. With better weapons and armor, he can defeat heavier opponents, but he is very slow and must choose his battles cautiously. He can wield powerful White magic, and his choice of a starting spell is critical in determining his strategy.",
	"vulnerability": {
		"code": "M"
	},
	"advantage_one": {
		"name": "HEAVENLY PROTECTION"
	},
	"advantage_two": {
		"name": "LORE"
	},
	"starting_location": ["Inn", "Chapel"],
	"ally": [{
		"name": "ORDER"
	}],
	"unfriendly": [{
		"name": "COMPANY"
	}, {
		"name": "BASHKARS"
	}, {
		"name": "CRONE"
	}],
	"stage_one_name": "Acolyte",
	"stage_one_equipped_items": {},
	"stage_one_spells": 0,
	"stage_one_actions": [{
		"action": {
			"code": "Move M4*"
		},
		"quantity": 1,
		"code": "1 Move M4*"
	}, {
		"action": {
			"code": "Move M5"
		},
		"quantity": 1,
		"code": "1 Move M5"
	}, {
		"action": {
			"code": "Fight M3*"
		},
		"quantity": 1,
		"code": "1 Fight M3*"
	}],
	"stage_two_name": "Guardian",
	"stage_two_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Staff"
	},
	"stage_two_spells": 1,
	"stage_two_actions": [{
		"action": {
			"code": "Move H5*"
		},
		"quantity": 1,
		"code": "1 Move H5*"
	}, {
		"action": {
			"code": "Fight M4"
		},
		"quantity": 1,
		"code": "1 Fight M4"
	}, {
		"action": {
			"code": "Fight M2**"
		},
		"quantity": 1,
		"code": "1 Fight M2**"
	}],
	"stage_three_name": "Missionary",
	"stage_three_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Staff"
	},
	"stage_three_spells": 1,
	"stage_three_actions": [{
		"action": {
			"code": "Fight M3*"
		},
		"quantity": 1,
		"code": "1 Fight M3*"
	}, {
		"action": {
			"code": "Magic I6*"
		},
		"quantity": 1,
		"code": "1 Magic I6*"
	}, {
		"action": {
			"code": "Magic VII3*"
		},
		"quantity": 1,
		"code": "1 Magic VII3*"
	}],
	"stage_four_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Staff"
	},
	"stage_four_spells": 1,
	"stage_four_actions": [{
		"action": {
			"code": "Move H6"
		},
		"quantity": 1,
		"code": "1 Move H6"
	}, {
		"action": {
			"code": "Fight H4*"
		},
		"quantity": 1,
		"code": "1 Fight H4*"
	}, {
		"action": {
			"code": "Magic I4*"
		},
		"quantity": 1,
		"code": "1 Magic I4*"
	}]
}, {
	"name": "Sorceror",
	"glyph": "icon-robe",
	"gender": {
		"name": "Male"
	},
	"evaluation": "The Sorceror is the master of elemental magic and conjuring. He is helpless in combat, so he does best when he takes some of the excellent Elemental (IV) Attack spells at the start of the game, which make him formidable in combat. His favorite treasures are the Book of Lore and the Scroll of Alchemy, which can vastly increase the powers he can call on.",
	"vulnerability": {
		"code": "M"
	},
	"advantage_one": {
		"name": "LORE"
	},
	"advantage_two": {
		"name": "AURA OF POWER"
	},
	"starting_location": ["Inn"],
	"ally": [{
		"name": "LANCERS"
	}],
	"friendly": [{
		"name": "COMPANY"
	}, {
		"name": "BASHKARS"
	}],
	"unfriendly": [{
		"name": "ORDER"
	}, {
		"name": "SOLDIERS"
	}, {
		"name": "WARLOCK"
	}],
	"enemy": [{
		"name": "GUARD"
	}],
	"stage_one_name": "Apprentice",
	"stage_one_equipped_items": {},
	"stage_one_spells": 0,
	"stage_one_actions": [{
		"action": {
			"code": "Move M5"
		},
		"quantity": 1,
		"code": "1 Move M5"
	}, {
		"action": {
			"code": "Fight L3*"
		},
		"quantity": 1,
		"code": "1 Fight L3*"
	}, {
		"action": {
			"code": "Move M4*"
		},
		"quantity": 1,
		"code": "1 Move M4*"
	}],
	"stage_two_name": "Alchemist",
	"stage_two_equipped_items": {},
	"stage_two_spells": 1,
	"stage_two_actions": [{
		"action": {
			"code": "Magic IV4*"
		},
		"quantity": 3,
		"code": "3 Magic IV4*"
	}],
	"stage_three_name": "Conjuror",
	"stage_three_equipped_items": {},
	"stage_three_spells": 2,
	"stage_three_actions": [{
		"action": {
			"code": "Magic VI5*"
		},
		"quantity": 1,
		"code": "1 Magic VI5*"
	}, {
		"action": {
			"code": "Magic VI6*"
		},
		"quantity": 1,
		"code": "1 Magic VI6*"
	}, {
		"action": {
			"code": "Magic VI4*"
		},
		"quantity": 1,
		"code": "1 Magic VI4*"
	}],
	"stage_four_equipped_items": {},
	"stage_four_spells": 3,
	"stage_four_actions": [{
		"action": {
			"code": "Magic IV3*"
		},
		"quantity": 2,
		"code": "2 Magic IV3*"
	}, {
		"action": {
			"code": "Magic IV5*"
		},
		"quantity": 1,
		"code": "1 Magic IV5*"
	}]
}, {
	"name": "Swordsman",
	"glyph": "icon-cowled",
	"gender": {
		"name": "Male"
	},
	"evaluation": "The Swordsman is a wily and nimble rascal, quick to react to an opportunity or threat. In combat he is extremely fast with his sword and feet; against individual Light, Medium and Heavy opponents his speed makes him a deadly antagonist, and he can run away when he faces Tremendous monsters, armored Heavy monsters and enemies who outnumber him.",
	"vulnerability": {
		"code": "L"
	},
	"advantage_one": {
		"name": "BARTER"
	},
	"advantage_two": {
		"name": "CLEVER"
	},
	"starting_location": ["Inn"],
	"friendly": [{
		"name": "ROGUES"
	}, {
		"name": "COMPANY"
	}, {
		"name": "WARLOCK"
	}],
	"enemy": [{
		"name": "PATROL"
	}],
	"stage_one_name": "Wanderer",
	"stage_one_equipped_items": {},
	"stage_one_spells": 0,
	"stage_one_actions": [{
		"action": {
			"code": "Move L4"
		},
		"quantity": 1,
		"code": "1 Move L4"
	}, {
		"action": {
			"code": "Move L3*"
		},
		"quantity": 1,
		"code": "1 Move L3*"
	}, {
		"action": {
			"code": "Fight L3*"
		},
		"quantity": 1,
		"code": "1 Fight L3*"
	}],
	"stage_two_name": "Thief",
	"stage_two_equipped_items": {},
	"stage_two_spells": 0,
	"stage_two_actions": [{
		"action": {
			"code": "Move L3*"
		},
		"quantity": 1,
		"code": "1 Move L3*"
	}, {
		"action": {
			"code": "Fight L2**"
		},
		"quantity": 1,
		"code": "1 Fight L2**"
	}, {
		"action": {
			"code": "Move L2**"
		},
		"quantity": 1,
		"code": "1 Move L2**"
	}],
	"stage_three_name": "Adventurer",
	"stage_three_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Thrusting Sword"
	},
	"stage_three_spells": 0,
	"stage_three_actions": [{
		"action": {
			"code": "Move M4*"
		},
		"quantity": 1,
		"code": "1 Move M4*"
	}, {
		"action": {
			"code": "Fight M4*"
		},
		"quantity": 1,
		"code": "1 Fight M4*"
	}, {
		"action": {
			"code": "Fight M3**"
		},
		"quantity": 1,
		"code": "1 Fight M3**"
	}],
	"stage_four_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Thrusting Sword"
	},
	"stage_four_spells": 0,
	"stage_four_actions": [{
		"action": {
			"code": "Fight L4"
		},
		"quantity": 1,
		"code": "1 Fight L4"
	}, {
		"action": {
			"code": "Fight M5"
		},
		"quantity": 1,
		"code": "1 Fight M5"
	}, {
		"action": {
			"code": "Fight L2**"
		},
		"quantity": 1,
		"code": "1 Fight L2**"
	}]
}, {
	"name": "White Knight",
	"glyph": "icon-visored-helm",
	"gender": {
		"name": "Male"
	},
	"evaluation": "The White Knight is famous for his virtue and his prowess in battle. He is among the most powerful fighters and can handle the largest and most terrible monsters, but he moves slowly and fatigues easily. Against smaller and faster foes he must rely on his armor to stay alive, and he must use his health to recover from the fatigue and wounds he suffers in combat.",
	"vulnerability": {
		"code": "H"
	},
	"advantage_one": {
		"name": "ROBUST"
	},
	"advantage_two": {
		"name": "HONOR"
	},
	"starting_location": ["Inn", "Chapel"],
	"ally": [{
		"name": "ORDER"
	}],
	"friendly": [{
		"name": "LANCERS"
	}],
	"unfriendly": [{
		"name": "BASHKARS"
	}, {
		"name": "CRONE"
	}],
	"enemy": [{
		"name": "COMPANY"
	}],
	"stage_one_name": "Squire",
	"stage_one_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Broadsword",
		"EQUIP_SLOT_HELMET": "Helmet",
		"EQUIP_SLOT_TORSO": "Breastplate",
		"EQUIP_SLOT_SHIELD": "Shield"
	},
	"stage_one_spells": 0,
	"stage_one_actions": [{
		"action": {
			"code": "Move H5*"
		},
		"quantity": 1,
		"code": "1 Move H5*"
	}, {
		"action": {
			"code": "Move H6"
		},
		"quantity": 1,
		"code": "1 Move H6"
	}, {
		"action": {
			"code": "Fight H5*"
		},
		"quantity": 1,
		"code": "1 Fight H5*"
	}],
	"stage_two_name": "Knight-Errant",
	"stage_two_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Broadsword",
		"EQUIP_SLOT_ARMOR": "Suit of Armor",
		"EQUIP_SLOT_SHIELD": "Shield"
	},
	"stage_two_spells": 0,
	"stage_two_actions": [{
		"action": {
			"code": "Move H4**"
		},
		"quantity": 1,
		"code": "1 Move H4**"
	}, {
		"action": {
			"code": "Fight H6"
		},
		"quantity": 1,
		"code": "1 Fight H6"
	}, {
		"action": {
			"code": "Fight H4**"
		},
		"quantity": 1,
		"code": "1 Fight H4**"
	}],
	"stage_three_name": "Crusader",
	"stage_three_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Broadsword",
		"EQUIP_SLOT_ARMOR": "Suit of Armor",
		"EQUIP_SLOT_SHIELD": "Shield"
	},
	"stage_three_spells": 1,
	"stage_three_actions": [{
		"action": {
			"code": "Fight H4**"
		},
		"quantity": 1,
		"code": "1 Fight H4**"
	}, {
		"action": {
			"code": "Fight H5*"
		},
		"quantity": 1,
		"code": "1 Fight H5*"
	}, {
		"action": {
			"code": "Magic I5**"
		},
		"quantity": 1,
		"code": "1 Magic I5**"
	}],
	"stage_four_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Great Sword",
		"EQUIP_SLOT_ARMOR": "Suit of Armor"
	},
	"stage_four_spells": 1,
	"stage_four_actions": [{
		"action": {
			"code": "Move T6*"
		},
		"quantity": 1,
		"code": "1 Move T6*"
	}, {
		"action": {
			"code": "Fight T4**"
		},
		"quantity": 1,
		"code": "1 Fight T4**"
	}, {
		"action": {
			"code": "Fight T5*"
		},
		"quantity": 1,
		"code": "1 Fight T5*"
	}]
}, {
	"name": "Witch",
	"glyph": "icon-witch-face",
	"gender": {
		"name": "Male"
	},
	"evaluation": "The Witch is the mistress of natural and demonic powers. Nearly helpless in combat, she must select some spells that allow her to fight or avoid combat. She usually does best by going off by herself, preferably to some place where she can find Grey magic.",
	"vulnerability": {
		"code": "L"
	},
	"advantage_one": {
		"name": "KNOWLEDGE"
	},
	"advantage_two": {
		"name": "FAMILIAR"
	},
	"starting_location": ["Inn"],
	"ally": [{
		"name": "COMPANY"
	}],
	"friendly": [{
		"name": "BASHKARS"
	}],
	"unfriendly": [{
		"name": "ORDER"
	}, {
		"name": "LANCERS"
	}, {
		"name": "SOLDIERS"
	}, {
		"name": "SHAMAN"
	}],
	"stage_one_name": "Old Woman",
	"stage_one_equipped_items": {},
	"stage_one_spells": 0,
	"stage_one_actions": [{
		"action": {
			"code": "Move L4"
		},
		"quantity": 1,
		"code": "1 Move L4"
	}, {
		"action": {
			"code": "Move L3*"
		},
		"quantity": 1,
		"code": "1 Move L3*"
	}, {
		"action": {
			"code": "Move M4*"
		},
		"quantity": 1,
		"code": "1 Move M4*"
	}],
	"stage_two_name": "Medium",
	"stage_two_equipped_items": {},
	"stage_two_spells": 1,
	"stage_two_actions": [{
		"action": {
			"code": "Magic II3*"
		},
		"quantity": 1,
		"code": "1 Magic II3*"
	}, {
		"action": {
			"code": "Magic V6*"
		},
		"quantity": 1,
		"code": "1 Magic V6*"
	}, {
		"action": {
			"code": "Magic VIII4*"
		},
		"quantity": 1,
		"code": "1 Magic VIII4*"
	}],
	"stage_three_name": "Hag",
	"stage_three_equipped_items": {},
	"stage_three_spells": 2,
	"stage_three_actions": [{
		"action": {
			"code": "Fight L3*"
		},
		"quantity": 1,
		"code": "1 Fight L3*"
	}, {
		"action": {
			"code": "Magic II3*"
		},
		"quantity": 1,
		"code": "1 Magic II3*"
	}, {
		"action": {
			"code": "Magic V5*"
		},
		"quantity": 1,
		"code": "1 Magic V5*"
	}],
	"stage_four_equipped_items": {},
	"stage_four_spells": 3,
	"stage_four_actions": [{
		"action": {
			"code": "Magic II2*"
		},
		"quantity": 1,
		"code": "1 Magic II2*"
	}, {
		"action": {
			"code": "Magic V4*"
		},
		"quantity": 1,
		"code": "1 Magic V4*"
	}, {
		"action": {
			"code": "Magic VIII2*"
		},
		"quantity": 1,
		"code": "1 Magic VIII2*"
	}]
}, {
	"name": "Witch King",
	"glyph": "icon-haunting",
	"gender": {
		"name": "Male"
	},
	"evaluation": "The Witch King is an incorporeal manifestation of magic. He can move and do other activities, but without magic he does not even have a move chit to allow him to carry items (so he can carry only items of Negligible weight). With magic, however, he is masterful. He controls the powerful Elemental (IV – 4), Demonic (V – 5) and Summon (VI – 6) spells, which give him a great deal of choice in how he will play the game. His best choice of spells at the start of the game depends on his victory requirements and strategy, but usually he needs some kind of spell to move, some kind of spell to attack, and some kind of spell to protect him in combat.",
	"vulnerability": {
		"code": "L"
	},
	"advantage_one": {
		"name": "DISEMBODIED"
	},
	"advantage_two": {
		"name": "AURA OF POWER"
	},
	"starting_location": ["Inn"],
	"ally": [{
		"name": "BASHKARS"
	}],
	"friendly": [{
		"name": "COMPANY"
	}],
	"unfriendly": [{
		"name": "LANCERS"
	}, {
		"name": "SCHOLAR"
	}],
	"enemy": [{
		"name": "ORDER"
	}],
	"stage_one_name": "Wraith",
	"stage_one_equipped_items": {},
	"stage_one_spells": 1,
	"stage_one_actions": [{
		"action": {
			"code": "Magic IV4*"
		},
		"quantity": 1,
		"code": "1 Magic IV4*"
	}, {
		"action": {
			"code": "Magic V4*"
		},
		"quantity": 1,
		"code": "1 Magic V4*"
	}, {
		"action": {
			"code": "Magic VI4*"
		},
		"quantity": 1,
		"code": "1 Magic VI4*"
	}],
	"stage_two_name": "Wight",
	"stage_two_equipped_items": {},
	"stage_two_spells": 2,
	"stage_two_actions": [{
		"action": {
			"code": "Magic IV4*"
		},
		"quantity": 1,
		"code": "1 Magic IV4*"
	}, {
		"action": {
			"code": "Magic V3*"
		},
		"quantity": 1,
		"code": "1 Magic V3*"
	}, {
		"action": {
			"code": "Magic VI3*"
		},
		"quantity": 1,
		"code": "1 Magic VI3*"
	}],
	"stage_three_name": "Evil Spirit",
	"stage_three_equipped_items": {},
	"stage_three_spells": 3,
	"stage_three_actions": [{
		"action": {
			"code": "Magic IV3*"
		},
		"quantity": 1,
		"code": "1 Magic IV3*"
	}, {
		"action": {
			"code": "Magic V3*"
		},
		"quantity": 1,
		"code": "1 Magic V3*"
	}, {
		"action": {
			"code": "Magic VI3*"
		},
		"quantity": 1,
		"code": "1 Magic VI3*"
	}],
	"stage_four_equipped_items": {},
	"stage_four_spells": 4,
	"stage_four_actions": [{
		"action": {
			"code": "Magic IV3*"
		},
		"quantity": 1,
		"code": "1 Magic IV3*"
	}, {
		"action": {
			"code": "Magic V2*"
		},
		"quantity": 1,
		"code": "1 Magic V2*"
	}, {
		"action": {
			"code": "Magic VI2*"
		},
		"quantity": 1,
		"code": "1 Magic VI2*"
	}]
}, {
	"name": "Wizard",
	"glyph": "icon-wizard-face",
	"gender": {
		"name": "Male"
	},
	"evaluation": "The Wizard is an elderly wanderer familiar with the ways of the Magic Realm. During his travels, he has made many friends, and he has learned all of the secret roads of the land. In combat he is slow and weak, so he must choose his battles cautiously.<br> His long study of the colors of magic enables him to create Grey, Gold and Purple magic at the same time, giving him great powers with enchantments and spells, particularly Artifacts and Spell Books. His strengths and weaknesses make him a valuable member of a party, but he is extremely vulnerable when he tries to work alone.",
	"vulnerability": {
		"code": "M"
	},
	"advantage_one": {
		"name": "LORE"
	},
	"advantage_two": {
		"name": "EXPERIENCE"
	},
	"starting_location": ["Inn", "House", "Guardhouse"],
	"friendly": [{
		"name": "WOODFOLK"
	}, {
		"name": "PATROL"
	}, {
		"name": "SOLDIERS"
	}, {
		"name": "GUARD"
	}],
	"unfriendly": [{
		"name": "COMPANY"
	}, {
		"name": "BASHKARS"
	}, {
		"name": "WARLOCK"
	}],
	"enemy": [{
		"name": "LANCERS"
	}],
	"stage_one_name": "Apprentice",
	"stage_one_equipped_items": {},
	"stage_one_spells": 0,
	"stage_one_actions": [{
		"action": {
			"code": "Move M5"
		},
		"quantity": 1,
		"code": "1 Move M5"
	}, {
		"action": {
			"code": "Move M4*"
		},
		"quantity": 1,
		"code": "1 Move M4*"
	}, {
		"action": {
			"code": "Fight M3*"
		},
		"quantity": 1,
		"code": "1 Fight M3*"
	}],
	"stage_two_name": "Scholar",
	"stage_two_equipped_items": {},
	"stage_two_spells": 0,
	"stage_two_actions": [{
		"action": {
			"code": "Move M5"
		},
		"quantity": 2,
		"code": "2 Move M5"
	}, {
		"action": {
			"code": "Fight M5"
		},
		"quantity": 1,
		"code": "1 Fight M5"
	}],
	"stage_three_name": "Wise One",
	"stage_three_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Staff"
	},
	"stage_three_spells": 1,
	"stage_three_actions": [{
		"action": {
			"code": "Fight L4"
		},
		"quantity": 1,
		"code": "1 Fight L4"
	}, {
		"action": {
			"code": "Magic II4*"
		},
		"quantity": 1,
		"code": "1 Magic II4*"
	}, {
		"action": {
			"code": "Magic IV4*"
		},
		"quantity": 1,
		"code": "1 Magic IV4*"
	}],
	"stage_four_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Staff"
	},
	"stage_four_spells": 2,
	"stage_four_actions": [{
		"action": {
			"code": "Magic II3*"
		},
		"quantity": 1,
		"code": "1 Magic II3*"
	}, {
		"action": {
			"code": "Magic III3*"
		},
		"quantity": 1,
		"code": "1 Magic III3*"
	}, {
		"action": {
			"code": "Magic IV3*"
		},
		"quantity": 1,
		"code": "1 Magic IV3*"
	}]
}, {
	"name": "Woods Girl",
	"glyph": "icon-bowman",
	"gender": {
		"name": "Female"
	},
	"evaluation": "The Woods Girl is the elusive mistress of the wooded lands, an expert tracker who is deadly with the bow against Light, Medium or Heavy opponents. When facing heavier opponents or overwhelming numbers, she is fleet enough to run away.",
	"vulnerability": {
		"code": "L"
	},
	"advantage_one": {
		"name": "TRACKING SKILLS"
	},
	"advantage_two": {
		"name": "ARCHER"
	},
	"starting_location": ["Inn", "House"],
	"ally": [{
		"name": "WOODFOLK"
	}],
	"friendly": [{
		"name": "LANCERS"
	}],
	"unfriendly": [{
		"name": "SOLDIERS"
	}, {
		"name": "WARLOCK"
	}],
	"enemy": [{
		"name": "BASHKARS"
	}],
	"stage_one_name": "Maid",
	"stage_one_equipped_items": {},
	"stage_one_spells": 0,
	"stage_one_actions": [{
		"action": {
			"code": "Move L3*"
		},
		"quantity": 1,
		"code": "1 Move L3*"
	}, {
		"action": {
			"code": "Move L4"
		},
		"quantity": 1,
		"code": "1 Move L4"
	}, {
		"action": {
			"code": "Move L2**"
		},
		"quantity": 1,
		"code": "1 Move L2**"
	}],
	"stage_two_name": "Sprite",
	"stage_two_equipped_items": {},
	"stage_two_spells": 1,
	"stage_two_actions": [{
		"action": {
			"code": "Fight L4"
		},
		"quantity": 1,
		"code": "1 Fight L4"
	}, {
		"action": {
			"code": "Move L2**"
		},
		"quantity": 1,
		"code": "1 Move L2**"
	}, {
		"action": {
			"code": "Magic VII6**"
		},
		"quantity": 1,
		"code": "1 Magic VII6**"
	}],
	"stage_three_name": "Huntress",
	"stage_three_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Light Bow"
	},
	"stage_three_spells": 1,
	"stage_three_actions": [{
		"action": {
			"code": "Fight L3*"
		},
		"quantity": 1,
		"code": "1 Fight L3*"
	}, {
		"action": {
			"code": "Fight M5"
		},
		"quantity": 1,
		"code": "1 Fight M5"
	}, {
		"action": {
			"code": "Fight L4"
		},
		"quantity": 1,
		"code": "1 Fight L4"
	}],
	"stage_four_equipped_items": {
		"EQUIP_SLOT_WEAPON": "Light Bow"
	},
	"stage_four_spells": 1,
	"stage_four_actions": [{
		"action": {
			"code": "Move L3*"
		},
		"quantity": 1,
		"code": "1 Move L3*"
	}, {
		"action": {
			"code": "Fight M4*"
		},
		"quantity": 1,
		"code": "1 Fight M4*"
	}, {
		"action": {
			"code": "Fight L3*"
		},
		"quantity": 1,
		"code": "1 Fight L3*"
	}]
}]