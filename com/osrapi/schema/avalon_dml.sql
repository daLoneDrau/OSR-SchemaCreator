-- ADD ACTION_TYPES
INSERT INTO avalon.action_type(name) VALUES(
  'MOVE'), (
  'FIGHT'), (
  'BERSERK'), (
  'DUCK'), (
  'MAGIC');


-- ADD ADVANTAGES
INSERT INTO avalon.advantage(description, flag, name) VALUES(
  'Your weapons training gives you a small bonus when attacking with a missile weapon.', 1, 'AIM'), (
  'You advanced weapons training gives you a large bonus when attacking with a missile weapon.', 2, 'ARCHER'), (
  'You can perform an extra Spell action each turn', 4, 'AURA OF POWER'), (
  'Your mercantile experience gives you a large bonus when Trading.', 8, 'BARTER'), (
  'You can increase your weight class to Behemoth for an entire day.', 16, 'BERSERK'), (
  'You have a large bonus when Hiding, Searching, or interacting with natives in a cave.', 32, 'CAVE KNOWLEDGE'), (
  'You can choose when to take actions during the day.', 64, 'CLEVER'), (
  'You have a large bonus when Hiding.', 128, 'CONCEALMENT'), (
  'You are forced to use Magic Sight.', 256, 'DISEMBODIED'), (
  'You can perform an extra Hide action each day.', 512, 'ELUSIVENESS'), (
  'You know the locations of all hidden paths and secret passages.', 1024, 'EXPERIENCE'), (
  'You have an invisible companion that can move around the map separately and discover things for you.', 2048, 'FAMILIAR'), (
  'Your fearsome reputation gives you a large bonus when interacting with natives.', 4096, 'FEAR'), (
  'You cannot be attacked by Demons.', 8192, 'HEAVENLY PROTECTION'), (
  'Your honorable reputation gives you a small bonus when interacting with natives.', 16384, 'HONOR'), (
  'Your limited arcane education grants you a small bonus when Reading Runes.', 32768, 'KNOWLEDGE'), (
  'Your extensive arcane education grants you a large bonus when Reading Runes.', 65536, 'LORE'), (
  'Your collection of magical implements allows you to perform an extra Alert action each day.', 131072, 'MAGICAL PARAPHERNALIA'), (
  'Your presence in the natural world does not attract monsters.', 262144, 'PEACE WITH NATURE'), (
  'Your reputation allows you to perform an extra action when at a Dwelling.', 524288, 'REPUTATION'), (
  'Your robust health allows you an extra Rest action each day.', 1048576, 'ROBUST'), (
  'Your short legs preclude you from performing as many actions per day, but allow you to Duck blows incredibly fast.', 2097152, 'SHORT LEGS'), (
  'Your hardy stamina allows you an extra Move action each day, even when Riding a horse.', 4194304, 'STAMINA'), (
  'You have a large bonus when Hiding, Searching, or interacting with natives when in the Woods.', 8388608, 'TRACKING SKILLS');


-- ADD ARMOR_CONDITIONS
INSERT INTO avalon.armor_condition(name) VALUES(
  'Damaged'), (
  'Destroyed'), (
  'Normal');


-- ADD ARMOR_PROTECTIONS
INSERT INTO avalon.armor_protection(name) VALUES(
  'Smash'), (
  'Swing'), (
  'Thrust');


-- ADD ATTACK_TYPES
INSERT INTO avalon.attack_type(name) VALUES(
  'Striking'), (
  'Missile');


-- ADD ATTRIBUTES
INSERT INTO avalon.attribute(code, description, name) VALUES(

-- ADD DAILY_PERIODS
INSERT INTO avalon.daily_period(name) VALUES(
  'Birdsong'), (
  'Sunrise'), (
  'Daylight'), (
  'Sunset'), (
  'Evening'), (
  'Midnight');


-- ADD EQUIPMENT_ELEMENT_TYPES
INSERT INTO avalon.equipment_element_type(code, value) VALUES(

-- ADD EQUIPMENT_ITEM_MODIFIERS
INSERT INTO avalon.equipment_item_modifier(code, percent, special, value) VALUES(

-- ADD EQUIPMENT_SLOTS
INSERT INTO avalon.equipment_slot(code, value) VALUES(
  'EQUIP_SLOT_TORSO', 5), (
  'EQUIP_SLOT_ARMOR', 11), (
  'EQUIP_SLOT_HELMET', 6), (
  'EQUIP_SLOT_LEGGINGS', 7), (
  'EQUIP_SLOT_GLOVES', 8), (
  'EQUIP_SLOT_BOOTS', 9), (
  'EQUIP_SLOT_NECKLACE', 10), (
  'EQUIP_SLOT_RING_LEFT', 0), (
  'EQUIP_SLOT_RING_RIGHT', 1), (
  'EQUIP_SLOT_SHIELD', 3), (
  'EQUIP_SLOT_TORCH', 4), (
  'EQUIP_SLOT_WEAPON', 2);


-- ADD GAME_ACTIONS
INSERT INTO avalon.game_action(name) VALUES(
  'Berserk'), (
  'Fly'), (
  'Duck'), (
  'Fight'), (
  'Magic'), (
  'Move');


-- ADD GENDERS
INSERT INTO avalon.gender(description, name) VALUES(
  'male', 'Male'), (
  'female', 'Female');


-- ADD GROUPS
INSERT INTO avalon.group(name) VALUES(
  'TREASURE'), (
  'NATIVE'), (
  'ARMORY'), (
  'BASHKARS'), (
  'COMPANY'), (
  'GUARD'), (
  'LANCERS'), (
  'ORDER'), (
  'PATROL'), (
  'ROGUES'), (
  'SOLDIERS'), (
  'WOODFOLK'), (
  'SHAMAN');


-- ADD HEX_CLEARING_TYPES
INSERT INTO avalon.hex_clearing_type(code) VALUES(

-- ADD HEX_TERRAIN_TYPES
INSERT INTO avalon.hex_terrain_type(code) VALUES(

-- ADD HEX_TILE_TYPES
INSERT INTO avalon.hex_tile_type(code) VALUES(

-- ADD HORSE_TYPES
INSERT INTO avalon.horse_type(name) VALUES(
  'Pony'), (
  'Warhorse'), (
  'Workhorse');


-- ADD MAGIC_COLORS
INSERT INTO avalon.magic_color(long_name, name) VALUES(
  NULL, 'WHITE'), (
  NULL, 'GREY'), (
  NULL, 'GOLD'), (
  NULL, 'PURPLE'), (
  NULL, 'BLACK');


-- ADD MAGIC_TYPES
INSERT INTO avalon.magic_type(code, spell_name, title) VALUES(
  'I', 'Prayer', 'Righteous'), (
  'II', 'Invocation', 'Natural'), (
  'III', 'Glamour', 'Fae'), (
  'IV', 'Rune', 'Elemental'), (
  'V', 'Curse', 'Infernal'), (
  'VI', 'Conjuration', 'Conjuring'), (
  'VII', 'Charm', 'Beneficial'), (
  'VIII', 'Hex', 'Mischevious');


-- ADD NODE_TYPES
INSERT INTO avalon.node_type(code, description) VALUES(

-- ADD OBJECT_TYPES
INSERT INTO avalon.object_type(code, flag) VALUES(
  'OBJECT_TYPE_WEAPON', 1), (
  'OBJECT_TYPE_1H', 2), (
  'OBJECT_TYPE_2H', 4), (
  'OBJECT_TYPE_BOW', 8), (
  'OBJECT_TYPE_ARMOR', 16), (
  'OBJECT_TYPE_SUIT_OF_ARMOR', 32), (
  'OBJECT_TYPE_BREASTPLATE', 64), (
  'OBJECT_TYPE_HELMET', 128), (
  'OBJECT_TYPE_SHIELD', 256), (
  'OBJECT_TYPE_BOOTS', 512), (
  'OBJECT_TYPE_GLOVES', 1024), (
  'OBJECT_TYPE_POTION', 2048), (
  'OBJECT_TYPE_CLOAK', 4096), (
  'OBJECT_TYPE_NECKLACE', 8192), (
  'OBJECT_TYPE_BOOK', 16384), (
  'OBJECT_TYPE_BELT', 32768), (
  'OBJECT_TYPE_ARTIFACT', 65536), (
  'OBJECT_TYPE_RING', 131072), (
  'OBJECT_TYPE_FOCUS', 262144), (
  'OBJECT_TYPE_BRACERS', 524288), (
  'OBJECT_TYPE_MAP', 1048576), (
  'OBJECT_TYPE_MAGIC_ITEM', 2097152), (
  'OBJECT_TYPE_MISC', 4194304);


-- ADD VECTOR3S
INSERT INTO avalon.vector3(x, y, z, code) VALUES(

-- ADD HEX_CLEARINGS
INSERT INTO avalon.hex_clearing(number, type, location, code) VALUES(

-- ADD HEX_NODES
INSERT INTO avalon.hex_node(location, type, code) VALUES(

-- ADD HEX_PATHS
INSERT INTO avalon.hex_path(code) VALUES(
-- ADD hex_path's RELATED paths


-- ADD HEX_NODE_EDGES
INSERT INTO avalon.hex_node_edge(clearing_from, clearing_to, path) VALUES(

-- ADD HEX_SIDE_EDGES
INSERT INTO avalon.hex_side_edge(clearing_from, side, path) VALUES(

-- ADD HEX_TILES
INSERT INTO avalon.hex_tile(abbreviation, name, type) VALUES(
  'BL', 'Borderland', (SELECT hex_tile_type_id FROM avalon.hex_tile_type WHERE code='TILE_TYPE_CAVE'));

-- ADD hex_tile's RELATED clearingss
INSERT INTO avalon.hex_tile_clearings_lookup(hex_tile_id, hex_clearing_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_clearing_id FROM avalon.hex_clearing WHERE code='BL1'));
INSERT INTO avalon.hex_tile_clearings_lookup(hex_tile_id, hex_clearing_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_clearing_id FROM avalon.hex_clearing WHERE code='BL2'));
INSERT INTO avalon.hex_tile_clearings_lookup(hex_tile_id, hex_clearing_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_clearing_id FROM avalon.hex_clearing WHERE code='BL3'));
INSERT INTO avalon.hex_tile_clearings_lookup(hex_tile_id, hex_clearing_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_clearing_id FROM avalon.hex_clearing WHERE code='BL4'));
INSERT INTO avalon.hex_tile_clearings_lookup(hex_tile_id, hex_clearing_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_clearing_id FROM avalon.hex_clearing WHERE code='BL5'));
INSERT INTO avalon.hex_tile_clearings_lookup(hex_tile_id, hex_clearing_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_clearing_id FROM avalon.hex_clearing WHERE code='BL6'));

-- ADD hex_tile's RELATED edgess
INSERT INTO avalon.hex_tile_edges_lookup(hex_tile_id, hex_node_edge_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_edge_id FROM avalon.hex_node_edge WHERE );
INSERT INTO avalon.hex_tile_edges_lookup(hex_tile_id, hex_node_edge_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_edge_id FROM avalon.hex_node_edge WHERE );
INSERT INTO avalon.hex_tile_edges_lookup(hex_tile_id, hex_node_edge_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_edge_id FROM avalon.hex_node_edge WHERE );
INSERT INTO avalon.hex_tile_edges_lookup(hex_tile_id, hex_node_edge_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_edge_id FROM avalon.hex_node_edge WHERE );
INSERT INTO avalon.hex_tile_edges_lookup(hex_tile_id, hex_node_edge_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_edge_id FROM avalon.hex_node_edge WHERE );

-- ADD hex_tile's RELATED enchanted_edgess

-- ADD hex_tile's RELATED enchanted_secret_edgess

-- ADD hex_tile's RELATED enchanted_side_edgess

-- ADD hex_tile's RELATED enchanted_terrains
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='0,4,-4_FOREST_GREY'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='1,3,-4_FOREST'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='2,2,-4_FOREST'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='3,1,-4_FOREST_GOLD'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='4,0,-4_FOREST_GOLD'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-1,4,-3_FOREST'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='0,3,-3_CLEARING'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='1,2,-3_FOREST_GREY'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='2,1,-3_CLEARING'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='3,0,-3_FOREST'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='4,-1,-3_FOREST_GOLD'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-2,4,-2_FOREST'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-1,3,-2_FOREST_GREY'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='0,2,-2_FOREST'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='1,1,-2_FOREST'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='2,0,-2_FOREST'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='3,-1,-2_FOREST'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='4,-2,-2_FOREST'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-3,4,-1_FOREST'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-2,3,-1_FOREST'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-1,2,-1_FOREST_GREY'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='0,1,-1_CLEARING'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='1,0,-1_FOREST'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='2,-1,-1_FOREST_GOLD'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='3,-2,-1_CLEARING'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='4,-3,-1_FOREST_GOLD'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-4,4,0_FOREST'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-3,3,0_FOREST_PURPLE'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-2,2,0_FOREST'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-1,1,0_FOREST'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='0,0,0_FOREST'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='1,-1,0_FOREST_GOLD'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='2,-2,0_FOREST_GOLD'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='3,-3,0_FOREST_GOLD'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='4,-4,0_FOREST_GOLD'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-4,3,1_FOREST_PURPLE'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-3,2,1_FOREST_PURPLE'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-2,1,1_CLEARING'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-1,0,1_FOREST_PURPLE'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='0,-1,1_FOREST_GOLD'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='1,-2,1_FOREST_GOLD'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='2,-3,1_FOREST_GOLD'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='3,-4,1_FOREST_GOLD'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-4,2,2_FOREST_PURPLE'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-3,1,2_FOREST_PURPLE'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-2,0,2_FOREST_PURPLE'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-1,-1,2_FOREST_PURPLE'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='0,-2,2_FOREST_PURPLE'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='1,-3,2_FOREST_PURPLE'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='2,-4,2_FOREST_PURPLE'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-4,1,3_FOREST_PURPLE'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-3,0,3_CLEARING'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-2,-1,3_FOREST_PURPLE'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-1,-2,3_FOREST_PURPLE'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='0,-3,3_FOREST_PURPLE'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='1,-4,3_FOREST_PURPLE'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-4,0,4_FOREST_PURPLE'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-3,-1,4_FOREST_PURPLE'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-2,-2,4_FOREST_PURPLE'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-1,-3,4_FOREST_PURPLE'));
INSERT INTO avalon.hex_tile_enchanted_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='0,-4,4_FOREST_PURPLE'));

-- ADD hex_tile's RELATED secret_edgess
INSERT INTO avalon.hex_tile_secret_edges_lookup(hex_tile_id, hex_node_edge_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_edge_id FROM avalon.hex_node_edge WHERE );

-- ADD hex_tile's RELATED side_edgess
INSERT INTO avalon.hex_tile_side_edges_lookup(hex_tile_id, hex_side_edge_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_side_edge_id FROM avalon.hex_side_edge WHERE );
INSERT INTO avalon.hex_tile_side_edges_lookup(hex_tile_id, hex_side_edge_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_side_edge_id FROM avalon.hex_side_edge WHERE );
INSERT INTO avalon.hex_tile_side_edges_lookup(hex_tile_id, hex_side_edge_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_side_edge_id FROM avalon.hex_side_edge WHERE );
INSERT INTO avalon.hex_tile_side_edges_lookup(hex_tile_id, hex_side_edge_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_side_edge_id FROM avalon.hex_side_edge WHERE );
INSERT INTO avalon.hex_tile_side_edges_lookup(hex_tile_id, hex_side_edge_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_side_edge_id FROM avalon.hex_side_edge WHERE );
INSERT INTO avalon.hex_tile_side_edges_lookup(hex_tile_id, hex_side_edge_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_side_edge_id FROM avalon.hex_side_edge WHERE );

-- ADD hex_tile's RELATED terrains
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='0,4,-4_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='1,3,-4_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='2,2,-4_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='3,1,-4_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='4,0,-4_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-1,4,-3_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='0,3,-3_CLEARING'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='1,2,-3_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='2,1,-3_CLEARING'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='3,0,-3_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='4,-1,-3_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-2,4,-2_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-1,3,-2_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='0,2,-2_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='1,1,-2_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='2,0,-2_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='3,-1,-2_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='4,-2,-2_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-3,4,-1_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-2,3,-1_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-1,2,-1_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='0,1,-1_CLEARING'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='1,0,-1_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='2,-1,-1_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='3,-2,-1_CLEARING'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='4,-3,-1_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-4,4,0_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-3,3,0_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-2,2,0_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-1,1,0_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='0,0,0_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='1,-1,0_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='2,-2,0_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='3,-3,0_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='4,-4,0_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-4,3,1_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-3,2,1_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-2,1,1_CLEARING'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-1,0,1_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='0,-1,1_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='1,-2,1_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='2,-3,1_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='3,-4,1_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-4,2,2_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-3,1,2_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-2,0,2_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-1,-1,2_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='0,-2,2_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='1,-3,2_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='2,-4,2_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-4,1,3_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-3,0,3_CLEARING'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-2,-1,3_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-1,-2,3_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='0,-3,3_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='1,-4,3_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-4,0,4_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-3,-1,4_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-2,-2,4_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='-1,-3,4_FOREST'));
INSERT INTO avalon.hex_tile_terrain_lookup(hex_tile_id, hex_node_id) VALUES (
  (SELECT hex_tile_id FROM avalon.hex_tile WHERE name='Borderland'),
  (SELECT hex_node_id FROM avalon.hex_node WHERE code='0,-4,4_FOREST'));


-- ADD VULNERABILITYS
INSERT INTO avalon.vulnerability(code, harm_name, value, weight_class) VALUES(
  'N', '--', 0, 'Negligible'), (
  'L', 'Light', 1, 'Lightweight'), (
  'M', 'Medium', 2, 'Middleweight'), (
  'H', 'Heavy', 3, 'Heavyweight'), (
  'T', 'Tremendous', 4, 'Behemoth');


-- ADD ACTION_CHITS
INSERT INTO avalon.action_chit(type, strength, magic_type, speed, fatigue_asterisk, code) VALUES(
  (SELECT action_type_id FROM avalon.action_type WHERE name='MOVE'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), NULL, 2, 1, 'Move L2*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MOVE'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), NULL, 2, 2, 'Move L2**'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MOVE'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), NULL, 3, 1, 'Move L3*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MOVE'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), NULL, 4, 0, 'Move L4'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MOVE'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), NULL, 3, 1, 'Move M3*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MOVE'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), NULL, 3, 2, 'Move M3**'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MOVE'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), NULL, 4, 0, 'Move M4'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MOVE'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), NULL, 4, 1, 'Move M4*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MOVE'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), NULL, 5, 0, 'Move M5'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MOVE'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), NULL, 4, 2, 'Move H4**'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MOVE'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), NULL, 5, 0, 'Move H5'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MOVE'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), NULL, 5, 1, 'Move H5*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MOVE'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), NULL, 6, 0, 'Move H6'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='DUCK'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), NULL, 3, 1, 'Duck T3*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MOVE'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), NULL, 5, 2, 'Move T5**'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MOVE'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), NULL, 6, 1, 'Move T6*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='FIGHT'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), NULL, 2, 2, 'Fight L2**'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='FIGHT'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), NULL, 3, 1, 'Fight L3*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='FIGHT'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), NULL, 4, 0, 'Fight L4'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='FIGHT'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), NULL, 2, 2, 'Fight M2**'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='FIGHT'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), NULL, 3, 1, 'Fight M3*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='FIGHT'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), NULL, 3, 2, 'Fight M3**'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='FIGHT'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), NULL, 4, 0, 'Fight M4'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='FIGHT'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), NULL, 4, 1, 'Fight M4*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='FIGHT'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), NULL, 5, 0, 'Fight M5'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='FIGHT'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), NULL, 4, 1, 'Fight H4*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='FIGHT'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), NULL, 4, 2, 'Fight H4**'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='FIGHT'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), NULL, 5, 0, 'Fight H5'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='FIGHT'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), NULL, 5, 1, 'Fight H5*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='FIGHT'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), NULL, 6, 0, 'Fight H6'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='BERSERK'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), NULL, 4, 2, 'Berserk T4**'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='FIGHT'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), NULL, 4, 2, 'Fight T4**'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='FIGHT'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), NULL, 5, 1, 'Fight T5*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='FIGHT'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), NULL, 5, 2, 'Fight T5**'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='FIGHT'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), NULL, 6, 1, 'Fight T6*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 4, 1, 'Magic I4*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 6, 1, 'Magic I6*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 5, 2, 'Magic I5**'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 2, 1, 'Magic II2*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 2, 2, 'Magic II2**'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 3, 1, 'Magic II3*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 4, 1, 'Magic II4*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 2, 1, 'Magic III2*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 3, 1, 'Magic III3*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 4, 1, 'Magic III4*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 3, 1, 'Magic IV3*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 4, 1, 'Magic IV4*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 5, 1, 'Magic IV5*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 2, 1, 'Magic V2*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 3, 1, 'Magic V3*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 4, 1, 'Magic V4*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 4, 2, 'Magic V4**'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 5, 1, 'Magic V5*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 6, 1, 'Magic V6*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 2, 1, 'Magic VI2*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 3, 1, 'Magic VI3*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 4, 1, 'Magic VI4*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 5, 1, 'Magic VI5*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 6, 1, 'Magic VI6*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 3, 1, 'Magic VII3*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 4, 1, 'Magic VII4*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 4, 2, 'Magic VII4**'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 6, 2, 'Magic VII6**'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 2, 1, 'Magic VIII2*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 2, 2, 'Magic VIII2**'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 3, 1, 'Magic VIII3*'), (
  (SELECT action_type_id FROM avalon.action_type WHERE name='MAGIC'), NULL, NULL, 4, 1, 'Magic VIII4*');


