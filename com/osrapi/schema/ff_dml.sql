-- ADD COMMANDS
INSERT INTO ff.command(name, sort_order) VALUES(
  'NORTH', 0), (
  'SOUTH', 1), (
  'WEST', 2), (
  'EAST', 3), (
  'CLIMB', 4), (
  'TALK', 5), (
  'GIVE', 6), (
  'ATTACK', 7), (
  'OPEN', 8), (
  'SMASH', 9), (
  'TAKE', 10), (
  'SIT', 11), (
  'STEP', 12), (
  'BRIBE', 13), (
  'INTIMIDATE', 14), (
  'THROW', 15), (
  'EAT', 16), (
  'SEARCH', 17), (
  'USE', 18), (
  'INVENTORY', 19);


-- ADD DAMAGE_TYPES
INSERT INTO ff.damage_type(flag, name) VALUES(

-- ADD DIES
INSERT INTO ff.die(code, value) VALUES(
  'D2', 2), (
  'D3', 3), (
  'D4', 4), (
  'D6', 6), (
  'D8', 8), (
  'D10', 10), (
  'D12', 12), (
  'D20', 20), (
  'D100', 100);


-- ADD DICES
INSERT INTO ff.dice(code, die, number, plus) VALUES(
  'ONE_D10', (SELECT die_id FROM ff.die WHERE code='D10'), 1, 0), (
  'ONE_D2', (SELECT die_id FROM ff.die WHERE code='D2'), 1, 0), (
  'ONE_D3', (SELECT die_id FROM ff.die WHERE code='D3'), 1, 0), (
  'ONE_D4', (SELECT die_id FROM ff.die WHERE code='D4'), 1, 0), (
  'ONE_D4_PLUS_1', (SELECT die_id FROM ff.die WHERE code='D4'), 1, 1), (
  'ONE_D6', (SELECT die_id FROM ff.die WHERE code='D6'), 1, 0), (
  'ONE_D8', (SELECT die_id FROM ff.die WHERE code='D8'), 1, 0), (
  'TWO_D4', (SELECT die_id FROM ff.die WHERE code='D4'), 2, 0), (
  'TWO_D6', (SELECT die_id FROM ff.die WHERE code='D6'), 2, 0), (
  'THREE_D6', (SELECT die_id FROM ff.die WHERE code='D6'), 3, 0), (
  'FOUR_D6', (SELECT die_id FROM ff.die WHERE code='D6'), 4, 0);


-- ADD DIRECTIONS
INSERT INTO ff.direction(code, value) VALUES(
  'NORTH', 0), (
  'EAST', 1), (
  'SOUTH', 2), (
  'WEST', 3);


-- ADD EQUIPMENT_ELEMENT_TYPES
INSERT INTO ff.equipment_element_type(code, value) VALUES(
  'ELEMENT_STAMINA', 0), (
  'ELEMENT_MAX_STAMINA', 1), (
  'ELEMENT_SKILL', 2), (
  'ELEMENT_MAX_SKILL', 3), (
  'ELEMENT_LUCK', 4), (
  'ELEMENT_MAX_LUCK', 5), (
  'ELEMENT_DAMAGE', 6);


-- ADD ATTRIBUTES
INSERT INTO ff.attribute(code, description, element, name) VALUES(
  'ST', 'Stamina', (SELECT equipment_element_type_id FROM ff.equipment_element_type WHERE code='ELEMENT_STAMINA'), 'Stamina'), (
  'MST', 'Max Stamina', (SELECT equipment_element_type_id FROM ff.equipment_element_type WHERE code='ELEMENT_MAX_STAMINA'), 'Max Stamina'), (
  'SK', 'Skill', (SELECT equipment_element_type_id FROM ff.equipment_element_type WHERE code='ELEMENT_SKILL'), 'Skill'), (
  'MSK', 'Max Skill', (SELECT equipment_element_type_id FROM ff.equipment_element_type WHERE code='ELEMENT_MAX_SKILL'), 'Max Skill'), (
  'LK', 'Luck', (SELECT equipment_element_type_id FROM ff.equipment_element_type WHERE code='ELEMENT_LUCK'), 'Luck'), (
  'MLK', 'Max Luck', (SELECT equipment_element_type_id FROM ff.equipment_element_type WHERE code='ELEMENT_MAX_LUCK'), 'Max Luck'), (
  'DMG', 'Damage', (SELECT equipment_element_type_id FROM ff.equipment_element_type WHERE code='ELEMENT_DAMAGE'), 'Damage');


-- ADD EQUIPMENT_ITEM_MODIFIERS
INSERT INTO ff.equipment_item_modifier(code, percent, special, value) VALUES(
  'MINUS_1', false, 0, -1.0), (
  'MINUS_2', false, 0, -2.0), (
  'MINUS_3', false, 0, -3.0), (
  'MINUS_4', false, 0, -4.0), (
  'MINUS_5', false, 0, -5.0), (
  'MINUS_6', false, 0, -6.0), (
  'PLUS_2', false, 0, 2.0);


-- ADD EQUIPMENT_SLOTS
INSERT INTO ff.equipment_slot(name, value) VALUES(
  'EQUIP_SLOT_RING_LEFT', 0), (
  'EQUIP_SLOT_RING_RIGHT', 1), (
  'EQUIP_SLOT_WEAPON', 2), (
  'EQUIP_SLOT_SHIELD', 3), (
  'EQUIP_SLOT_TORCH', 4), (
  'EQUIP_SLOT_TORSO', 5), (
  'EQUIP_SLOT_HELMET', 6), (
  'EQUIP_SLOT_LEGGINGS', 7);


-- ADD EVENTS
INSERT INTO ff.event(code) VALUES(
  'OnEnterRoom'), (
  'OnExitRoom'), (
  'OnBashDoorSuccess');


-- ADD GENDERS
INSERT INTO ff.gender(description, name) VALUES(
  'male', 'Male'), (
  'female', 'Female');


-- ADD GROUPS
INSERT INTO ff.group(name) VALUES(
  'UNDEAD');


-- ADD OBJECT_TYPES
INSERT INTO ff.object_type(code, flag) VALUES(
  'OBJECT_TYPE_WEAPON', 1), (
  'OBJECT_TYPE_DAGGER', 2), (
  'OBJECT_TYPE_1H', 4), (
  'OBJECT_TYPE_2H', 8), (
  'OBJECT_TYPE_BOW', 16), (
  'OBJECT_TYPE_SHIELD', 32), (
  'OBJECT_TYPE_FOOD', 64), (
  'OBJECT_TYPE_GOLD', 128), (
  'OBJECT_TYPE_ARMOR', 256), (
  'OBJECT_TYPE_HELMET', 512), (
  'OBJECT_TYPE_RING', 1024), (
  'OBJECT_TYPE_LEGGINGS', 2048);


-- ADD IO_ITEM_DATAS
INSERT INTO ff.io_item_data(count, description, food_value, internal_script, internal_script_js, left_ring, light_value, max_owned, name, price, ring_type, stack_size, steal_value, title, weight) VALUES(
  0, 'Your trusty iron sword.', 0, 'IronSword', 'com/dalonedrow/module/ff/scripts/items/ironsword', false, 0, 1, 'IRON SWORD', 0.0, 0, 1, 0, 'IRON SWORD', 1.0), (
  0, 'A wicked Orc cleaver.', 0, 'OrcCleaver', 'com/dalonedrow/module/ff/scripts/items/orcleaver', false, 0, 1, 'ORC CLEAVER', 0.0, 0, 1, 0, 'ORC CLEAVER', 1.0), (
  0, 'A meaty fist.', 0, 'Fist', 'com/dalonedrow/module/ff/scripts/items/fist', false, 0, 1, 'FIST', 0.0, 0, 1, 0, 'FIST', 1.0), (
  0, 'A small wooden box.', 0, 'Box', 'com/dalonedrow/module/ff/scripts/items/box', false, 0, 1, 'BOX_1', 0.0, 0, 1, 0, 'BOX', 1.0);

-- ADD io_item_data's RELATED groupss

-- ADD io_item_data's RELATED typess
INSERT INTO ff.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ff.io_item_data WHERE name='IRON SWORD'),
  (SELECT object_type_id FROM ff.object_type WHERE code='OBJECT_TYPE_1H'));
