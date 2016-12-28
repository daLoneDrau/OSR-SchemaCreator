[{
	"description": "A straight, double-edged weapon with a long hilt and a blade 3' long. A single- or two-hand grip is used when wielding.",
	"damages": {
		"code": "TWO_D4"
	},
	"groups": [{
		"name": "EDGED_WEAPON"
	}, {
		"name": "HEAVY_WEAPON"
	}],
	"internal_script": "BastardSword",
	"name": "Longsword",
	"max_owned": 99,
	"price": 6,
	"stack_size": 10,
	"types": [{
		"code": "OBJECT_TYPE_1H"
	}],
	"weight": 20
}, {
	"description": "An armour made from horizontal overlapping rows or bands of solid armour plates.",
	"groups": [{
		"name": "HEAVY_ARMOUR"
	}],
	"internal_script": "BandedMail",
	"name": "Segmented Cuirass",
	"max_owned": 99,
	"modifiers": {
		"ELEMENT_ARMOR_CLASS": "MINUS_5"
	},
	"price": 250,
	"stack_size": 10,
	"types": [{
		"code": "OBJECT_TYPE_ARMOR"
	}],
	"weight": 35
}]