-- ADD DEVELOPMENT_ACTIONSS
INSERT INTO avalon.development_actions(action, quantity, code) VALUES(

-- ADD IO_ITEM_DATAS
INSERT INTO avalon.io_item_data(alerted_speed, alerted_sharpness, alerted_weight_class, attack_method, condition, count, description, fame, food_value, horse_type, internal_script, left_ring, length, light_value, max_owned, name, notoriety, price, price_damaged, price_destroyed, ring_type, stack_size, steal_value, title, unalerted_speed, unalerted_sharpness, unalerted_weight_class, weight_class, weapon_length) VALUES(
  1, 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), (SELECT attack_type_id FROM avalon.attack_type WHERE name='Missile'), NULL, 0, NULL, 0, 0, NULL, 'Bow', false, 0, 0, 0, 'Medium Bow', 0, 8.0, 0.0, 0.0, 0, 0, 0, 'Medium Bow', 0, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), NULL, 16), (
  1, 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), (SELECT attack_type_id FROM avalon.attack_type WHERE name='Missile'), NULL, 0, NULL, 0, 0, NULL, 'Bow', false, 0, 0, 0, 'Light Bow', 0, 6.0, 0.0, 0.0, 0, 0, 0, 'Light Bow', 0, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), NULL, 14), (
  1, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), (SELECT attack_type_id FROM avalon.attack_type WHERE name='Missile'), NULL, 0, NULL, 0, 0, NULL, 'Bow', false, 0, 0, 0, 'Crossbow', 0, 10.0, 0.0, 0.0, 0, 0, 0, 'Crossbow', 0, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), NULL, 12), (
  0, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), (SELECT attack_type_id FROM avalon.attack_type WHERE name='Striking'), NULL, 0, NULL, 0, 0, NULL, 'Spear', false, 0, 0, 0, 'Spear', 0, 6.0, 0.0, 0.0, 0, 0, 0, 'Spear', 6, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='N'), NULL, 10), (
  0, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), (SELECT attack_type_id FROM avalon.attack_type WHERE name='Striking'), NULL, 0, NULL, 0, 0, NULL, 'Staff', false, 0, 0, 0, 'Staff', 0, 1.0, 0.0, 0.0, 0, 0, 0, 'Staff', 0, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), NULL, 9), (
  0, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), (SELECT attack_type_id FROM avalon.attack_type WHERE name='Striking'), NULL, 0, NULL, 0, 0, NULL, 'GreatSword', false, 0, 0, 0, 'Great Sword', 0, 10.0, 0.0, 0.0, 0, 0, 0, 'Great Sword', 6, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), NULL, 8), (
  0, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), (SELECT attack_type_id FROM avalon.attack_type WHERE name='Striking'), NULL, 0, NULL, 0, 0, NULL, 'Broadsword', false, 0, 0, 0, 'Broadsword', 0, 8.0, 0.0, 0.0, 0, 0, 0, 'Broadsword', 5, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), NULL, 7), (
  3, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), (SELECT attack_type_id FROM avalon.attack_type WHERE name='Striking'), NULL, 0, NULL, 0, 0, NULL, 'MorningStar', false, 0, 0, 0, 'Morning Star', 0, 8.0, 0.0, 0.0, 0, 0, 0, 'Morning Star', 6, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), NULL, 6), (
  4, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), (SELECT attack_type_id FROM avalon.attack_type WHERE name='Striking'), NULL, 0, NULL, 0, 0, NULL, 'GreatAxe', false, 0, 0, 0, 'Great Axe', 0, 8.0, 0.0, 0.0, 0, 0, 0, 'Great Axe', 0, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), NULL, 5), (
  0, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), (SELECT attack_type_id FROM avalon.attack_type WHERE name='Striking'), NULL, 0, NULL, 0, 0, NULL, 'ThrustingSword', false, 0, 0, 0, 'Thrusting Sword', 0, 6.0, 0.0, 0.0, 0, 0, 0, 'Thrusting Sword', 4, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), NULL, 4), (
  0, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), (SELECT attack_type_id FROM avalon.attack_type WHERE name='Striking'), NULL, 0, NULL, 0, 0, NULL, 'ShortSword', false, 0, 0, 0, 'Short Sword', 0, 4.0, 0.0, 0.0, 0, 0, 0, 'Short Sword', 0, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), NULL, 3), (
  0, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), (SELECT attack_type_id FROM avalon.attack_type WHERE name='Striking'), NULL, 0, NULL, 0, 0, NULL, 'Axe', false, 0, 0, 0, 'Axe', 0, 4.0, 0.0, 0.0, 0, 0, 0, 'Axe', 5, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), NULL, 2), (
  3, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), (SELECT attack_type_id FROM avalon.attack_type WHERE name='Striking'), NULL, 0, NULL, 0, 0, NULL, 'Mace', false, 0, 0, 0, 'Mace', 0, 6.0, 0.0, 0.0, 0, 0, 0, 'Mace', 0, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), NULL, 1), (
  2, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), (SELECT attack_type_id FROM avalon.attack_type WHERE name='Striking'), NULL, 0, NULL, 0, 0, NULL, 'GreatSword', false, 0, 0, 0, 'Bane Sword', 0, 20.0, 0.0, 0.0, 0, 0, 0, 'Bane Sword', 8, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), NULL, 8), (
  3, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), (SELECT attack_type_id FROM avalon.attack_type WHERE name='Striking'), NULL, 0, NULL, 0, 0, NULL, 'Broadsword', false, 0, 0, 0, 'Devil Sword', 0, 20.0, 0.0, 0.0, 0, 0, 0, 'Devil Sword', 4, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), NULL, 7), (
  0, 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), (SELECT attack_type_id FROM avalon.attack_type WHERE name='Striking'), NULL, 0, NULL, 0, 0, NULL, 'Broadsword', false, 0, 0, 0, 'Truesteel Sword', 0, 25.0, 0.0, 0.0, 0, 0, 0, 'Truesteel Sword', 0, 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), NULL, 7), (
  2, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), (SELECT attack_type_id FROM avalon.attack_type WHERE name='Striking'), NULL, 0, NULL, 0, 0, NULL, 'ThrustingSword', false, 0, 0, 0, 'Living Sword', 0, 25.0, 0.0, 0.0, 0, 0, 0, 'Living Sword', 3, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), NULL, 4), (
  0, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, 'MonsterArmor', false, 0, 0, 0, 'Scaly Hide', 0, 0.0, 0.0, 0.0, 0, 0, 0, 'Scaly Hide', 0, 0, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 0), (
  0, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, 'MonsterArmor', false, 0, 0, 0, 'Tough Hide', 0, 0.0, 0.0, 0.0, 0, 0, 0, 'Tough Hide', 0, 0, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 0), (
  0, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, 'MonsterArmor', false, 0, 0, 0, 'Scales', 0, 0.0, 0.0, 0.0, 0, 0, 0, 'Scales', 0, 0, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 0), (
  0, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, 'SuitofArmor', false, 0, 0, 0, 'Suit of Armor', 0, 17.0, 12.0, 0.0, 0, 0, 0, 'Suit of Armor', 0, 0, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 0), (
  0, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, 'Breastplate', false, 0, 0, 0, 'Breastplate', 0, 9.0, 6.0, 0.0, 0, 0, 0, 'Breastplate', 0, 0, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 0), (
  0, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, 'Helmet', false, 0, 0, 0, 'Helmet', 0, 5.0, 3.0, 0.0, 0, 0, 0, 'Helmet', 0, 0, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 0), (
  0, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, 'Shield', false, 0, 0, 0, 'Shield', 0, 7.0, 5.0, 0.0, 0, 0, 0, 'Shield', 0, 0, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 0), (
  0, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, 'SuitofArmor', false, 0, 0, 0, 'Tremendous Armor', 0, 25.0, 18.0, 5.0, 0, 0, 0, 'Tremendous Armor', 0, 0, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 0), (
  0, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, 'Breastplate', false, 0, 0, 0, 'Silver Breastplate', 0, 25.0, 21.0, 15.0, 0, 0, 0, 'Silver Breastplate', 0, 0, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 0), (
  0, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, 'Helmet', false, 0, 0, 0, 'Gold Helmet', 0, 30.0, 27.0, 20.0, 0, 0, 0, 'Gold Helmet', 0, 0, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 0), (
  0, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, 'Shield', false, 0, 0, 0, 'Jade Shield', 0, 20.0, 16.0, 10.0, 0, 0, 0, 'Jade Shield', 0, 0, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 0), (
  2, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), NULL, NULL, 0, NULL, 0, 0, (SELECT horse_type_id FROM avalon.horse_type WHERE name='Pony'), 'Pony', false, 0, 0, 0, 'Gold Pony', 0, 16.0, 0.0, 0.0, 0, 0, 0, 'Gold Pony', 4, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 0), (
  2, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), NULL, NULL, 0, NULL, 0, 0, (SELECT horse_type_id FROM avalon.horse_type WHERE name='Pony'), 'Pony', false, 0, 0, 0, 'Pony1', 0, 16.0, 0.0, 0.0, 0, 0, 0, 'Pony', 5, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 0), (
  3, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), NULL, NULL, 0, NULL, 0, 0, (SELECT horse_type_id FROM avalon.horse_type WHERE name='Pony'), 'Pony', false, 0, 0, 0, 'Pony2', 0, 15.0, 0.0, 0.0, 0, 0, 0, 'Pony', 4, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 0), (
  3, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), NULL, NULL, 0, NULL, 0, 0, (SELECT horse_type_id FROM avalon.horse_type WHERE name='Pony'), 'Pony', false, 0, 0, 0, 'Pony3', 0, 14.0, 0.0, 0.0, 0, 0, 0, 'Pony', 5, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 0), (
  3, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), NULL, NULL, 0, NULL, 0, 0, (SELECT horse_type_id FROM avalon.horse_type WHERE name='Pony'), 'Pony', false, 0, 0, 0, 'Pony4', 0, 14.0, 0.0, 0.0, 0, 0, 0, 'Pony', 4, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 0), (
  3, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), NULL, NULL, 0, NULL, 0, 0, (SELECT horse_type_id FROM avalon.horse_type WHERE name='Pony'), 'Pony', false, 0, 0, 0, 'Pony5', 0, 12.0, 0.0, 0.0, 0, 0, 0, 'Pony', 5, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 0), (
  4, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), NULL, NULL, 0, NULL, 0, 0, (SELECT horse_type_id FROM avalon.horse_type WHERE name='Pony'), 'Pony', false, 0, 0, 0, 'Pony6', 0, 12.0, 0.0, 0.0, 0, 0, 0, 'Pony', 5, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 0), (
  2, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), NULL, NULL, 0, NULL, 0, 0, (SELECT horse_type_id FROM avalon.horse_type WHERE name='Pony'), 'Pony', false, 0, 0, 0, 'Pony7', 0, 0.0, 0.0, 0.0, 0, 0, 0, 'Pony', 5, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 0), (
  2, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), NULL, NULL, 0, NULL, 0, 0, (SELECT horse_type_id FROM avalon.horse_type WHERE name='Pony'), 'Pony', false, 0, 0, 0, 'Pony8', 0, 0.0, 0.0, 0.0, 0, 0, 0, 'Pony', 4, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 0), (
  6, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), NULL, NULL, 0, NULL, 0, 0, (SELECT horse_type_id FROM avalon.horse_type WHERE name='Workhorse'), 'Workhorse', false, 0, 0, 0, 'Workhorse1', 0, 12.0, 0.0, 0.0, 0, 0, 0, 'Workhorse', 8, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 0), (
  6, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), NULL, NULL, 0, NULL, 0, 0, (SELECT horse_type_id FROM avalon.horse_type WHERE name='Workhorse'), 'Workhorse', false, 0, 0, 0, 'Workhorse2', 0, 11.0, 0.0, 0.0, 0, 0, 0, 'Workhorse', 7, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 0), (
  5, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), NULL, NULL, 0, NULL, 0, 0, (SELECT horse_type_id FROM avalon.horse_type WHERE name='Workhorse'), 'Workhorse', false, 0, 0, 0, 'Workhorse3', 0, 11.0, 0.0, 0.0, 0, 0, 0, 'Workhorse', 7, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 0), (
  5, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), NULL, NULL, 0, NULL, 0, 0, (SELECT horse_type_id FROM avalon.horse_type WHERE name='Workhorse'), 'Workhorse', false, 0, 0, 0, 'Workhorse4', 0, 10.0, 0.0, 0.0, 0, 0, 0, 'Workhorse', 6, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 0), (
  4, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), NULL, NULL, 0, NULL, 0, 0, (SELECT horse_type_id FROM avalon.horse_type WHERE name='Workhorse'), 'Workhorse', false, 0, 0, 0, 'Workhorse5', 0, 9.0, 0.0, 0.0, 0, 0, 0, 'Workhorse', 6, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 0), (
  4, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), NULL, NULL, 0, NULL, 0, 0, (SELECT horse_type_id FROM avalon.horse_type WHERE name='Workhorse'), 'Workhorse', false, 0, 0, 0, 'Workhorse6', 0, 8.0, 0.0, 0.0, 0, 0, 0, 'Workhorse', 5, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 0), (
  6, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), NULL, NULL, 0, NULL, 0, 0, (SELECT horse_type_id FROM avalon.horse_type WHERE name='Workhorse'), 'Workhorse', false, 0, 0, 0, 'Workhorse7', 0, 0.0, 0.0, 0.0, 0, 0, 0, 'Workhorse', 6, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 0), (
  3, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), NULL, NULL, 0, NULL, 0, 0, (SELECT horse_type_id FROM avalon.horse_type WHERE name='Warhorse'), 'Warhorse', false, 0, 0, 0, 'Gold Warhorse', 0, 25.0, 0.0, 0.0, 0, 0, 0, 'Gold Warhorse', 5, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 0), (
  5, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), NULL, NULL, 0, NULL, 0, 0, (SELECT horse_type_id FROM avalon.horse_type WHERE name='Warhorse'), 'Warhorse', false, 0, 0, 0, 'Warhorse1', 0, 22.0, 0.0, 0.0, 0, 0, 0, 'Warhorse', 7, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 0), (
  4, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), NULL, NULL, 0, NULL, 0, 0, (SELECT horse_type_id FROM avalon.horse_type WHERE name='Warhorse'), 'Warhorse', false, 0, 0, 0, 'Warhorse2', 0, 20.0, 0.0, 0.0, 0, 0, 0, 'Warhorse', 7, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 0), (
  4, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), NULL, NULL, 0, NULL, 0, 0, (SELECT horse_type_id FROM avalon.horse_type WHERE name='Warhorse'), 'Warhorse', false, 0, 0, 0, 'Warhorse3', 0, 18.0, 0.0, 0.0, 0, 0, 0, 'Warhorse', 6, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 0), (
  3, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), NULL, NULL, 0, NULL, 0, 0, (SELECT horse_type_id FROM avalon.horse_type WHERE name='Warhorse'), 'Warhorse', false, 0, 0, 0, 'Warhorse4', 0, 0.0, 0.0, 0.0, 0, 0, 0, 'Warhorse', 5, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 0);