INSERT INTO ff.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ff.io_item_data WHERE name='ORC CLEAVER'),
  (SELECT object_type_id FROM ff.object_type WHERE code='OBJECT_TYPE_1H'));
INSERT INTO ff.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ff.io_item_data WHERE name='FIST'),
  (SELECT object_type_id FROM ff.object_type WHERE code='OBJECT_TYPE_1H'));

-- ADD io_item_data's RELATED modifierss
INSERT INTO ff.io_item_data_modifiers_lookup(io_item_data_id, key, value) VALUES (
  (SELECT io_item_data_id FROM ff.io_item_data WHERE name='IRON SWORD'),
  'ELEMENT_DAMAGE',
  'PLUS_2');
INSERT INTO ff.io_item_data_modifiers_lookup(io_item_data_id, key, value) VALUES (
  (SELECT io_item_data_id FROM ff.io_item_data WHERE name='ORC CLEAVER'),
  'ELEMENT_DAMAGE',
  'PLUS_2');
INSERT INTO ff.io_item_data_modifiers_lookup(io_item_data_id, key, value) VALUES (
  (SELECT io_item_data_id FROM ff.io_item_data WHERE name='FIST'),
  'ELEMENT_DAMAGE',
  'PLUS_2');


-- ADD IO_PC_DATAS
INSERT INTO ff.io_pc_data(bags, gender, gold, interface_flags, level, name, xp) VALUES(
-- ADD io_pc_data's RELATED attributess

-- ADD io_pc_data's RELATED equipped_itemss


-- ADD ROOMS
INSERT INTO ff.room(code) VALUES(
  '1'), (
  '12'), (
  '139'), (
  '71'), (
  '43'), (
  '82');

-- ADD room's RELATED commandss
INSERT INTO ff.room_commands_lookup(room_id, command_id) VALUES (
  (SELECT room_id FROM ff.room WHERE code='1'),
  (SELECT command_id FROM ff.command WHERE name='WEST'));
INSERT INTO ff.room_commands_lookup(room_id, command_id) VALUES (
  (SELECT room_id FROM ff.room WHERE code='1'),
  (SELECT command_id FROM ff.command WHERE name='EAST'));
INSERT INTO ff.room_commands_lookup(room_id, command_id) VALUES (
  (SELECT room_id FROM ff.room WHERE code='12'),
  (SELECT command_id FROM ff.command WHERE name='WEST'));
INSERT INTO ff.room_commands_lookup(room_id, command_id) VALUES (
  (SELECT room_id FROM ff.room WHERE code='12'),
  (SELECT command_id FROM ff.command WHERE name='EAST'));
INSERT INTO ff.room_commands_lookup(room_id, command_id) VALUES (
  (SELECT room_id FROM ff.room WHERE code='139'),
  (SELECT command_id FROM ff.command WHERE name='CLIMB'));
INSERT INTO ff.room_commands_lookup(room_id, command_id) VALUES (
  (SELECT room_id FROM ff.room WHERE code='71'),
  (SELECT command_id FROM ff.command WHERE name='EAST'));
INSERT INTO ff.room_commands_lookup(room_id, command_id) VALUES (
  (SELECT room_id FROM ff.room WHERE code='71'),
  (SELECT command_id FROM ff.command WHERE name='NORTH'));
INSERT INTO ff.room_commands_lookup(room_id, command_id) VALUES (
  (SELECT room_id FROM ff.room WHERE code='43'),
  (SELECT command_id FROM ff.command WHERE name='SOUTH'));
INSERT INTO ff.room_commands_lookup(room_id, command_id) VALUES (
  (SELECT room_id FROM ff.room WHERE code='43'),
  (SELECT command_id FROM ff.command WHERE name='NORTH'));
INSERT INTO ff.room_commands_lookup(room_id, command_id) VALUES (
  (SELECT room_id FROM ff.room WHERE code='82'),
  (SELECT command_id FROM ff.command WHERE name='EAST'));


-- ADD SCRIPT_ACTION_TYPES
INSERT INTO ff.script_action_type(code) VALUES(
  'CREATE_EXIT'), (
  'DMG_PLAYER'), (
  'MOVE_PLAYER'), (
  'PERMALOCK'), (
  'SET_ROOM_TEXT'), (
  'SHOW_TEXT'), (
  'SPAWN_MOB'), (
  'TEST_YOUR_LUCK');


-- ADD TERRAINS
INSERT INTO ff.terrain(name) VALUES(
  'CAVE_FLOOR'), (
  'CAVE_WALL'), (
  'DUNGEON_FLOOR'), (
  'DUNGEON_WALL');


-- ADD PHYSICAL_GRAPH_NODES
INSERT INTO ff.physical_graph_node(is_main_node, room_number, terrain, x, y) VALUES(
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 639, 1340), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 640, 1340), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 641, 1340), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 642, 1340), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 643, 1340), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 639, 1339), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 640, 1339), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 641, 1339), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 642, 1339), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 643, 1339), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 639, 1338), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 640, 1338), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 641, 1338), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 642, 1338), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 643, 1338), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 639, 1337), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 640, 1337), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 641, 1337), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 642, 1337), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 643, 1337), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 639, 1336), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 640, 1336), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 641, 1336), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 642, 1336), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 643, 1336), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 639, 1335), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 640, 1335), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 641, 1335), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 642, 1335), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 643, 1335), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 644, 1336), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 645, 1336), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 646, 1336), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 647, 1336), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 648, 1336), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 644, 1337), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 645, 1337), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 646, 1337), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 647, 1337), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 648, 1337), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 644, 1338), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 645, 1338), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 646, 1338), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 647, 1338), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 648, 1338), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 649, 1334), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 650, 1334), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 651, 1334), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 652, 1334), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 653, 1334), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 654, 1334), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 655, 1334), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 649, 1335), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 650, 1335), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 651, 1335), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 652, 1335), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 653, 1335), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 654, 1335), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 655, 1335), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 649, 1336), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 650, 1336), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 651, 1336), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 652, 1336), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 653, 1336), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 654, 1336), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 655, 1336), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 649, 1337), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 650, 1337), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 651, 1337), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 652, 1337), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 653, 1337), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 654, 1337), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 655, 1337), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 649, 1338), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 650, 1338), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 651, 1338), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 652, 1338), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 653, 1338), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 654, 1338), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 655, 1338), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 649, 1339), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 650, 1339), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 651, 1339), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 652, 1339), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 653, 1339), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 654, 1339), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 655, 1339), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 649, 1340), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 650, 1340), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 651, 1340), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 652, 1340), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 653, 1340), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 654, 1340), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 655, 1340), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 635, 1335), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 636, 1335), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 637, 1335), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 635, 1336), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 636, 1336), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 637, 1336), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 638, 1336), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 635, 1337), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 636, 1337), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 637, 1337), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 638, 1337), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 635, 1338), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 636, 1338), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 637, 1338), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 638, 1338), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 635, 1339), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 636, 1339), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 637, 1339), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 638, 1339), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 635, 1330), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 636, 1330), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 637, 1330), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 635, 1331), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 636, 1331), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 637, 1331), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 635, 1332), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 636, 1332), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 637, 1332), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 635, 1333), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 636, 1333), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 637, 1333), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 635, 1334), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 636, 1334), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 637, 1334), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 630, 1330), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 631, 1330), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 632, 1330), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 633, 1330), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 634, 1330), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 630, 1331), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 631, 1331), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 632, 1331), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 633, 1331), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 634, 1331), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 630, 1332), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 631, 1332), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 632, 1332), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 633, 1332), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 634, 1332), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 630, 1333), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 631, 1333), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 632, 1333), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_FLOOR'), 633, 1333), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 634, 1333), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 630, 1334), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 631, 1334), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 632, 1334), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 633, 1334), (
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 634, 1334);


