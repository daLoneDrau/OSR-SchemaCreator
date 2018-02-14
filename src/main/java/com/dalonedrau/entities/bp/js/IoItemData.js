[{
	"description": "Your trusty broadsword, Bonebiter.",
	"internal_script": "Bonebiter",
	"name": "Bonebiter",
	"groups": [{
		"name": "ARMORY"
	}],
	"max_owned": 1,
	"price": 6,
	"stack_size": 1,
	"types": [{
		"code": "OBJECT_TYPE_1H"
	}],
	"weight": 0
}, {
	"description": "An ancient sword, engraved with arcane runes.  Every would this weapon inflicts poisons the victim.",
	"internal_script": "MagicSword",
	"name": "MagicSword",
	"groups": [{
		"name": "ARMORY"
	}, {
		"name": "POISON_WEAPON"
	}],
	"max_owned": 1,
	"modifiers": {
		"ELEMENT_COMBAT_SKILL": "PLUS_1"
	},
	"price": 6,
	"stack_size": 1,
	"types": [{
		"code": "OBJECT_TYPE_1H"
	}],
	"weight": 0
}]