-- ADD io_item_data's RELATED groupss
INSERT INTO avalon.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Bane Sword'),
  (SELECT group_id FROM avalon.group WHERE name='TREASURE'));
INSERT INTO avalon.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Devil Sword'),
  (SELECT group_id FROM avalon.group WHERE name='TREASURE'));
INSERT INTO avalon.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Truesteel Sword'),
  (SELECT group_id FROM avalon.group WHERE name='TREASURE'));
INSERT INTO avalon.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Living Sword'),
  (SELECT group_id FROM avalon.group WHERE name='TREASURE'));
INSERT INTO avalon.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Tremendous Armor'),
  (SELECT group_id FROM avalon.group WHERE name='TREASURE'));
INSERT INTO avalon.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Silver Breastplate'),
  (SELECT group_id FROM avalon.group WHERE name='TREASURE'));
INSERT INTO avalon.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Gold Helmet'),
  (SELECT group_id FROM avalon.group WHERE name='TREASURE'));
INSERT INTO avalon.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Jade Shield'),
  (SELECT group_id FROM avalon.group WHERE name='TREASURE'));
INSERT INTO avalon.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Gold Pony'),
  (SELECT group_id FROM avalon.group WHERE name='TREASURE'));
INSERT INTO avalon.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Pony7'),
  (SELECT group_id FROM avalon.group WHERE name='BASHKARS'));
INSERT INTO avalon.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Pony8'),
  (SELECT group_id FROM avalon.group WHERE name='BASHKARS'));
INSERT INTO avalon.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Workhorse7'),
  (SELECT group_id FROM avalon.group WHERE name='PATROL'));
INSERT INTO avalon.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Gold Warhorse'),
  (SELECT group_id FROM avalon.group WHERE name='TREASURE'));

-- ADD io_item_data's RELATED protectionss
INSERT INTO avalon.io_item_data_protections_lookup(io_item_data_id, armor_protection_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Scaly Hide'),
  (SELECT armor_protection_id FROM avalon.armor_protection WHERE name='Smash'));
INSERT INTO avalon.io_item_data_protections_lookup(io_item_data_id, armor_protection_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Scaly Hide'),
  (SELECT armor_protection_id FROM avalon.armor_protection WHERE name='Swing'));
INSERT INTO avalon.io_item_data_protections_lookup(io_item_data_id, armor_protection_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Scaly Hide'),
  (SELECT armor_protection_id FROM avalon.armor_protection WHERE name='Thrust'));
INSERT INTO avalon.io_item_data_protections_lookup(io_item_data_id, armor_protection_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Tough Hide'),
  (SELECT armor_protection_id FROM avalon.armor_protection WHERE name='Smash'));
INSERT INTO avalon.io_item_data_protections_lookup(io_item_data_id, armor_protection_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Tough Hide'),
  (SELECT armor_protection_id FROM avalon.armor_protection WHERE name='Swing'));
INSERT INTO avalon.io_item_data_protections_lookup(io_item_data_id, armor_protection_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Tough Hide'),
  (SELECT armor_protection_id FROM avalon.armor_protection WHERE name='Thrust'));
INSERT INTO avalon.io_item_data_protections_lookup(io_item_data_id, armor_protection_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Scales'),
  (SELECT armor_protection_id FROM avalon.armor_protection WHERE name='Smash'));
INSERT INTO avalon.io_item_data_protections_lookup(io_item_data_id, armor_protection_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Scales'),
  (SELECT armor_protection_id FROM avalon.armor_protection WHERE name='Swing'));
INSERT INTO avalon.io_item_data_protections_lookup(io_item_data_id, armor_protection_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Scales'),
  (SELECT armor_protection_id FROM avalon.armor_protection WHERE name='Thrust'));
INSERT INTO avalon.io_item_data_protections_lookup(io_item_data_id, armor_protection_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Suit of Armor'),
  (SELECT armor_protection_id FROM avalon.armor_protection WHERE name='Smash'));
INSERT INTO avalon.io_item_data_protections_lookup(io_item_data_id, armor_protection_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Suit of Armor'),
  (SELECT armor_protection_id FROM avalon.armor_protection WHERE name='Swing'));
INSERT INTO avalon.io_item_data_protections_lookup(io_item_data_id, armor_protection_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Suit of Armor'),
  (SELECT armor_protection_id FROM avalon.armor_protection WHERE name='Thrust'));
INSERT INTO avalon.io_item_data_protections_lookup(io_item_data_id, armor_protection_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Breastplate'),
  (SELECT armor_protection_id FROM avalon.armor_protection WHERE name='Swing'));
INSERT INTO avalon.io_item_data_protections_lookup(io_item_data_id, armor_protection_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Breastplate'),
  (SELECT armor_protection_id FROM avalon.armor_protection WHERE name='Thrust'));
INSERT INTO avalon.io_item_data_protections_lookup(io_item_data_id, armor_protection_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Helmet'),
  (SELECT armor_protection_id FROM avalon.armor_protection WHERE name='Smash'));
INSERT INTO avalon.io_item_data_protections_lookup(io_item_data_id, armor_protection_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Shield'),
  (SELECT armor_protection_id FROM avalon.armor_protection WHERE name='Smash'));
INSERT INTO avalon.io_item_data_protections_lookup(io_item_data_id, armor_protection_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Shield'),
  (SELECT armor_protection_id FROM avalon.armor_protection WHERE name='Swing'));
INSERT INTO avalon.io_item_data_protections_lookup(io_item_data_id, armor_protection_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Shield'),
  (SELECT armor_protection_id FROM avalon.armor_protection WHERE name='Thrust'));
INSERT INTO avalon.io_item_data_protections_lookup(io_item_data_id, armor_protection_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Tremendous Armor'),
  (SELECT armor_protection_id FROM avalon.armor_protection WHERE name='Smash'));