-- ADD TEXTS
INSERT INTO ff.text(name, text) VALUES(
  'header', '
<table><title><ioName></title><genText>
<genText></table>
Please enter an action: '), (
  'table_titled', '<table><title><genText></title><genText></table>'), (
  'table_untitled', '<table><genText></table>'), (
  'menu_table', '<table><title><genText></title><genText>
<genText></table>
<genText>'), (
  'stats_table', 'Skill  : <genText>
Stamina: <genText>
Luck   : <genText>'), (
  'enemy_stats_table', '<genText>
Skill  : <genText>
Stamina: <genText>'), (
  'continue', '-- Press [Enter] to Continue --'), (
  'invalid_input', 'I''m sorry, I can''t understand what you were trying to do.'), (
  'invalid_exit', 'You can''t go that way.'), (
  'exit_blocked', 'The way is blocked by <tioName>.'), (
  'attack_no_one', 'Settle down, there''s no one here to attack.'), (
  'no_escape', 'You can''t escape.  You''ll have to fight your way out.'), (
  'open_no_door', 'There are no doors here to open!'), (
  'open_which_door', 'Which door do you want to open?'), (
  'open_locked_door', 'It''s locked.  Try to USE a key or SMASH it open.'), (
  'smash_no_door', 'There are no doors here to smash!'), (
  'smash_which_door', 'Which door do you want to smash?'), (
  'smash_door_12_success', 'The door bursts open and you fall headlong into a room. But your heart jumps as you realize you are not landing on the floor, but plunging down a pit of some kind! Lose 1 STAMINA.'), (
  'smash_door_12_failure', 'You rub your bruised shoulder and stare at the intact, still-locked door.'), (
  'climb_139_out', 'You climb out of the pit.'), (
  'climb_139_in', 'You climb into the pit. Yep, just you remember it - an empty hole. You climb back out.'), (
  'climb_no_where', 'Climb what?  I don''t see anything.'), (
  'choice', 'Please enter your choice: '), (
  'START', 'Only a foolhardy adventurer would embark upon such a perilous quest without first finding out as much as possible about the mountain and its treasures. Before your arrival at the foot of Firetop Mountain, you spent several days with the townsfolk of a local village some two days'' journey from the base. Being a likeable sort of person, you found it easy to get on with the local peasants. Although they told many stories about the mysterious Warlock''s sanctuary, you could not feel sure that all - or indeed any - of these were based on fact. The villagers had seen many adventurers pass through on their way to the mountain, but very few ever returned. The journey ahead was extremely dangerous, that you knew for certain. Of those who returned to the village, none contemplated going back to Firetop Mountain.
There seemed to be some truth in the rumour that the Warlock''s treasure was stored in a magnificent chest with two locks, and the keys to these locks were guarded by various creatures within the dungeons. The Warlock himself was a sorcerer of great power. Some described him as old, others as young. Some said his power came from an enchanted deck of cards, others from the silky black gloves that he wore.
The entrance to the mountain was guarded by a pack of warty-faced Goblins, stupid creatures, fond of their food and drink. Towards the inner chambers, the creatures  became more fearsome. To reach the inner chambers you would have to cross a river. The ferry service was regular, but the ferryman enjoyed a good barter, so you should save a Gold Piece for the trip. The locals also encouraged you to keep a good map of your wanderings, for without a map you would end up hopelessly lost within the mountain.
When it finally came to your day of leaving, the whole village turned out to wish you a safe journey. Tears came to the eyes of many of the women, young and old alike. You couldn''t help wondering whether they were tears of sorrow shed by eyes which would never see you alive again...
At last your two-day hike is over, You unsheathe your sword, lay it on the ground and sigh with relief as you lower yourself down on to the mossy rocks to sit for a moment''s rest. You stretch, rub your eyes and finally look up at Firetop Mountain.
The very mountain itself looks menacing. The steep face in front of you looks to have been savaged by the claws of some gargantuan beast. Sharp rocky crags jut out at unnatural angles. At the top of the mountain you can see the eerie red colouring - probably some strange vegetation - which has given the mountain its name. Perhaps no one will ever know exactly what grows up there, as climbing the peak must surely be impossible.
Your quest lies ahead of you. Across the clearing is a dark cave entrance. You pick up your sword, get to your feet and consider what dangers may lie ahead of you. But with determination, you thrust the sword home into its scabbard and approach the cave.
'), (
  '1', 'You peer into the gloom to see dark, slimy walls with pools of water on the stone floor in front of you. The air is cold and dank. You light your lantern and step warily into the blackness. Cobwebs brush your face and you hear the scurrying of tiny feet: rats, most likely. You set off into the cave. After a few yards you arrive at a junction. Passages lead West and East.'), (
  '1_EAST', 'You take the eastern passage.'), (
  '1_WEST', 'You follow the passage leading west.'), (
  '1_SOUTH', 'You would abandon your adventure?!  Shame.  SHAME!  I won''t allow it.  Close the tab if you want to leave so bad.'), (
  '1_SECONDARY', 'You are at a junction in a cave passage.  Passages lead further into the cave to the West and East.  There is also a passage to the South, leading both to the cave''s exit and to everlasting shame for abandoning your adventure.
'), (
  '12', 'The passageway soon comes to an end at a locked wooden door. You listen at the door but hear nothing.
'), (
  '12_SECONDARY', 'You are in an east-west corridor.  There is a locked wooden door on the eastern end.
'), (
  '12_TERTIARY', 'You are in an east-west corridor.  A wooden door on the eastern end hangs open.
'), (
  '12_EAST', 'You follow the passage east.'), (
  '12_WEST', 'You follow the passage west to the junction.'), (
  '43', 'To your left, on the west face of the passage, there is a rough-cut wooden door. You listen at the door and can hear a rasping sound which may be some sort of creature snoring.
'), (
  '43_SECONDARY', 'You are in a North-South passage.  There is a doorway on west face.
'), (
  '43_WEST', 'You enter the room.'), (
  '43_NORTH', 'You follow the passage north.'), (
  '43_SOUTH', 'You follow the passage south.'), (
  '71', 'There is a right-hand turn to the north in the passage. Cautiously you approach a sentry post on the corner and, as you look in, you can see a strange Goblin-like creature in leather armour asleep at his post. You might be able to tiptoe past him.
'), (
  '71_EAST', 'You head east.'), (
  '71_NORTH', 'You head north.'), (
  '71_SECONDARY', 'You are in an L-shaped passage traveling North and East.  A Goblin-like creature snores blissfully in the corner.
'), (
  '71_TERTIARY', 'You are in an L-shaped passage traveling North and East.  In the corner a bloodied ORC sleeps with the dead.
'), (
  '82', 'The door opens to reveal a small, smelly room. In the centre of the room is a rickety wooden table on which stands a lit candle. Underneath the table is a small wooden box. Asleep on a straw mattress in the far corner of the room is a short, stocky creature with an ugly, warty face; the same sort of creature that you found asleep at the sentry post. He must be the guard for the night watch.
'), (
  '82_SECONDARY', 'You are in a small, smelly room. In the centre of the room is a rickety wooden table on which stands a lit candle.
'), (
  '82_TERTIARY', 'You are in a small, smelly room whose walls are spattered with blood and viscera. In the centre of the room is a rickety wooden table on which stands a lit candle.
'), (
  '82_EAST', 'You leave the room.'), (
  '139', 'You are standing in a pit about two metres deep. The room is otherwise empty, and there is a corridor beyond a broken wooden door to the west.'), (
  '139_SECONDARY', 'You are in an empty room whose only feature is a small pit. Beyond a broken wooden door a corridor leads west.'), (
  '139_WEST', 'You step out of the room into the corridor.'), (
  'orc_sentry_aggression', 'You step with a crunch on some loose ground. The ORC''s eyes flick open and he scrambles to his feet and turns to grasp at a rope which is probably the alarm bell. You must attack him quickly.'), (
  'orc_sentry_dying', 'The ORC gurgles as it collapses. ''~burz~'''), (
  'orc_sentry_ouch', '''~azgdrar mugh~'' the orc declares.'), (
  'orc_sentry_ouch_medium', 'The orc eyes you defiantly. ''~mugh... tum brakat~'''), (
  'orc_sentry_ouch_strong', 'The orc screams at you in desperation. ''~MUGH AGDUM~'''), (
  'orc_sentry_search', '''~tugh gimbat~''.  The orc scans the room.'), (
  'orc_sentry_thief', '''~gulBIL~'''), (
  'orc_sentry_threat', '''~tugh damad~'''), (
  'orc_sentry_victory', '''~skai~'', the ORC sneers.'), (
  'orc_sentry_2_aggression', 'You smash through the unlocked door. The source of the snoring you heard awakens startled. He jumps up and rushes at you, unarmed. With your sword you should be able to defeat him, but his sharp teeth look rather vicious.'), (
  'orc_sentry_2_aggression_2', 'The sleeping creature awakens startled. He jumps up and rushes at you, unarmed. With your sword you should be able to defeat him, but his sharp teeth look rather vicious.'), (
  'orc_sentry_2_aggression_3', 'The ORC stares in disbelief as you saunter back into the room you ran away from.  He charges.');


