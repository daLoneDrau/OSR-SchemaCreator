-- ADD COMMANDS
INSERT INTO ff.command(name, sort_order) VALUES(
  'NORTH', 0), (
  'SOUTH', 1), (
  'WEST', 2), (
  'EAST', 3), (
  'TALK', 4), (
  'GIVE', 5), (
  'ATTACK', 6), (
  'OPEN', 7), (
  'SMASH', 8), (
  'TAKE', 9), (
  'SIT', 10), (
  'STEP', 11), (
  'BRIBE', 12), (
  'INTIMIDATE', 13), (
  'THROW', 14), (
  'EAT', 15), (
  'SEARCH', 16), (
  'USE', 17), (
  'INVENTORY', 18);


-- ADD DAMAGE_TYPES
INSERT INTO ff.damage_type(flag, name) VALUES(

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
  'EQUIP_SLOT_WEAPON', 1), (
  'EQUIP_SLOT_SHIELD', 2);


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
INSERT INTO ff.io_item_data(count, description, food_value, internal_script, left_ring, light_value, max_owned, name, price, ring_type, stack_size, steal_value, title, weight) VALUES(
  0, 'Your trusty iron sword.', 0, 'IronSword', false, 0, 1, 'IRON SWORD', 0.0, 0, 1, 0, 'IRON SWORD', 1.0), (
  0, 'A wicked Orc cleaver.', 0, 'OrcCleaver', false, 0, 1, 'ORC CLEAVER', 0.0, 0, 1, 0, 'ORC CLEAVER', 1.0);

-- ADD io_item_data's RELATED groupss

-- ADD io_item_data's RELATED typess
INSERT INTO ff.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ff.io_item_data WHERE name='IRON SWORD'),
  (SELECT object_type_id FROM ff.object_type WHERE code='OBJECT_TYPE_1H'));
INSERT INTO ff.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ff.io_item_data WHERE name='ORC CLEAVER'),
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


-- ADD IO_PC_DATAS
INSERT INTO ff.io_pc_data(bags, gender, gold, interface_flags, level, name, xp) VALUES(
-- ADD io_pc_data's RELATED attributess

-- ADD io_pc_data's RELATED equipped_itemss


-- ADD ROOMS
INSERT INTO ff.room(code) VALUES(
  '1'), (
  '12'), (
  '71');

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
  (SELECT room_id FROM ff.room WHERE code='12'),
  (SELECT command_id FROM ff.command WHERE name='SMASH'));


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
  false, 0, (SELECT terrain_id FROM ff.terrain WHERE name='CAVE_WALL'), 648, 1338);


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
  'continue', '-- Press [Enter] to Continue --'), (
  'invalid_input', 'I''m sorry, I can''t understand what you were trying to do.'), (
  'invalid_exit', 'You can''t go that way.'), (
  'exit_blocked', 'The way is blocked by <tioName>.'), (
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
  '71', 'There is a right-hand turn to the north in the passage. Cautiously you approach a sentry post on the corner and, as you look in, you can see a strange Goblin-like creature in leather armour asleep at his post. You try to tiptoe past him.
'), (
  '12', 'The passageway soon comes to an end at a locked wooden door. You listen at the door but hear nothing.
'), (
  '12_WEST', 'You follow the passage west to the junction.'), (
  '12_SECONDARY', 'You are in an east-west corridor.  There is a locked wooden door on the eastern end.
'), (
  'orc_sentry_aggression', 'The ORC scrambles to his feet and turns to grasp at a rope which is probably the alarm bell. You must attack him quickly.'), (
  'orc_sentry_dying', 'The ORC gurgles as it collapses. ''~burz~'''), (
  'orc_sentry_ouch', '''~azgdrar mugh~'' the orc declares.'), (
  'orc_sentry_ouch_medium', 'The orc eyes you defiantly. ''~mugh... tum brakat~'''), (
  'orc_sentry_ouch_strong', 'The orc screams at you in desperation. ''~MUGH AGDUM~'''), (
  'orc_sentry_search', '''~tugh gimbat~''.  The orc scans the room.'), (
  'orc_sentry_thief', '''~gulBIL~'''), (
  'orc_sentry_threat', '''~tugh damad~'''), (
  'orc_sentry_victory', '''~skai~'', the ORC sneers.');


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
INSERT INTO ff.io_npc_data(behavior, behavior_param, climb_count, collid_state, collid_time, critical, cut, cuts, damages, gender, internal_script, life, mana, maxlife, maxmana, name, npc_flags, title, weapon, xpvalue) VALUES(
  0, 0.0, 0.0, 0, 0, 0.0, false, 0, 0.0, (SELECT gender_id FROM ff.gender WHERE name='Male'), 'OrcSentry', 0.0, 0.0, 0.0, 0.0, 'ORC_SENTRY', 0, 'ORC', 'ORC CLEAVER', 0), (
  0, 0.0, 0.0, 0, 0, 0.0, false, 0, 0.0, NULL, 'Door12', 0.0, 0.0, 0.0, 0.0, 'DOOR_12', 0, 'WOODEN DOOR', NULL, 0);

-- ADD io_npc_data's RELATED groupss
INSERT INTO ff.io_npc_data_groups_lookup(io_npc_data_id, group_id) VALUES (
  (SELECT io_npc_data_id FROM ff.io_npc_data WHERE name='DOOR_12'),
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
  (SELECT io_npc_data_id FROM ff.io_npc_data WHERE name='DOOR_12'),
  'ST',
  '2');
INSERT INTO ff.io_npc_data_attributes_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM ff.io_npc_data WHERE name='DOOR_12'),
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