INSERT INTO avalon.io_item_data_protections_lookup(io_item_data_id, armor_protection_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Tremendous Armor'),
  (SELECT armor_protection_id FROM avalon.armor_protection WHERE name='Swing'));
INSERT INTO avalon.io_item_data_protections_lookup(io_item_data_id, armor_protection_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Tremendous Armor'),
  (SELECT armor_protection_id FROM avalon.armor_protection WHERE name='Thrust'));
INSERT INTO avalon.io_item_data_protections_lookup(io_item_data_id, armor_protection_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Silver Breastplate'),
  (SELECT armor_protection_id FROM avalon.armor_protection WHERE name='Swing'));
INSERT INTO avalon.io_item_data_protections_lookup(io_item_data_id, armor_protection_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Silver Breastplate'),
  (SELECT armor_protection_id FROM avalon.armor_protection WHERE name='Thrust'));
INSERT INTO avalon.io_item_data_protections_lookup(io_item_data_id, armor_protection_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Gold Helmet'),
  (SELECT armor_protection_id FROM avalon.armor_protection WHERE name='Smash'));
INSERT INTO avalon.io_item_data_protections_lookup(io_item_data_id, armor_protection_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Jade Shield'),
  (SELECT armor_protection_id FROM avalon.armor_protection WHERE name='Smash'));
INSERT INTO avalon.io_item_data_protections_lookup(io_item_data_id, armor_protection_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Jade Shield'),
  (SELECT armor_protection_id FROM avalon.armor_protection WHERE name='Swing'));
INSERT INTO avalon.io_item_data_protections_lookup(io_item_data_id, armor_protection_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Jade Shield'),
  (SELECT armor_protection_id FROM avalon.armor_protection WHERE name='Thrust'));

-- ADD io_item_data's RELATED typess
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Medium Bow'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_WEAPON'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Medium Bow'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_BOW'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Light Bow'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_WEAPON'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Light Bow'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_BOW'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Crossbow'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_WEAPON'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Crossbow'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_BOW'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Spear'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_WEAPON'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Spear'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_2H'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Staff'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_WEAPON'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Staff'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_2H'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Great Sword'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_WEAPON'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Great Sword'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_2H'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Broadsword'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_WEAPON'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Broadsword'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_1H'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Morning Star'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_WEAPON'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Morning Star'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_1H'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Great Axe'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_WEAPON'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Great Axe'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_2H'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Thrusting Sword'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_WEAPON'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Thrusting Sword'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_1H'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Short Sword'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_WEAPON'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Short Sword'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_1H'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Axe'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_WEAPON'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Axe'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_1H'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Mace'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_WEAPON'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Mace'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_1H'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Bane Sword'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_WEAPON'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Bane Sword'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_2H'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Devil Sword'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_WEAPON'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Devil Sword'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_1H'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Truesteel Sword'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_WEAPON'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Truesteel Sword'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_1H'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Living Sword'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_WEAPON'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Living Sword'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_1H'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Scaly Hide'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_ARMOR'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Scaly Hide'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_SUIT_OF_ARMOR'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Tough Hide'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_ARMOR'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Tough Hide'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_SUIT_OF_ARMOR'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Scales'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_ARMOR'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Scales'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_SUIT_OF_ARMOR'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Suit of Armor'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_ARMOR'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Suit of Armor'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_SUIT_OF_ARMOR'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Breastplate'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_ARMOR'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Breastplate'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_BREASTPLATE'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Helmet'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_ARMOR'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Helmet'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_HELMET'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Shield'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_ARMOR'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Shield'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_SHIELD'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Tremendous Armor'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_ARMOR'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Tremendous Armor'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_SUIT_OF_ARMOR'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Silver Breastplate'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_ARMOR'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Silver Breastplate'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_BREASTPLATE'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Gold Helmet'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_ARMOR'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Gold Helmet'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_HELMET'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Jade Shield'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_ARMOR'));
INSERT INTO avalon.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Jade Shield'),
  (SELECT object_type_id FROM avalon.object_type WHERE code='OBJECT_TYPE_SHIELD'));

-- ADD io_item_data's RELATED modifierss