-- ADD SCRIPT_ACTIONS
INSERT INTO ff.script_action(name, type) VALUES(
  'CREATE_EXIT_278_343', 'CREATE_EXIT'), (
  'DMG_PLAYER_ST_1', 'DMG_PLAYER'), (
  'MOVE_PLAYER_343', 'MOVE_PLAYER'), (
  'PERMALOCK_278', 'PERMALOCK'), (
  '278_POST_BASH_FAILURE', 'SET_ROOM_TEXT'), (
  '278_POST_BASH_SUCCESS', 'SET_ROOM_TEXT'), (
  '278_BASH_FAILURE', 'SHOW_TEXT'), (
  '278_BASH_SUCCESS', 'SHOW_TEXT'), (
  'SPAWN_ORC1', 'SPAWN_MOB'), (
  'TEST_YOUR_LUCK_71', 'TEST_YOUR_LUCK');


-- ADD CREATE_EXIT_ACTIONS
INSERT INTO ff.create_exit_action(destination, direction, origin) VALUES(

-- ADD DAMAGE_PLAYER_ACTIONS
INSERT INTO ff.damage_player_action(amount, attribute, is_die_roll, num_die_rolled) VALUES(

-- ADD GO_TO_COMBAT_ACTIONS
INSERT INTO ff.go_to_combat_action(text_name) VALUES(

-- ADD MOVE_PLAYER_ACTIONS
INSERT INTO ff.move_player_action(room_code) VALUES(

-- ADD PERMA_LOCK_ACTIONS
INSERT INTO ff.perma_lock_action(door_name) VALUES(

-- ADD SCRIPT_BUNDLES
INSERT INTO ff.script_bundle(name) VALUES(
-- ADD script_bundle's RELATED scriptss


-- ADD DOORS
INSERT INTO ff.door(attribute_test, direction, leads_to, locked, name, num_dice_roll, title) VALUES(
-- ADD door's RELATED scripted_eventss


-- ADD IO_NPC_DATAS
INSERT INTO ff.io_npc_data(behavior, behavior_param, climb_count, collid_state, collid_time, critical, cut, cuts, damages, gender, internal_script, internal_script_js, life, mana, maxlife, maxmana, name, npc_flags, title, weapon, xpvalue) VALUES(
  0, 0.0, 0.0, 0, 0, 0.0, false, 0, 0.0, (SELECT gender_id FROM ff.gender WHERE name='Male'), 'Orc', NULL, 0.0, 0.0, 0.0, 0.0, 'ORC_SENTRY', 0, 'Sleeping Goblin-like creature', 'ORC CLEAVER', 0), (
  0, 0.0, 0.0, 0, 0, 0.0, false, 0, 0.0, (SELECT gender_id FROM ff.gender WHERE name='Male'), 'Orc', NULL, 0.0, 0.0, 0.0, 0.0, 'ORC_SENTRY_2', 0, 'Ugly, warty-faced Goblin-creature', 'FIST', 0), (
  0, 0.0, 0.0, 0, 0, 0.0, false, 0, 0.0, NULL, 'Door', NULL, 0.0, 0.0, 0.0, 0.0, 'DOOR_12', 0, 'WOODEN DOOR', NULL, 0), (
  0, 0.0, 0.0, 0, 0, 0.0, false, 0, 0.0, NULL, 'Door', NULL, 0.0, 0.0, 0.0, 0.0, 'DOOR_43', 0, 'WOODEN DOOR', NULL, 0);

-- ADD io_npc_data's RELATED groupss
INSERT INTO ff.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM ff.io_npc_data WHERE name='DOOR_12'),
  (SELECT group_id FROM ff.group WHERE name='DOORS'));
INSERT INTO ff.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM ff.io_npc_data WHERE name='DOOR_43'),
  (SELECT group_id FROM ff.group WHERE name='DOORS'));

-- ADD io_npc_data's RELATED attributess
INSERT INTO ff.io_npc_data_attributes_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM ff.io_npc_data WHERE name='ORC_SENTRY'),
  'SK',
  '6');
INSERT INTO ff.io_npc_data_attributes_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM ff.io_npc_data WHERE name='ORC_SENTRY'),
  'ST',
  '5');