-- ADD IO_NPC_DATAS
INSERT INTO avalon.io_npc_data(alerted_attack_speed, alerted_attack_stars, alerted_attack_weight, alerted_move, fame_bounty, gender, gold_bounty, internal_script, move_strength, name, natural_weapon_length, natural_weapon_type, notoriety, npc_flags, title, unalerted_attack_speed, unalerted_attack_spell, unalerted_attack_stars, unalerted_attack_weight, unalerted_move, vulnerability, wage, weight) VALUES(
  4, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 3, 0, (SELECT gender_id FROM avalon.gender WHERE name='Female'), 2, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 'Bashkar Leader', 0, NULL, 4, 0, 'Raider', 4, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L')), (
  3, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 3, 0, (SELECT gender_id FROM avalon.gender WHERE name='Male'), 2, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 'Bashkar I', 0, NULL, 4, 0, 'Raider', 3, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 3, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L')), (
  3, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 3, 0, (SELECT gender_id FROM avalon.gender WHERE name='Male'), 2, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 'Bashkar II', 0, NULL, 4, 0, 'Raider', 4, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L')), (
  3, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 4, 0, (SELECT gender_id FROM avalon.gender WHERE name='Female'), 2, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 'Bashkar III', 0, NULL, 4, 0, 'Raider', 4, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L')), (
  2, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 4, 0, (SELECT gender_id FROM avalon.gender WHERE name='Female'), 2, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 'Bashkar IV', 0, NULL, 4, 0, 'Raider', 5, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L')), (
  2, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 4, 0, (SELECT gender_id FROM avalon.gender WHERE name='Male'), 2, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 'Bashkar V', 0, NULL, 4, 0, 'Raider', 2, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L')), (
  4, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 3, 0, (SELECT gender_id FROM avalon.gender WHERE name='Male'), 2, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 'Company Leader', 0, NULL, 3, 0, 'Shortswordsman', 3, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 5, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M')), (
  4, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 3, 0, (SELECT gender_id FROM avalon.gender WHERE name='Male'), 2, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 'Company I', 0, NULL, 3, 0, 'Shortswordsman', 3, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M')), (
  4, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 5, 0, (SELECT gender_id FROM avalon.gender WHERE name='Female'), 2, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 'Company II', 0, NULL, 3, 0, 'Pikeman', 6, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M')), (
  4, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 5, 0, (SELECT gender_id FROM avalon.gender WHERE name='Male'), 2, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 'Company III', 0, NULL, 3, 0, 'Pikeman', 6, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M')), (
  4, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 5, 0, (SELECT gender_id FROM avalon.gender WHERE name='Female'), 2, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 'Company IV', 0, NULL, 3, 0, 'Pikeman', 6, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M')), (
  5, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 5, 0, (SELECT gender_id FROM avalon.gender WHERE name='Male'), 4, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 'Company V', 0, NULL, 6, 0, 'Greatswordsman', 4, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 6, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H')), (
  1, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 4, 0, (SELECT gender_id FROM avalon.gender WHERE name='Female'), 2, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 'Company VI', 0, NULL, 4, 0, 'Crossbowman', 6, NULL, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 5, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M')), (
  4, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 6, 0, (SELECT gender_id FROM avalon.gender WHERE name='Male'), 4, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 'Guard Leader', 0, NULL, 6, 0, 'Greatswordsman', 5, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 5, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H')), (
  4, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 6, 0, (SELECT gender_id FROM avalon.gender WHERE name='Female'), 4, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 'Guard I', 0, NULL, 6, 0, 'Greatswordsman', 5, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 5, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H')), (
  4, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 6, 0, (SELECT gender_id FROM avalon.gender WHERE name='Female'), 4, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 'Guard II', 0, NULL, 6, 0, 'Greatswordsman', 5, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 5, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H')), (
  3, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 4, 0, (SELECT gender_id FROM avalon.gender WHERE name='Female'), 2, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 'Lancer Leader', 0, NULL, 4, 0, 'Lancer', 5, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 3, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L')), (
  3, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 4, 0, (SELECT gender_id FROM avalon.gender WHERE name='Female'), 2, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 'Lancer I', 0, NULL, 4, 0, 'Lancer', 6, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L')), (
  4, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 4, 0, (SELECT gender_id FROM avalon.gender WHERE name='Male'), 2, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 'Lancer II', 0, NULL, 4, 0, 'Lancer', 4, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 3, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L')), (
  4, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 4, 0, (SELECT gender_id FROM avalon.gender WHERE name='Male'), 2, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 'Lancer III', 0, NULL, 4, 0, 'Lancer', 4, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 5, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L')), (
  4, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 6, 0, (SELECT gender_id FROM avalon.gender WHERE name='Male'), 8, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 'Order Leader', 0, NULL, 12, 0, 'Knight', 6, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 8, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H')), (
  5, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 5, 0, (SELECT gender_id FROM avalon.gender WHERE name='Male'), 8, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 'Order I', 0, NULL, 12, 0, 'Knight', 4, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 6, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 8, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H')), (
  5, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 6, 0, (SELECT gender_id FROM avalon.gender WHERE name='Male'), 8, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 'Order II', 0, NULL, 12, 0, 'Knight', 5, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 5, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 8, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H')), (
  5, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 6, 0, (SELECT gender_id FROM avalon.gender WHERE name='Male'), 8, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 'Order III', 0, NULL, 12, 0, 'Knight', 4, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 6, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 8, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H')), (
  2, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 5, 0, (SELECT gender_id FROM avalon.gender WHERE name='Male'), 2, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 'Patrol Leader', 0, NULL, 3, 0, 'Shortswordsman', 4, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 3, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M')), (
  4, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 4, 0, (SELECT gender_id FROM avalon.gender WHERE name='Male'), 2, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 'Patrol I', 0, NULL, 3, 0, 'Shortswordsman', 4, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 3, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M')), (
  4, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 3, 0, (SELECT gender_id FROM avalon.gender WHERE name='Male'), 2, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 'Patrol II', 0, NULL, 3, 0, 'Shortswordsman', 5, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 3, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M')), (
  4, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 2, 0, (SELECT gender_id FROM avalon.gender WHERE name='Male'), 1, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 'Rogue Leader', 0, NULL, 2, 0, 'Assassin', 3, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M')), (
  3, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 5, 0, (SELECT gender_id FROM avalon.gender WHERE name='Male'), 4, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 'Rogue I', 0, NULL, 6, 0, 'Greataxeman', 5, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H')), (
  3, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 5, 0, (SELECT gender_id FROM avalon.gender WHERE name='Male'), 4, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 'Rogue II', 0, NULL, 6, 0, 'Greataxeman', 5, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H')), (
  3, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 4, 0, (SELECT gender_id FROM avalon.gender WHERE name='Female'), 2, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 'Rogue III', 0, NULL, 3, 0, 'Shortswordsman', 5, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 3, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M')), (
  1, 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 4, 0, (SELECT gender_id FROM avalon.gender WHERE name='Male'), 2, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 'Rogue IV', 0, NULL, 4, 0, 'Archer', 0, NULL, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='N'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M')), (
  4, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 2, 0, (SELECT gender_id FROM avalon.gender WHERE name='Female'), 1, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 'Rogue V', 0, NULL, 2, 0, 'Assassin', 3, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M')), (
  3, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 4, 0, (SELECT gender_id FROM avalon.gender WHERE name='Female'), 1, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 'Rogue VI', 0, NULL, 2, 0, 'Swordsman', 3, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 5, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M')), (
  3, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 4, 0, (SELECT gender_id FROM avalon.gender WHERE name='Female'), 1, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 'Rogue VII', 0, NULL, 2, 0, 'Swordsman', 3, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 5, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M')), (
  5, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 5, 0, (SELECT gender_id FROM avalon.gender WHERE name='Male'), 4, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 'Soldier Leader', 0, NULL, 6, 0, 'Greatswordsman', 4, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 6, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H')), (
  4, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 5, 0, (SELECT gender_id FROM avalon.gender WHERE name='Male'), 2, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 'Soldier I', 0, NULL, 3, 0, 'Pikeman', 6, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M')), (
  4, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 5, 0, (SELECT gender_id FROM avalon.gender WHERE name='Male'), 2, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 'Soldier II', 0, NULL, 3, 0, 'Pikeman', 6, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M')), (
  1, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 4, 0, (SELECT gender_id FROM avalon.gender WHERE name='Male'), 2, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 'Soldier III', 0, NULL, 4, 0, 'Crossbowman', 6, NULL, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 5, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M')), (
  1, 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 4, 0, (SELECT gender_id FROM avalon.gender WHERE name='Female'), 2, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 'Woodfolk Leader', 0, NULL, 4, 0, 'Archer', 0, NULL, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='N'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M')), (
  1, 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 4, 0, (SELECT gender_id FROM avalon.gender WHERE name='Female'), 2, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 'Woodfolk I', 0, NULL, 4, 0, 'Archer', 0, NULL, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='N'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M')), (
  1, 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 4, 0, (SELECT gender_id FROM avalon.gender WHERE name='Male'), 2, NULL, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 'Woodfolk II', 0, NULL, 4, 0, 'Archer', 0, NULL, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='N'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M')), (
  6, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 4, 12, NULL, 0, NULL, NULL, 'Tremendous Flying Dragon', 0, NULL, 12, 0, 'Tremendous Flying Dragon', 3, NULL, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 0, NULL), (
  3, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 0, 0, NULL, 0, NULL, NULL, 'Tremendous Flying Dragon Head', 7, (SELECT attack_type_id FROM avalon.attack_type WHERE name='Striking'), 0, 0, 'Tremendous Flying Dragon Head', 3, NULL, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 0, NULL, 0, NULL), (
  3, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 6, 10, NULL, 0, NULL, NULL, 'Tremendous Dragon', 0, NULL, 10, 0, 'Tremendous Dragon', 5, NULL, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 6, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 0, NULL), (
  4, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 0, 0, NULL, 0, NULL, NULL, 'Tremendous Dragon Head', 9, (SELECT attack_type_id FROM avalon.attack_type WHERE name='Striking'), 0, 0, 'Tremendous Dragon Head', 4, NULL, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 0, NULL, 0, NULL), (
  4, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 6, 8, NULL, 0, NULL, NULL, 'Giant', 0, NULL, 8, 0, 'Giant', 5, NULL, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 5, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 0, NULL), (
  4, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 0, 0, NULL, 0, NULL, NULL, 'Giant Club', 8, (SELECT attack_type_id FROM avalon.attack_type WHERE name='Striking'), 0, 0, 'Giant Club', 4, NULL, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 0, NULL, 0, NULL), (
  5, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 2, 8, NULL, 0, NULL, NULL, 'Winged Demon', 17, (SELECT attack_type_id FROM avalon.attack_type WHERE name='Power of the Pit'), 8, 0, 'Winged Demon', 3, (SELECT magic_type_id FROM avalon.magic_type WHERE code='V'), 0, NULL, 3, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 0, NULL), (
  4, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 4, 8, NULL, 0, NULL, NULL, 'Demon', 17, (SELECT attack_type_id FROM avalon.attack_type WHERE name='Power of the Pit'), 8, 0, 'Demon', 2, (SELECT magic_type_id FROM avalon.magic_type WHERE code='V'), 0, NULL, 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 0, NULL), (
  2, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 6, 8, NULL, 0, NULL, NULL, 'Tremendous Troll', 0, NULL, 8, 0, 'Tremendous Troll', 4, NULL, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 0, NULL), (
  4, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 3, 8, NULL, 0, NULL, NULL, 'Octopus', 0, NULL, 8, 0, 'Octopus', 4, NULL, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 0, NULL), (
  4, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 5, 7, NULL, 0, NULL, NULL, 'Tremendous Serpent', 0, NULL, 7, 0, 'Tremendous Serpent', 4, NULL, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 0, NULL), (
  5, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 4, 6, NULL, 0, NULL, NULL, 'Tremendous Spider', 0, NULL, 6, 0, 'Tremendous Spider', 4, NULL, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 3, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 0, NULL), (
  4, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 3, 5, NULL, 0, NULL, NULL, 'Heavy Flying Dragon', 0, NULL, 5, 0, 'Heavy Flying Dragon', 4, NULL, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 0, NULL), (
  4, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 3, 5, NULL, 0, NULL, NULL, 'Heavy Dragon', 0, NULL, 5, 0, 'Heavy Dragon', 4, NULL, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 0, NULL), (
  5, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 4, 5, NULL, 0, NULL, NULL, 'Heavy Troll', 0, NULL, 5, 0, 'Heavy Troll', 4, NULL, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 0, NULL), (
  5, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 4, 5, NULL, 0, NULL, NULL, 'Heavy Serpent', 0, NULL, 5, 0, 'Heavy Serpent', 4, NULL, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 3, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 0, NULL), (
  3, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 2, 3, NULL, 0, NULL, NULL, 'Giant Bat', 0, NULL, 3, 0, 'Giant Bat', 2, NULL, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 3, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 0, NULL), (
  5, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 4, 3, NULL, 0, NULL, NULL, 'Heavy Spider', 0, NULL, 3, 0, 'Heavy Spider', 4, NULL, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 3, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 0, NULL), (
  4, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 3, 2, NULL, 0, NULL, NULL, 'Imp', 17, (SELECT attack_type_id FROM avalon.attack_type WHERE name='Curse'), 1, 0, 'Imp', 2, (SELECT magic_type_id FROM avalon.magic_type WHERE code='V'), 0, NULL, 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 0, NULL), (
  5, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 5, 1, NULL, 0, NULL, NULL, 'Goblin With Spear', 0, NULL, 1, 0, 'Goblin Spearman', 0, NULL, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='N'), 3, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 0, NULL), (
  5, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 5, 1, NULL, 0, NULL, NULL, 'Goblin With Great Sword', 0, NULL, 1, 0, 'Goblin Landesknecht', 6, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 3, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 0, NULL), (
  4, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 4, 1, NULL, 0, NULL, NULL, 'Goblin With Axe', 0, NULL, 1, 0, 'Goblin Axeman', 4, NULL, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 3, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 0, NULL), (
  2, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 2, 1, NULL, 0, NULL, NULL, 'Viper', 0, NULL, 2, 0, 'Viper', 4, NULL, 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 0, NULL), (
  2, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 2, 0, NULL, 0, NULL, NULL, 'Ghost', 0, NULL, 2, 0, 'Ghost', 4, NULL, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 0, NULL), (
  5, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H'), 4, 0, NULL, 0, NULL, NULL, 'Ogre', 0, NULL, 2, 0, 'Ogre', 5, NULL, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 5, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 0, NULL), (
  4, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 4, 0, NULL, 0, NULL, NULL, 'Wolf1', 0, NULL, 1, 0, 'Wolf', 4, NULL, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 3, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 0, NULL), (
  3, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'), 4, 0, NULL, 0, NULL, NULL, 'Wolf2', 0, NULL, 1, 0, 'Wolf', 5, NULL, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 3, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 0, NULL);

-- ADD io_npc_data's RELATED groupss
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Bashkar Leader'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Bashkar Leader'),
  (SELECT group_id FROM avalon.group WHERE name='BASHKARS'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Bashkar I'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Bashkar I'),
  (SELECT group_id FROM avalon.group WHERE name='BASHKARS'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Bashkar II'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Bashkar II'),
  (SELECT group_id FROM avalon.group WHERE name='BASHKARS'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Bashkar III'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Bashkar III'),
  (SELECT group_id FROM avalon.group WHERE name='BASHKARS'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Bashkar IV'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Bashkar IV'),
  (SELECT group_id FROM avalon.group WHERE name='BASHKARS'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Bashkar V'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Bashkar V'),
  (SELECT group_id FROM avalon.group WHERE name='BASHKARS'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company Leader'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company Leader'),
  (SELECT group_id FROM avalon.group WHERE name='COMPANY'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company I'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company I'),
  (SELECT group_id FROM avalon.group WHERE name='COMPANY'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company II'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company II'),
  (SELECT group_id FROM avalon.group WHERE name='COMPANY'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company III'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company III'),
  (SELECT group_id FROM avalon.group WHERE name='COMPANY'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company IV'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company IV'),
  (SELECT group_id FROM avalon.group WHERE name='COMPANY'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company V'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company V'),
  (SELECT group_id FROM avalon.group WHERE name='COMPANY'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company VI'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company VI'),
  (SELECT group_id FROM avalon.group WHERE name='COMPANY'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Guard Leader'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Guard Leader'),
  (SELECT group_id FROM avalon.group WHERE name='GUARD'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Guard I'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Guard I'),
  (SELECT group_id FROM avalon.group WHERE name='GUARD'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Guard II'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Guard II'),
  (SELECT group_id FROM avalon.group WHERE name='GUARD'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Lancer Leader'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Lancer Leader'),
  (SELECT group_id FROM avalon.group WHERE name='LANCERS'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Lancer I'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Lancer I'),
  (SELECT group_id FROM avalon.group WHERE name='LANCERS'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Lancer II'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Lancer II'),
  (SELECT group_id FROM avalon.group WHERE name='LANCERS'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Lancer III'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Lancer III'),
  (SELECT group_id FROM avalon.group WHERE name='LANCERS'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Order Leader'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Order Leader'),
  (SELECT group_id FROM avalon.group WHERE name='ORDER'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Order I'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Order I'),
  (SELECT group_id FROM avalon.group WHERE name='ORDER'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Order II'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Order II'),
  (SELECT group_id FROM avalon.group WHERE name='ORDER'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Order III'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Order III'),
  (SELECT group_id FROM avalon.group WHERE name='ORDER'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Patrol Leader'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Patrol Leader'),
  (SELECT group_id FROM avalon.group WHERE name='PATROL'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Patrol I'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Patrol I'),
  (SELECT group_id FROM avalon.group WHERE name='PATROL'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Patrol II'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Patrol II'),
  (SELECT group_id FROM avalon.group WHERE name='PATROL'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Rogue Leader'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Rogue Leader'),
  (SELECT group_id FROM avalon.group WHERE name='ROGUES'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Rogue I'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Rogue I'),
  (SELECT group_id FROM avalon.group WHERE name='ROGUES'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Rogue II'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Rogue II'),
  (SELECT group_id FROM avalon.group WHERE name='ROGUES'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Rogue III'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Rogue III'),
  (SELECT group_id FROM avalon.group WHERE name='ROGUES'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Rogue IV'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Rogue IV'),
  (SELECT group_id FROM avalon.group WHERE name='ROGUES'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Rogue V'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Rogue V'),
  (SELECT group_id FROM avalon.group WHERE name='ROGUES'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Rogue VI'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Rogue VI'),
  (SELECT group_id FROM avalon.group WHERE name='ROGUES'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Rogue VII'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Rogue VII'),
  (SELECT group_id FROM avalon.group WHERE name='ROGUES'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Soldier Leader'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Soldier Leader'),
  (SELECT group_id FROM avalon.group WHERE name='SOLDIERS'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Soldier I'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Soldier I'),
  (SELECT group_id FROM avalon.group WHERE name='SOLDIERS'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Soldier II'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Soldier II'),
  (SELECT group_id FROM avalon.group WHERE name='SOLDIERS'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Soldier III'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Soldier III'),
  (SELECT group_id FROM avalon.group WHERE name='SOLDIERS'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Woodfolk Leader'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Woodfolk Leader'),
  (SELECT group_id FROM avalon.group WHERE name='WOODFOLK'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Woodfolk I'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Woodfolk I'),
  (SELECT group_id FROM avalon.group WHERE name='WOODFOLK'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Woodfolk II'),
  (SELECT group_id FROM avalon.group WHERE name='NATIVE'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Woodfolk II'),
  (SELECT group_id FROM avalon.group WHERE name='WOODFOLK'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Tremendous Flying Dragon'),
  (SELECT group_id FROM avalon.group WHERE name='DRAGONS'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Tremendous Flying Dragon'),
  (SELECT group_id FROM avalon.group WHERE name='FLYING'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Tremendous Flying Dragon Head'),
  (SELECT group_id FROM avalon.group WHERE name='MONSTER_WEAPON'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Tremendous Dragon'),
  (SELECT group_id FROM avalon.group WHERE name='DRAGONS'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Tremendous Dragon Head'),
  (SELECT group_id FROM avalon.group WHERE name='MONSTER_WEAPON'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Giant Club'),
  (SELECT group_id FROM avalon.group WHERE name='MONSTER_WEAPON'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Winged Demon'),
  (SELECT group_id FROM avalon.group WHERE name='DEMONS'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Winged Demon'),
  (SELECT group_id FROM avalon.group WHERE name='FLYING'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Demon'),
  (SELECT group_id FROM avalon.group WHERE name='DEMONS'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Heavy Flying Dragon'),
  (SELECT group_id FROM avalon.group WHERE name='DRAGONS'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Heavy Flying Dragon'),
  (SELECT group_id FROM avalon.group WHERE name='FLYING'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Heavy Dragon'),
  (SELECT group_id FROM avalon.group WHERE name='DRAGONS'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Giant Bat'),
  (SELECT group_id FROM avalon.group WHERE name='FLYING'));
INSERT INTO avalon.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Imp'),
  (SELECT group_id FROM avalon.group WHERE name='DEMONS'));

-- ADD io_npc_data's RELATED inventory_itemss
INSERT INTO avalon.io_npc_data_inventory_items_lookup(io_npc_data_id, io_item_data_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Bashkar Leader'),
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Pony2'));
INSERT INTO avalon.io_npc_data_inventory_items_lookup(io_npc_data_id, io_item_data_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Bashkar I'),
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Pony3'));
INSERT INTO avalon.io_npc_data_inventory_items_lookup(io_npc_data_id, io_item_data_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Bashkar II'),
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Pony6'));
INSERT INTO avalon.io_npc_data_inventory_items_lookup(io_npc_data_id, io_item_data_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Bashkar III'),
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Pony4'));
INSERT INTO avalon.io_npc_data_inventory_items_lookup(io_npc_data_id, io_item_data_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Bashkar IV'),
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Pony5'));
INSERT INTO avalon.io_npc_data_inventory_items_lookup(io_npc_data_id, io_item_data_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Bashkar V'),
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Pony7'));
INSERT INTO avalon.io_npc_data_inventory_items_lookup(io_npc_data_id, io_item_data_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Lancer Leader'),
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Pony2'));
INSERT INTO avalon.io_npc_data_inventory_items_lookup(io_npc_data_id, io_item_data_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Lancer I'),
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Pony3'));
INSERT INTO avalon.io_npc_data_inventory_items_lookup(io_npc_data_id, io_item_data_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Lancer II'),
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Pony6'));
INSERT INTO avalon.io_npc_data_inventory_items_lookup(io_npc_data_id, io_item_data_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Lancer III'),
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Pony8'));
INSERT INTO avalon.io_npc_data_inventory_items_lookup(io_npc_data_id, io_item_data_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Order Leader'),
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Warhorse4'));
INSERT INTO avalon.io_npc_data_inventory_items_lookup(io_npc_data_id, io_item_data_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Order I'),
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Warhorse3'));
INSERT INTO avalon.io_npc_data_inventory_items_lookup(io_npc_data_id, io_item_data_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Order II'),
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Warhorse1'));
INSERT INTO avalon.io_npc_data_inventory_items_lookup(io_npc_data_id, io_item_data_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Order III'),
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Warhorse2'));
INSERT INTO avalon.io_npc_data_inventory_items_lookup(io_npc_data_id, io_item_data_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Patrol Leader'),
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Workhorse3'));
INSERT INTO avalon.io_npc_data_inventory_items_lookup(io_npc_data_id, io_item_data_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Patrol I'),
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Workhorse2'));
INSERT INTO avalon.io_npc_data_inventory_items_lookup(io_npc_data_id, io_item_data_id) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Patrol II'),
  (SELECT io_item_data_id FROM avalon.io_item_data WHERE name='Workhorse7'));

-- ADD io_npc_data's RELATED equipped_itemss
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Bashkar Leader'),
  'EQUIP_SLOT_WEAPON',
  'Short Sword');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Bashkar I'),
  'EQUIP_SLOT_WEAPON',
  'Short Sword');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Bashkar II'),
  'EQUIP_SLOT_WEAPON',
  'Short Sword');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Bashkar III'),
  'EQUIP_SLOT_WEAPON',
  'Short Sword');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Bashkar IV'),
  'EQUIP_SLOT_WEAPON',
  'Short Sword');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Bashkar V'),
  'EQUIP_SLOT_WEAPON',
  'Short Sword');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company Leader'),
  'EQUIP_SLOT_WEAPON',
  'Short Sword');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company Leader'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company I'),
  'EQUIP_SLOT_WEAPON',
  'Short Sword');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company I'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company I'),
  'EQUIP_SLOT_SHIELD',
  'Shield');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company II'),
  'EQUIP_SLOT_WEAPON',
  'Spear');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company II'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company III'),
  'EQUIP_SLOT_WEAPON',
  'Spear');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company III'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company IV'),
  'EQUIP_SLOT_WEAPON',
  'Spear');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company IV'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company V'),
  'EQUIP_SLOT_WEAPON',
  'Great Sword');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company V'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company VI'),
  'EQUIP_SLOT_WEAPON',
  'Crossbow');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Company VI'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Guard Leader'),
  'EQUIP_SLOT_WEAPON',
  'Great Sword');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Guard Leader'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Guard I'),
  'EQUIP_SLOT_WEAPON',
  'Great Sword');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Guard I'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Guard II'),
  'EQUIP_SLOT_WEAPON',
  'Great Sword');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Guard II'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Lancer Leader'),
  'EQUIP_SLOT_WEAPON',
  'Spear');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Lancer I'),
  'EQUIP_SLOT_WEAPON',
  'Spear');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Lancer II'),
  'EQUIP_SLOT_WEAPON',
  'Spear');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Lancer III'),
  'EQUIP_SLOT_WEAPON',
  'Spear');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Order Leader'),
  'EQUIP_SLOT_WEAPON',
  'Broadsword');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Order Leader'),
  'EQUIP_SLOT_ARMOR',
  'Suit of Armor');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Order Leader'),
  'EQUIP_SLOT_HELMET',
  'Helmet');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Order Leader'),
  'EQUIP_SLOT_SHIELD',
  'Shield');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Order I'),
  'EQUIP_SLOT_WEAPON',
  'Broadsword');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Order I'),
  'EQUIP_SLOT_ARMOR',
  'Suit of Armor');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Order I'),
  'EQUIP_SLOT_HELMET',
  'Helmet');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Order I'),
  'EQUIP_SLOT_SHIELD',
  'Shield');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Order II'),
  'EQUIP_SLOT_WEAPON',
  'Broadsword');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Order II'),
  'EQUIP_SLOT_ARMOR',
  'Suit of Armor');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Order II'),
  'EQUIP_SLOT_HELMET',
  'Helmet');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Order II'),
  'EQUIP_SLOT_SHIELD',
  'Shield');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Order III'),
  'EQUIP_SLOT_WEAPON',
  'Broadsword');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Order III'),
  'EQUIP_SLOT_ARMOR',
  'Suit of Armor');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Order III'),
  'EQUIP_SLOT_HELMET',
  'Helmet');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Order III'),
  'EQUIP_SLOT_SHIELD',
  'Shield');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Patrol Leader'),
  'EQUIP_SLOT_WEAPON',
  'Short Sword');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Patrol Leader'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Patrol I'),
  'EQUIP_SLOT_WEAPON',
  'Short Sword');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Patrol I'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Patrol II'),
  'EQUIP_SLOT_WEAPON',
  'Short Sword');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Patrol II'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Rogue Leader'),
  'EQUIP_SLOT_WEAPON',
  'Short Sword');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Rogue I'),
  'EQUIP_SLOT_WEAPON',
  'Great Axe');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Rogue II'),
  'EQUIP_SLOT_WEAPON',
  'Great Axe');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Rogue III'),
  'EQUIP_SLOT_WEAPON',
  'Short Sword');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Rogue III'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Rogue IV'),
  'EQUIP_SLOT_WEAPON',
  'Light Bow');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Rogue V'),
  'EQUIP_SLOT_WEAPON',
  'Short Sword');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Rogue VI'),
  'EQUIP_SLOT_WEAPON',
  'Thrusting Sword');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Rogue VII'),
  'EQUIP_SLOT_WEAPON',
  'Thrusting Sword');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Soldier Leader'),
  'EQUIP_SLOT_WEAPON',
  'Great Sword');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Soldier Leader'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Soldier I'),
  'EQUIP_SLOT_WEAPON',
  'Spear');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Soldier I'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Soldier II'),
  'EQUIP_SLOT_WEAPON',
  'Spear');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Soldier II'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Soldier III'),
  'EQUIP_SLOT_WEAPON',
  'Crossbow');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Soldier III'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Woodfolk Leader'),
  'EQUIP_SLOT_WEAPON',
  'Light Bow');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Woodfolk I'),
  'EQUIP_SLOT_WEAPON',
  'Light Bow');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Woodfolk II'),
  'EQUIP_SLOT_WEAPON',
  'Light Bow');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Tremendous Flying Dragon'),
  'EQUIP_SLOT_ARMOR',
  'Scaly Hide');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Tremendous Dragon'),
  'EQUIP_SLOT_ARMOR',
  'Scaly Hide');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Tremendous Troll'),
  'EQUIP_SLOT_ARMOR',
  'Scaly Hide');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Tremendous Serpent'),
  'EQUIP_SLOT_ARMOR',
  'Scaly Hide');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Heavy Flying Dragon'),
  'EQUIP_SLOT_ARMOR',
  'Tough Hide');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Heavy Dragon'),
  'EQUIP_SLOT_ARMOR',
  'Tough Hide');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Heavy Troll'),
  'EQUIP_SLOT_ARMOR',
  'Tough Hide');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Heavy Serpent'),
  'EQUIP_SLOT_ARMOR',
  'Tough Hide');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Heavy Spider'),
  'EQUIP_SLOT_ARMOR',
  'Tough Hide');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Goblin With Spear'),
  'EQUIP_SLOT_WEAPON',
  'Spear');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Goblin With Great Sword'),
  'EQUIP_SLOT_WEAPON',
  'Great Sword');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Goblin With Axe'),
  'EQUIP_SLOT_WEAPON',
  'Axe');
INSERT INTO avalon.io_npc_data_equipped_items_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM avalon.io_npc_data WHERE name='Viper'),
  'EQUIP_SLOT_ARMOR',
  'Scales');


-- ADD IO_PC_DATAS
INSERT INTO avalon.io_pc_data(advantage1, advantage2, evaluation, gender, glyph, gold, interface_flags, name, stage_one_name, stage_one_spells, stage_two_name, stage_two_spells, stage_three_name, stage_three_spells, stage_four_spells, vulnerability) VALUES(
  (SELECT advantage_id FROM avalon.advantage WHERE name='AIM'), (SELECT advantage_id FROM avalon.advantage WHERE name='STAMINA'), 'The Amazon is a skilled warrior and soldier, with excellent speed and fair strength. She is deadliest against Medium and Heavy opponents. She should avoid or run from Tremendous and armored Heavy monsters, who are too dangerous for her to handle even if she obtains heavier equipment.', (SELECT gender_id FROM avalon.gender WHERE name='Female'), 'icon-swordwoman', 0.0, 0, 'Amazon', 'Scout', 0, 'Warrior', 0, 'Champion', 0, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M')), (
  (SELECT advantage_id FROM avalon.advantage WHERE name='ROBUST'), (SELECT advantage_id FROM avalon.advantage WHERE name='BERSERK'), 'The Berserker is a powerful fighting man with the strength to dispatch the largest monsters and humans and the speed to outmaneuver them. He is not fast enough to escape faster opponents, so against them he must rely on going berserk to survive and on his robust health to help him recover from his wounds.', (SELECT gender_id FROM avalon.gender WHERE name='Male'), 'icon-viking-head', 0.0, 0, 'Berserker', 'Youth', 0, 'Raider', 0, 'Viking', 0, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H')), (
  (SELECT advantage_id FROM avalon.advantage WHERE name='AIM'), (SELECT advantage_id FROM avalon.advantage WHERE name='FEAR'), 'The Black Knight is a deadly and feared veteran of many battlefields. He is at his best against humans. He is too weak to dispatch Tremendous monsters until he gets a heavier weapon.', (SELECT gender_id FROM avalon.gender WHERE name='Male'), 'icon-black-knight-helm', 0.0, 0, 'Black Knight', 'Spearman', 0, 'Mercenary', 0, 'Heavy Footman', 0, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M')), (
  (SELECT advantage_id FROM avalon.advantage WHERE name='AIM'), (SELECT advantage_id FROM avalon.advantage WHERE name='REPUTATION'), 'The Captain is a renowned hero of many wars. His strength, weapon and armor make him dangerous when facing Medium or Heavy opponents, but he needs heavier equipment to deal with heavily armored foes. He is not really strong enough to face Tremendous foes.', (SELECT gender_id FROM avalon.gender WHERE name='Male'), 'icon-swordman', 0.0, 0, 'Captain', 'Spearman', 0, 'Soldier', 0, 'Lieutenant', 0, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M')), (
  (SELECT advantage_id FROM avalon.advantage WHERE name='CONCEALMENT'), (SELECT advantage_id FROM avalon.advantage WHERE name='PEACE WITH NATURE'), 'The Druid is an elusive magician at peace with nature. Since he cannot deal with most opponents even if he gets a weapon, he must operate alone, avoiding and hiding from monsters and running from them at need. He needs to win without combat, if possible.', (SELECT gender_id FROM avalon.gender WHERE name='Male'), 'icon-holy-oak', 0.0, 0, 'Druid', 'Herbalist', 0, 'Animalist', 0, 'Soothsayer', 1, 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L')), (
  (SELECT advantage_id FROM avalon.advantage WHERE name='SHORT LEGS'), (SELECT advantage_id FROM avalon.advantage WHERE name='CAVE KNOWLEDGE'), 'The Dwarf is a slow and powerful fighter who is at his best in the caves, where he is respected as a master of searching, hiding and fighting the monsters that live there. Outside of the caves he is slow and clumsy. In battle, his ability to duck allows him to swiftly escape enemy blows and out-maneuver the largest and slowest denizens. He must be careful to avoid the fast opponents who live outside of the caves, however, and he is extremely vulnerable to attacks made by other characters, who can always Smash him as he ducks. Since he relies heavily on the ducking maneuver, his helmet is a critical part of his defenses.', (SELECT gender_id FROM avalon.gender WHERE name='Male'), 'icon-dwarf-face', 0.0, 0, 'Dwarf', 'Youngster', 0, 'Smith', 0, 'Warrior', 0, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M')), (
  (SELECT advantage_id FROM avalon.advantage WHERE name='ELUSIVENESS'), (SELECT advantage_id FROM avalon.advantage WHERE name='ARCHER'), 'The Elf is an elusive and graceful warrior and magician. With his Light bow, he is a deadly match for anything less than an armored Heavy foe, and with a Medium bow he can face any opponent. He has the speed to escape numerous opponents.', (SELECT gender_id FROM avalon.gender WHERE name='Male'), 'icon-woman-elf-face', 0.0, 0, 'Elf', 'Stripling', 1, 'Faerie', 2, 'Hunter', 2, 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L')), (
  (SELECT advantage_id FROM avalon.advantage WHERE name='MAGICAL PARAPHERNALIA'), (SELECT advantage_id FROM avalon.advantage WHERE name='KNOWLEDGE'), 'The Magician knows a little about a lot of different types of magic. He can cast nearly any spell – if he can obtain the right magic color. He must make the best use of the magic color he finds in the game, for he lacks the paired magic chits necessary to enchant tiles. Obviously, he values enchanted cards above all else. When he picks his starting spells, he must be very careful to pick spells that he can cast with the chits he has available.', (SELECT gender_id FROM avalon.gender WHERE name='Male'), 'icon-magic-swirl', 0.0, 0, 'Magician', 'Student', 0, 'Trickster', 1, 'Illusionist', 2, 3, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L')), (
  (SELECT advantage_id FROM avalon.advantage WHERE name='HEAVENLY PROTECTION'), (SELECT advantage_id FROM avalon.advantage WHERE name='LORE'), 'The Pilgrim is an adventurous cleric who must rely on his alliance with the Order and his ability to swiftly dispatch Medium opponents. With better weapons and armor, he can defeat heavier opponents, but he is very slow and must choose his battles cautiously. He can wield powerful White magic, and his choice of a starting spell is critical in determining his strategy.', (SELECT gender_id FROM avalon.gender WHERE name='Male'), 'icon-monk-face', 0.0, 0, 'Pilgrim', 'Acolyte', 0, 'Guardian', 1, 'Missionary', 1, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M')), (
  (SELECT advantage_id FROM avalon.advantage WHERE name='LORE'), (SELECT advantage_id FROM avalon.advantage WHERE name='AURA OF POWER'), 'The Sorceror is the master of elemental magic and conjuring. He is helpless in combat, so he does best when he takes some of the excellent Elemental (IV) Attack spells at the start of the game, which make him formidable in combat. His favorite treasures are the Book of Lore and the Scroll of Alchemy, which can vastly increase the powers he can call on.', (SELECT gender_id FROM avalon.gender WHERE name='Male'), 'icon-robe', 0.0, 0, 'Sorceror', 'Apprentice', 0, 'Alchemist', 1, 'Conjuror', 2, 3, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M')), (
  (SELECT advantage_id FROM avalon.advantage WHERE name='BARTER'), (SELECT advantage_id FROM avalon.advantage WHERE name='CLEVER'), 'The Swordsman is a wily and nimble rascal, quick to react to an opportunity or threat. In combat he is extremely fast with his sword and feet; against individual Light, Medium and Heavy opponents his speed makes him a deadly antagonist, and he can run away when he faces Tremendous monsters, armored Heavy monsters and enemies who outnumber him.', (SELECT gender_id FROM avalon.gender WHERE name='Male'), 'icon-cowled', 0.0, 0, 'Swordsman', 'Wanderer', 0, 'Thief', 0, 'Adventurer', 0, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L')), (
  (SELECT advantage_id FROM avalon.advantage WHERE name='ROBUST'), (SELECT advantage_id FROM avalon.advantage WHERE name='HONOR'), 'The White Knight is famous for his virtue and his prowess in battle. He is among the most powerful fighters and can handle the largest and most terrible monsters, but he moves slowly and fatigues easily. Against smaller and faster foes he must rely on his armor to stay alive, and he must use his health to recover from the fatigue and wounds he suffers in combat.', (SELECT gender_id FROM avalon.gender WHERE name='Male'), 'icon-visored-helm', 0.0, 0, 'White Knight', 'Squire', 0, 'Knight-Errant', 0, 'Crusader', 1, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='H')), (
  (SELECT advantage_id FROM avalon.advantage WHERE name='KNOWLEDGE'), (SELECT advantage_id FROM avalon.advantage WHERE name='FAMILIAR'), 'The Witch is the mistress of natural and demonic powers. Nearly helpless in combat, she must select some spells that allow her to fight or avoid combat. She usually does best by going off by herself, preferably to some place where she can find Grey magic.', (SELECT gender_id FROM avalon.gender WHERE name='Male'), 'icon-witch-face', 0.0, 0, 'Witch', 'Old Woman', 0, 'Medium', 1, 'Hag', 2, 3, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L')), (
  (SELECT advantage_id FROM avalon.advantage WHERE name='DISEMBODIED'), (SELECT advantage_id FROM avalon.advantage WHERE name='AURA OF POWER'), 'The Witch King is an incorporeal manifestation of magic. He can move and do other activities, but without magic he does not even have a move chit to allow him to carry items (so he can carry only items of Negligible weight). With magic, however, he is masterful. He controls the powerful Elemental (IV – 4), Demonic (V – 5) and Summon (VI – 6) spells, which give him a great deal of choice in how he will play the game. His best choice of spells at the start of the game depends on his victory requirements and strategy, but usually he needs some kind of spell to move, some kind of spell to attack, and some kind of spell to protect him in combat.', (SELECT gender_id FROM avalon.gender WHERE name='Male'), 'icon-haunting', 0.0, 0, 'Witch King', 'Wraith', 1, 'Wight', 2, 'Evil Spirit', 3, 4, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L')), (
  (SELECT advantage_id FROM avalon.advantage WHERE name='LORE'), (SELECT advantage_id FROM avalon.advantage WHERE name='EXPERIENCE'), 'The Wizard is an elderly wanderer familiar with the ways of the Magic Realm. During his travels, he has made many friends, and he has learned all of the secret roads of the land. In combat he is slow and weak, so he must choose his battles cautiously.<br> His long study of the colors of magic enables him to create Grey, Gold and Purple magic at the same time, giving him great powers with enchantments and spells, particularly Artifacts and Spell Books. His strengths and weaknesses make him a valuable member of a party, but he is extremely vulnerable when he tries to work alone.', (SELECT gender_id FROM avalon.gender WHERE name='Male'), 'icon-wizard-face', 0.0, 0, 'Wizard', 'Apprentice', 0, 'Scholar', 0, 'Wise One', 1, 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M')), (
  (SELECT advantage_id FROM avalon.advantage WHERE name='TRACKING SKILLS'), (SELECT advantage_id FROM avalon.advantage WHERE name='ARCHER'), 'The Woods Girl is the elusive mistress of the wooded lands, an expert tracker who is deadly with the bow against Light, Medium or Heavy opponents. When facing heavier opponents or overwhelming numbers, she is fleet enough to run away.', (SELECT gender_id FROM avalon.gender WHERE name='Female'), 'icon-bowman', 0.0, 0, 'Woods Girl', 'Maid', 0, 'Sprite', 1, 'Huntress', 1, 1, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='L'));