INSERT INTO ff.io_npc_data_attributes_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM ff.io_npc_data WHERE name='ORC_SENTRY'),
  'MSK',
  '6');
INSERT INTO ff.io_npc_data_attributes_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM ff.io_npc_data WHERE name='ORC_SENTRY'),
  'MST',
  '5');
INSERT INTO ff.io_npc_data_attributes_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM ff.io_npc_data WHERE name='ORC_SENTRY_2'),
  'SK',
  '6');
INSERT INTO ff.io_npc_data_attributes_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM ff.io_npc_data WHERE name='ORC_SENTRY_2'),
  'ST',
  '4');
INSERT INTO ff.io_npc_data_attributes_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM ff.io_npc_data WHERE name='ORC_SENTRY_2'),
  'MSK',
  '6');
INSERT INTO ff.io_npc_data_attributes_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM ff.io_npc_data WHERE name='ORC_SENTRY_2'),
  'MST',
  '4');
INSERT INTO ff.io_npc_data_attributes_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM ff.io_npc_data WHERE name='DOOR_12'),
  'ST',
  '2');
INSERT INTO ff.io_npc_data_attributes_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM ff.io_npc_data WHERE name='DOOR_12'),
  'MST',
  '2');
INSERT INTO ff.io_npc_data_attributes_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM ff.io_npc_data WHERE name='DOOR_43'),
  'ST',
  '2');