-- ADD io_pc_data's RELATED allys
INSERT INTO avalon.io_pc_data_ally_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  (SELECT group_id FROM avalon.group WHERE name='COMPANY'));
INSERT INTO avalon.io_pc_data_ally_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Druid'),
  (SELECT group_id FROM avalon.group WHERE name='BASHKARS'));
INSERT INTO avalon.io_pc_data_ally_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Elf'),
  (SELECT group_id FROM avalon.group WHERE name='WOODFOLK'));
INSERT INTO avalon.io_pc_data_ally_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Pilgrim'),
  (SELECT group_id FROM avalon.group WHERE name='ORDER'));
INSERT INTO avalon.io_pc_data_ally_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Sorceror'),
  (SELECT group_id FROM avalon.group WHERE name='LANCERS'));
INSERT INTO avalon.io_pc_data_ally_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  (SELECT group_id FROM avalon.group WHERE name='ORDER'));
INSERT INTO avalon.io_pc_data_ally_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch'),
  (SELECT group_id FROM avalon.group WHERE name='COMPANY'));
INSERT INTO avalon.io_pc_data_ally_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch King'),
  (SELECT group_id FROM avalon.group WHERE name='BASHKARS'));
INSERT INTO avalon.io_pc_data_ally_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Woods Girl'),
  (SELECT group_id FROM avalon.group WHERE name='WOODFOLK'));

-- ADD io_pc_data's RELATED enemys
INSERT INTO avalon.io_pc_data_enemy_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  (SELECT group_id FROM avalon.group WHERE name='GUARD'));
INSERT INTO avalon.io_pc_data_enemy_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  (SELECT group_id FROM avalon.group WHERE name='BASHKARS'));
INSERT INTO avalon.io_pc_data_enemy_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Druid'),
  (SELECT group_id FROM avalon.group WHERE name='WOODFOLK'));
INSERT INTO avalon.io_pc_data_enemy_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Elf'),
  (SELECT group_id FROM avalon.group WHERE name='LANCERS'));
INSERT INTO avalon.io_pc_data_enemy_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Sorceror'),
  (SELECT group_id FROM avalon.group WHERE name='GUARD'));
INSERT INTO avalon.io_pc_data_enemy_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Swordsman'),
  (SELECT group_id FROM avalon.group WHERE name='PATROL'));
INSERT INTO avalon.io_pc_data_enemy_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  (SELECT group_id FROM avalon.group WHERE name='COMPANY'));
INSERT INTO avalon.io_pc_data_enemy_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch King'),
  (SELECT group_id FROM avalon.group WHERE name='ORDER'));
INSERT INTO avalon.io_pc_data_enemy_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Wizard'),
  (SELECT group_id FROM avalon.group WHERE name='LANCERS'));
INSERT INTO avalon.io_pc_data_enemy_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Woods Girl'),
  (SELECT group_id FROM avalon.group WHERE name='BASHKARS'));