INSERT INTO ff.io_npc_data_attributes_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM ff.io_npc_data WHERE name='DOOR_43'),
  'MST',
  '2');

-- ADD io_npc_data's RELATED scripted_eventss


-- ADD ROOM_BKUPS
INSERT INTO ff.room_bkup(code, text) VALUES(
  '1', (SELECT text_id FROM ff.text WHERE name='1')), (
  '71', (SELECT text_id FROM ff.text WHERE name='71')), (
  '278', (SELECT text_id FROM ff.text WHERE name='278'));

-- ADD room_bkup's RELATED doorss

-- ADD room_bkup's RELATED exitss
INSERT INTO ff.room_bkup_exits_lookup(room_bkup_id, key, value) VALUES (
  (SELECT room_bkup_id FROM ff.room_bkup WHERE code='1'),
  'EAST',
  '278');
INSERT INTO ff.room_bkup_exits_lookup(room_bkup_id, key, value) VALUES (
  (SELECT room_bkup_id FROM ff.room_bkup WHERE code='1'),
  'WEST',
  '71');
INSERT INTO ff.room_bkup_exits_lookup(room_bkup_id, key, value) VALUES (
  (SELECT room_bkup_id FROM ff.room_bkup WHERE code='278'),
  'WEST',
  '1');

-- ADD room_bkup's RELATED scripted_eventss


-- ADD SET_ROOM_TEXT_ACTIONS
INSERT INTO ff.set_room_text_action(room_code, text_name) VALUES(

-- ADD SHOW_TEXT_ACTIONS
INSERT INTO ff.show_text_action(error, text_name) VALUES(

-- ADD SPAWN_MOB_ACTIONS
INSERT INTO ff.spawn_mob_action(mob_code) VALUES(

-- ADD TEST_YOUR_LUCK_ACTIONS
INSERT INTO ff.test_your_luck_action(fail_scripts, pass_scripts) VALUES(