-- ADD io_pc_data's RELATED friendlys
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  (SELECT group_id FROM avalon.group WHERE name='LANCERS'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  (SELECT group_id FROM avalon.group WHERE name='PATROL'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  (SELECT group_id FROM avalon.group WHERE name='SHAMAN'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Berserker'),
  (SELECT group_id FROM avalon.group WHERE name='ROGUES'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Berserker'),
  (SELECT group_id FROM avalon.group WHERE name='LANCERS'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Berserker'),
  (SELECT group_id FROM avalon.group WHERE name='SHAMAN'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  (SELECT group_id FROM avalon.group WHERE name='SOLDIERS'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  (SELECT group_id FROM avalon.group WHERE name='CRONE'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  (SELECT group_id FROM avalon.group WHERE name='PATROL'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  (SELECT group_id FROM avalon.group WHERE name='SOLDIERS'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  (SELECT group_id FROM avalon.group WHERE name='GUARD'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  (SELECT group_id FROM avalon.group WHERE name='SCHOLAR'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Druid'),
  (SELECT group_id FROM avalon.group WHERE name='LANCERS'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Dwarf'),
  (SELECT group_id FROM avalon.group WHERE name='COMPANY'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Dwarf'),
  (SELECT group_id FROM avalon.group WHERE name='GUARD'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Dwarf'),
  (SELECT group_id FROM avalon.group WHERE name='SCHOLAR'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Elf'),
  (SELECT group_id FROM avalon.group WHERE name='BASHKARS'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Magician'),
  (SELECT group_id FROM avalon.group WHERE name='COMPANY'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Magician'),
  (SELECT group_id FROM avalon.group WHERE name='ROGUES'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Sorceror'),
  (SELECT group_id FROM avalon.group WHERE name='COMPANY'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Sorceror'),
  (SELECT group_id FROM avalon.group WHERE name='BASHKARS'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Swordsman'),
  (SELECT group_id FROM avalon.group WHERE name='ROGUES'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Swordsman'),
  (SELECT group_id FROM avalon.group WHERE name='COMPANY'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Swordsman'),
  (SELECT group_id FROM avalon.group WHERE name='WARLOCK'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  (SELECT group_id FROM avalon.group WHERE name='LANCERS'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch'),
  (SELECT group_id FROM avalon.group WHERE name='BASHKARS'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch King'),
  (SELECT group_id FROM avalon.group WHERE name='COMPANY'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Wizard'),
  (SELECT group_id FROM avalon.group WHERE name='WOODFOLK'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Wizard'),
  (SELECT group_id FROM avalon.group WHERE name='PATROL'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Wizard'),
  (SELECT group_id FROM avalon.group WHERE name='SOLDIERS'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Wizard'),
  (SELECT group_id FROM avalon.group WHERE name='GUARD'));
INSERT INTO avalon.io_pc_data_friendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Woods Girl'),
  (SELECT group_id FROM avalon.group WHERE name='LANCERS'));

-- ADD io_pc_data's RELATED stage_one_actionss
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move M4'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move M3*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight L4'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Berserker'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move H6'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Berserker'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move H5*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Berserker'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight H4*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move M5'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move H5*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight H5*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move M4*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move M5'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight H5*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Druid'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move L3*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Druid'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move L4'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Druid'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight L3*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Dwarf'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Duck T3*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Dwarf'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move H6'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Dwarf'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight H5*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Elf'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic III3*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Elf'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic III4*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Elf'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic VII4*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Magician'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move L3*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Magician'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move L4'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Magician'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight L3*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Pilgrim'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move M4*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Pilgrim'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move M5'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Pilgrim'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight M3*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Sorceror'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move M5'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Sorceror'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight L3*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Sorceror'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move M4*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Swordsman'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move L4'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Swordsman'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move L3*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Swordsman'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight L3*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move H5*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move H6'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight H5*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move L4'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move L3*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move M4*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch King'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic IV4*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch King'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic V4*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch King'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic VI4*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Wizard'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move M5'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Wizard'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move M4*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Wizard'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight M3*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Woods Girl'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move L3*'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Woods Girl'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move L4'));
INSERT INTO avalon.io_pc_data_stage_one_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Woods Girl'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move L2**'));

-- ADD io_pc_data's RELATED stage_two_actionss
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move M4'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight M5'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight M4*'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Berserker'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move T6*'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Berserker'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move H4**'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Berserker'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight H5'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move H6'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move M4*'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight H6'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight M5'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight M3**'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move M3**'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Druid'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight L4'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Druid'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move L2**'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Druid'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight L2**'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Dwarf'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move T6*'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Dwarf'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight H6'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Dwarf'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight H4**'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Elf'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic III2*'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Elf'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic III3*'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Elf'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic VII3*'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Magician'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move M4'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Magician'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight L4'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Magician'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic II3*'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Pilgrim'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move H5*'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Pilgrim'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight M4'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Pilgrim'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight M2**'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Sorceror'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='3 Magic IV4*'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Swordsman'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move L3*'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Swordsman'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight L2**'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Swordsman'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move L2**'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move H4**'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight H6'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight H4**'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic II3*'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic V6*'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic VIII4*'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch King'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic IV4*'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch King'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic V3*'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch King'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic VI3*'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Wizard'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='2 Move M5'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Wizard'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight M5'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Woods Girl'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight L4'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Woods Girl'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move L2**'));
INSERT INTO avalon.io_pc_data_stage_two_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Woods Girl'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic VII6**'));

-- ADD io_pc_data's RELATED stage_three_actionss
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move M3*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight M3**'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight H4**'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Berserker'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move H4**'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Berserker'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight T6*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Berserker'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight T4**'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='2 Fight M4*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight M5'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move M4*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight H5*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight M4*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Druid'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic II3*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Druid'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic VIII4*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Druid'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic VIII3*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Dwarf'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move H5*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Dwarf'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight T6*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Dwarf'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight H4**'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Elf'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move L2*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Elf'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move L3*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Elf'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight L3*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Magician'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic III3*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Magician'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic VII4**'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Magician'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic VIII4*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Pilgrim'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight M3*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Pilgrim'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic I6*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Pilgrim'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic VII3*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Sorceror'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic VI5*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Sorceror'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic VI6*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Sorceror'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic VI4*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Swordsman'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move M4*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Swordsman'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight M4*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Swordsman'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight M3**'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight H4**'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight H5*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic I5**'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight L3*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic II3*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic V5*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch King'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic IV3*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch King'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic V3*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch King'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic VI3*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Wizard'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight L4'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Wizard'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic II4*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Wizard'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic IV4*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Woods Girl'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight L3*'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Woods Girl'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight M5'));
INSERT INTO avalon.io_pc_data_stage_three_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Woods Girl'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight L4'));

-- ADD io_pc_data's RELATED stage_four_actionss
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight M4*'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight M3**'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move M3*'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Berserker'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Berserk T4**'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Berserker'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight T5*'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Berserker'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight T4**'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move H4**'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight H4**'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight M3**'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move M4*'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight H6'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight M4*'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Druid'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic II2**'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Druid'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic VIII3*'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Druid'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic VIII2**'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Dwarf'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move T5**'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Dwarf'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='2 Fight T5**'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Elf'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move M4'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Elf'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight M3*'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Elf'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight M4'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Magician'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic IV3*'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Magician'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic V4**'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Magician'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic VI4*'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Pilgrim'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move H6'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Pilgrim'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight H4*'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Pilgrim'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic I4*'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Sorceror'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='2 Magic IV3*'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Sorceror'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic IV5*'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Swordsman'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight L4'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Swordsman'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight M5'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Swordsman'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight L2**'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move T6*'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight T4**'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight T5*'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic II2*'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic V4*'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic VIII2*'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch King'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic IV3*'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch King'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic V2*'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch King'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic VI2*'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Wizard'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic II3*'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Wizard'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic III3*'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Wizard'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Magic IV3*'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Woods Girl'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Move L3*'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Woods Girl'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight M4*'));
INSERT INTO avalon.io_pc_data_stage_four_actions_lookup(io_pc_data_id, development_actions_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Woods Girl'),
  (SELECT development_actions_id FROM avalon.development_actions WHERE code='1 Fight L3*'));

-- ADD io_pc_data's RELATED unfriendlys
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  (SELECT group_id FROM avalon.group WHERE name='COMPANY'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  (SELECT group_id FROM avalon.group WHERE name='BASHKARS'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Berserker'),
  (SELECT group_id FROM avalon.group WHERE name='PATROL'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Berserker'),
  (SELECT group_id FROM avalon.group WHERE name='GUARD'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  (SELECT group_id FROM avalon.group WHERE name='LANCERS'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  (SELECT group_id FROM avalon.group WHERE name='WOODFOLK'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Druid'),
  (SELECT group_id FROM avalon.group WHERE name='ORDER'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Druid'),
  (SELECT group_id FROM avalon.group WHERE name='SHAMAN'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Dwarf'),
  (SELECT group_id FROM avalon.group WHERE name='WOODFOLK'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Dwarf'),
  (SELECT group_id FROM avalon.group WHERE name='BASHKARS'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Elf'),
  (SELECT group_id FROM avalon.group WHERE name='ORDER'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Elf'),
  (SELECT group_id FROM avalon.group WHERE name='SCHOLAR'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Magician'),
  (SELECT group_id FROM avalon.group WHERE name='PATROL'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Magician'),
  (SELECT group_id FROM avalon.group WHERE name='SOLDIERS'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Magician'),
  (SELECT group_id FROM avalon.group WHERE name='CRONE'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Pilgrim'),
  (SELECT group_id FROM avalon.group WHERE name='COMPANY'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Pilgrim'),
  (SELECT group_id FROM avalon.group WHERE name='BASHKARS'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Pilgrim'),
  (SELECT group_id FROM avalon.group WHERE name='CRONE'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Sorceror'),
  (SELECT group_id FROM avalon.group WHERE name='ORDER'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Sorceror'),
  (SELECT group_id FROM avalon.group WHERE name='SOLDIERS'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Sorceror'),
  (SELECT group_id FROM avalon.group WHERE name='WARLOCK'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  (SELECT group_id FROM avalon.group WHERE name='BASHKARS'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  (SELECT group_id FROM avalon.group WHERE name='CRONE'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch'),
  (SELECT group_id FROM avalon.group WHERE name='ORDER'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch'),
  (SELECT group_id FROM avalon.group WHERE name='LANCERS'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch'),
  (SELECT group_id FROM avalon.group WHERE name='SOLDIERS'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch'),
  (SELECT group_id FROM avalon.group WHERE name='SHAMAN'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch King'),
  (SELECT group_id FROM avalon.group WHERE name='LANCERS'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Witch King'),
  (SELECT group_id FROM avalon.group WHERE name='SCHOLAR'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Wizard'),
  (SELECT group_id FROM avalon.group WHERE name='COMPANY'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Wizard'),
  (SELECT group_id FROM avalon.group WHERE name='BASHKARS'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Wizard'),
  (SELECT group_id FROM avalon.group WHERE name='WARLOCK'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Woods Girl'),
  (SELECT group_id FROM avalon.group WHERE name='SOLDIERS'));
INSERT INTO avalon.io_pc_data_unfriendly_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Woods Girl'),
  (SELECT group_id FROM avalon.group WHERE name='WARLOCK'));

-- ADD io_pc_data's RELATED stage_one_equipped_itemss
INSERT INTO avalon.io_pc_data_stage_one_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  'EQUIP_SLOT_WEAPON',
  'Light Bow');
INSERT INTO avalon.io_pc_data_stage_one_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Berserker'),
  'EQUIP_SLOT_WEAPON',
  'Axe');
INSERT INTO avalon.io_pc_data_stage_one_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Berserker'),
  'EQUIP_SLOT_HELMET',
  'Helmet');
INSERT INTO avalon.io_pc_data_stage_one_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  'EQUIP_SLOT_WEAPON',
  'Spear');
INSERT INTO avalon.io_pc_data_stage_one_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  'EQUIP_SLOT_HELMET',
  'Helmet');
INSERT INTO avalon.io_pc_data_stage_one_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_pc_data_stage_one_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  'EQUIP_SLOT_WEAPON',
  'Spear');
INSERT INTO avalon.io_pc_data_stage_one_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  'EQUIP_SLOT_SHIELD',
  'Shield');
INSERT INTO avalon.io_pc_data_stage_one_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Dwarf'),
  'EQUIP_SLOT_WEAPON',
  'Axe');
INSERT INTO avalon.io_pc_data_stage_one_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Dwarf'),
  'EQUIP_SLOT_HELMET',
  'Helmet');
INSERT INTO avalon.io_pc_data_stage_one_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  'EQUIP_SLOT_WEAPON',
  'Broadsword');
INSERT INTO avalon.io_pc_data_stage_one_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  'EQUIP_SLOT_HELMET',
  'Helmet');
INSERT INTO avalon.io_pc_data_stage_one_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_pc_data_stage_one_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  'EQUIP_SLOT_SHIELD',
  'Shield');

-- ADD io_pc_data's RELATED stage_two_equipped_itemss
INSERT INTO avalon.io_pc_data_stage_two_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  'EQUIP_SLOT_WEAPON',
  'Spear');
INSERT INTO avalon.io_pc_data_stage_two_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  'EQUIP_SLOT_HELMET',
  'Helmet');
INSERT INTO avalon.io_pc_data_stage_two_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_pc_data_stage_two_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  'EQUIP_SLOT_SHIELD',
  'Shield');
INSERT INTO avalon.io_pc_data_stage_two_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Berserker'),
  'EQUIP_SLOT_WEAPON',
  'Axe');
INSERT INTO avalon.io_pc_data_stage_two_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Berserker'),
  'EQUIP_SLOT_HELMET',
  'Helmet');
INSERT INTO avalon.io_pc_data_stage_two_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Berserker'),
  'EQUIP_SLOT_SHIELD',
  'Shield');
INSERT INTO avalon.io_pc_data_stage_two_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  'EQUIP_SLOT_WEAPON',
  'Crossbow');
INSERT INTO avalon.io_pc_data_stage_two_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  'EQUIP_SLOT_HELMET',
  'Helmet');
INSERT INTO avalon.io_pc_data_stage_two_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_pc_data_stage_two_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  'EQUIP_SLOT_WEAPON',
  'Short Sword');
INSERT INTO avalon.io_pc_data_stage_two_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  'EQUIP_SLOT_HELMET',
  'Helmet');
INSERT INTO avalon.io_pc_data_stage_two_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_pc_data_stage_two_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  'EQUIP_SLOT_SHIELD',
  'Shield');
INSERT INTO avalon.io_pc_data_stage_two_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Dwarf'),
  'EQUIP_SLOT_WEAPON',
  'Axe');
INSERT INTO avalon.io_pc_data_stage_two_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Dwarf'),
  'EQUIP_SLOT_HELMET',
  'Helmet');
INSERT INTO avalon.io_pc_data_stage_two_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Pilgrim'),
  'EQUIP_SLOT_WEAPON',
  'Staff');
INSERT INTO avalon.io_pc_data_stage_two_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  'EQUIP_SLOT_WEAPON',
  'Broadsword');
INSERT INTO avalon.io_pc_data_stage_two_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  'EQUIP_SLOT_ARMOR',
  'Suit of Armor');
INSERT INTO avalon.io_pc_data_stage_two_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  'EQUIP_SLOT_SHIELD',
  'Shield');

-- ADD io_pc_data's RELATED stage_three_equipped_itemss
INSERT INTO avalon.io_pc_data_stage_three_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  'EQUIP_SLOT_WEAPON',
  'Spear');
INSERT INTO avalon.io_pc_data_stage_three_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  'EQUIP_SLOT_HELMET',
  'Helmet');
INSERT INTO avalon.io_pc_data_stage_three_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_pc_data_stage_three_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  'EQUIP_SLOT_SHIELD',
  'Shield');
INSERT INTO avalon.io_pc_data_stage_three_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Berserker'),
  'EQUIP_SLOT_WEAPON',
  'Axe');
INSERT INTO avalon.io_pc_data_stage_three_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Berserker'),
  'EQUIP_SLOT_HELMET',
  'Helmet');
INSERT INTO avalon.io_pc_data_stage_three_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Berserker'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_pc_data_stage_three_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Berserker'),
  'EQUIP_SLOT_SHIELD',
  'Shield');
INSERT INTO avalon.io_pc_data_stage_three_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  'EQUIP_SLOT_WEAPON',
  'Mace');
INSERT INTO avalon.io_pc_data_stage_three_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  'EQUIP_SLOT_HELMET',
  'Helmet');
INSERT INTO avalon.io_pc_data_stage_three_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_pc_data_stage_three_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  'EQUIP_SLOT_SHIELD',
  'Shield');
INSERT INTO avalon.io_pc_data_stage_three_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  'EQUIP_SLOT_WEAPON',
  'Short Sword');
INSERT INTO avalon.io_pc_data_stage_three_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  'EQUIP_SLOT_HELMET',
  'Helmet');
INSERT INTO avalon.io_pc_data_stage_three_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_pc_data_stage_three_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  'EQUIP_SLOT_SHIELD',
  'Shield');
INSERT INTO avalon.io_pc_data_stage_three_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Dwarf'),
  'EQUIP_SLOT_WEAPON',
  'Great Axe');
INSERT INTO avalon.io_pc_data_stage_three_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Dwarf'),
  'EQUIP_SLOT_HELMET',
  'Helmet');
INSERT INTO avalon.io_pc_data_stage_three_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Elf'),
  'EQUIP_SLOT_WEAPON',
  'Light Bow');
INSERT INTO avalon.io_pc_data_stage_three_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Pilgrim'),
  'EQUIP_SLOT_WEAPON',
  'Staff');
INSERT INTO avalon.io_pc_data_stage_three_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Swordsman'),
  'EQUIP_SLOT_WEAPON',
  'Thrusting Sword');
INSERT INTO avalon.io_pc_data_stage_three_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  'EQUIP_SLOT_WEAPON',
  'Broadsword');
INSERT INTO avalon.io_pc_data_stage_three_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  'EQUIP_SLOT_ARMOR',
  'Suit of Armor');
INSERT INTO avalon.io_pc_data_stage_three_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  'EQUIP_SLOT_SHIELD',
  'Shield');
INSERT INTO avalon.io_pc_data_stage_three_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Wizard'),
  'EQUIP_SLOT_WEAPON',
  'Staff');
INSERT INTO avalon.io_pc_data_stage_three_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Woods Girl'),
  'EQUIP_SLOT_WEAPON',
  'Light Bow');

-- ADD io_pc_data's RELATED stage_four_equipped_itemss
INSERT INTO avalon.io_pc_data_stage_four_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  'EQUIP_SLOT_WEAPON',
  'Short Sword');
INSERT INTO avalon.io_pc_data_stage_four_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  'EQUIP_SLOT_HELMET',
  'Helmet');
INSERT INTO avalon.io_pc_data_stage_four_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_pc_data_stage_four_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Amazon'),
  'EQUIP_SLOT_SHIELD',
  'Shield');
INSERT INTO avalon.io_pc_data_stage_four_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Berserker'),
  'EQUIP_SLOT_WEAPON',
  'Great Axe');
INSERT INTO avalon.io_pc_data_stage_four_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Berserker'),
  'EQUIP_SLOT_HELMET',
  'Helmet');
INSERT INTO avalon.io_pc_data_stage_four_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  'EQUIP_SLOT_WEAPON',
  'Mace');
INSERT INTO avalon.io_pc_data_stage_four_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  'EQUIP_SLOT_ARMOR',
  'Suit of Armor');
INSERT INTO avalon.io_pc_data_stage_four_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Black Knight'),
  'EQUIP_SLOT_SHIELD',
  'Shield');
INSERT INTO avalon.io_pc_data_stage_four_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  'EQUIP_SLOT_WEAPON',
  'Short Sword');
INSERT INTO avalon.io_pc_data_stage_four_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  'EQUIP_SLOT_HELMET',
  'Helmet');
INSERT INTO avalon.io_pc_data_stage_four_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  'EQUIP_SLOT_TORSO',
  'Breastplate');
INSERT INTO avalon.io_pc_data_stage_four_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Captain'),
  'EQUIP_SLOT_SHIELD',
  'Shield');
INSERT INTO avalon.io_pc_data_stage_four_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Dwarf'),
  'EQUIP_SLOT_WEAPON',
  'Great Axe');
INSERT INTO avalon.io_pc_data_stage_four_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Dwarf'),
  'EQUIP_SLOT_HELMET',
  'Helmet');
INSERT INTO avalon.io_pc_data_stage_four_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Elf'),
  'EQUIP_SLOT_WEAPON',
  'Light Bow');
INSERT INTO avalon.io_pc_data_stage_four_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Pilgrim'),
  'EQUIP_SLOT_WEAPON',
  'Staff');
INSERT INTO avalon.io_pc_data_stage_four_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Swordsman'),
  'EQUIP_SLOT_WEAPON',
  'Thrusting Sword');
INSERT INTO avalon.io_pc_data_stage_four_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  'EQUIP_SLOT_WEAPON',
  'Great Sword');
INSERT INTO avalon.io_pc_data_stage_four_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='White Knight'),
  'EQUIP_SLOT_ARMOR',
  'Suit of Armor');
INSERT INTO avalon.io_pc_data_stage_four_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Wizard'),
  'EQUIP_SLOT_WEAPON',
  'Staff');
INSERT INTO avalon.io_pc_data_stage_four_equipped_items_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM avalon.io_pc_data WHERE name='Woods Girl'),
  'EQUIP_SLOT_WEAPON',
  'Light Bow');


