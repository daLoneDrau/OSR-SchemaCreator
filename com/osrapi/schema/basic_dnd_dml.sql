-- ADD ATTRIBUTES
INSERT INTO basic_dnd.attribute(code, description, name) VALUES(
  'ABD', 'Attack Bonus vs. Dragons', 'Attack Bonus vs. Dragons'), (
  'ABG', 'Attack Bonus vs. Goblinoids', 'Attack Bonus vs. Goblinoids'), (
  'ABK', 'Attack Bonus vs. Kobolds', 'Attack Bonus vs. Kobolds'), (
  'ABL', 'Attack Bonus vs. Lycanthropes', 'Attack Bonus vs. Lycanthropes'), (
  'ABM', 'Attack Bonus vs. Mystical Monsters', 'Attack Bonus vs. Mystical Monsters'), (
  'ABR', 'Attack Bonus vs. Regenerating Monsters', 'Attack Bonus vs. Regenerating Monsters'), (
  'ABW', 'Attack Bonus vs. Wizards', 'Attack Bonus vs. Wizards'), (
  'AC', 'Armor Class', 'Armor Class'), (
  'CHA', 'charisma', 'Charisma'), (
  'CON', 'constitution', 'Constitution'), (
  'DB', 'Damage Bonus', 'Damage Bonus'), (
  'DEX', 'Dexterity', 'Dexterity'), (
  'DMG', 'Damages', 'Damages'), (
  'FDB', 'Force Doors Bonus', 'Force Doors Bonus'), (
  'HP', 'Hit Points', 'Hit Points'), (
  'IM', 'Initiative Modifer', 'Initiative Modifer'), (
  'INT', 'intelligence', 'Intelligence'), (
  'LAB', 'Melee Bonus', 'Melee Bonus'), (
  'MAB', 'Missile Attack Bonus', 'Missile Attack Bonus'), (
  'MHP', 'Max Hit Points', 'Max Hit Points'), (
  'PRX', 'Prime Requisite Experience Adjustment', 'Prime Requisite Experience Adjustment'), (
  'RA', 'Reaction', 'Reaction'), (
  'STB', 'Saving Throw vs. Breath Weapons', 'Saving Throw vs. Breath Weapons'), (
  'STD', 'Saving Throw vs. Death', 'Saving Throw vs. Death'), (
  'STE', 'Saving Throw vs. Petrification', 'Saving Throw vs. Petrification'), (
  'STM', 'Saving Throw vs. Magic', 'Saving Throw vs. Magic'), (
  'STO', 'Saving Throw vs. Poison', 'Saving Throw vs. Poison'), (
  'STP', 'Saving Throw vs. Paralyzation', 'Saving Throw vs. Paralyzation'), (
  'STR', 'Strength', 'Strength'), (
  'STS', 'Saving Throw vs. Spell Devices', 'Saving Throw vs. Spell Devices'), (
  'WIS', 'wisdom', 'Wisdom');


-- ADD DIES
INSERT INTO basic_dnd.die(code, value) VALUES(
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
INSERT INTO basic_dnd.dice(code, die, number, plus) VALUES(
  'ONE_D10', (SELECT die_id FROM basic_dnd.die WHERE code='D10'), 1, 0), (
  'ONE_D2', (SELECT die_id FROM basic_dnd.die WHERE code='D2'), 1, 0), (
  'ONE_D3', (SELECT die_id FROM basic_dnd.die WHERE code='D3'), 1, 0), (
  'ONE_D4', (SELECT die_id FROM basic_dnd.die WHERE code='D4'), 1, 0), (
  'ONE_D4_PLUS_1', (SELECT die_id FROM basic_dnd.die WHERE code='D4'), 1, 1), (
  'ONE_D6', (SELECT die_id FROM basic_dnd.die WHERE code='D6'), 1, 0), (
  'ONE_D8', (SELECT die_id FROM basic_dnd.die WHERE code='D8'), 1, 0), (
  'THREE_D6', (SELECT die_id FROM basic_dnd.die WHERE code='D6'), 3, 0), (
  'TWO_D4', (SELECT die_id FROM basic_dnd.die WHERE code='D4'), 2, 0), (
  'TWO_D6', (SELECT die_id FROM basic_dnd.die WHERE code='D6'), 2, 0);


-- ADD EQUIPMENT_ELEMENT_TYPES
INSERT INTO basic_dnd.equipment_element_type(code, value) VALUES(
  'ELEMENT_ATTACK_BONUS_DRAGONS', 0), (
  'ELEMENT_ATTACK_BONUS_GOBLINS', 1), (
  'ELEMENT_ATTACK_BONUS_KOBOLDS', 2), (
  'ELEMENT_ATTACK_BONUS_LYCANS', 3), (
  'ELEMENT_ATTACK_BONUS_MAGICAL_MONSTERS', 4), (
  'ELEMENT_ATTACK_BONUS_REGENERATING', 5), (
  'ELEMENT_ATTACK_BONUS_UNDEAD', 6), (
  'ELEMENT_ATTACK_BONUS_WIZARDS', 7), (
  'ELEMENT_ARMOR_CLASS', 8), (
  'ELEMENT_CHARISMA', 9), (
  'ELEMENT_CONSTITUTION', 10), (
  'ELEMENT_DAMAGE_BONUS', 11), (
  'ELEMENT_DEXTERITY', 12), (
  'ELEMENT_DAMAGES', 13), (
  'ELEMENT_FORCE_DOORS_BONUS', 14), (
  'ELEMENT_HIT_POINTS', 15), (
  'ELEMENT_INITIATIVE_BONUS', 16), (
  'ELEMENT_INTELLIGENCE', 17), (
  'ELEMENT_MELEE_ATTACK_BONUS', 18), (
  'ELEMENT_MISSILE_ATTACK_BONUS', 19), (
  'ELEMENT_MAX_HIT_POINTS', 20), (
  'ELEMENT_PRIME_REQUISITE_XP_BONUS', 21), (
  'ELEMENT_REACTION', 22), (
  'ELEMENT_SAVING_THROW_BREATH', 23), (
  'ELEMENT_SAVING_THROW_DEATH', 24), (
  'ELEMENT_SAVING_THROW_PETRIFY', 25), (
  'ELEMENT_SAVING_THROW_MAGIC', 26), (
  'ELEMENT_SAVING_THROW_POISON', 27), (
  'ELEMENT_SAVING_THROW_PARALYZE', 28), (
  'ELEMENT_STRENGTH', 29), (
  'ELEMENT_SAVING_THROW_WAND', 30), (
  'ELEMENT_SAVING_THROW_SPELL_DEVICES', 31), (
  'ELEMENT_WISDOM', 32);


-- ADD EQUIPMENT_ITEM_MODIFIERS
INSERT INTO basic_dnd.equipment_item_modifier(code, percent, special, value) VALUES(
  'MINUS_1', false, 0, -1.0), (
  'MINUS_2', false, 0, -2.0), (
  'MINUS_3', false, 0, -3.0), (
  'MINUS_4', false, 0, -4.0), (
  'MINUS_5', false, 0, -5.0), (
  'MINUS_6', false, 0, -6.0);


-- ADD EVENTS
INSERT INTO basic_dnd.event(code) VALUES(

-- ADD GENDERS
INSERT INTO basic_dnd.gender(description, name) VALUES(
  'male', 'Male'), (
  'female', 'Female');


-- ADD GROUPS
INSERT INTO basic_dnd.group(name) VALUES(
  'BLUNT_WEAPON'), (
  'CLERIC'), (
  'DWARF'), (
  'EDGED_WEAPON'), (
  'HEAVY_ARMOUR'), (
  'HEAVY_WEAPON'), (
  'HUMAN'), (
  'LIGHT_WEAPON'), (
  'LONGBOW'), (
  'PIERCING_WEAPON'), (
  'PROJECTILE_WEAPON'), (
  'SILVER_WEAPON'), (
  'STAFF'), (
  'THROWN_WEAPON');


-- ADD OBJECT_TYPES
INSERT INTO basic_dnd.object_type(code, flag) VALUES(
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
INSERT INTO basic_dnd.io_item_data(count, damages, description, food_value, internal_script, name, left_ring, light_value, max_owned, price, ring_type, stack_size, steal_value, weight) VALUES(
  0, (SELECT dice_id FROM basic_dnd.dice WHERE code='TWO_D4'), 'A straight, double-edged weapon with a long hilt and a blade 3'' long. A single- or two-hand grip is used when wielding.', 0, 'BastardSword', 'Longsword', false, 0, 99, 6.0, 0, 10, 0, 20.0), (
  0, NULL, 'An armour made from horizontal overlapping rows or bands of solid armour plates.', 0, 'BandedMail', 'Segmented Cuirass', false, 0, 99, 250.0, 0, 10, 0, 35.0);

-- ADD io_item_data's RELATED groupss
INSERT INTO basic_dnd.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM basic_dnd.io_item_data WHERE name='Longsword'),
  (SELECT group_id FROM basic_dnd.group WHERE name='EDGED_WEAPON'));
INSERT INTO basic_dnd.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM basic_dnd.io_item_data WHERE name='Longsword'),
  (SELECT group_id FROM basic_dnd.group WHERE name='HEAVY_WEAPON'));
INSERT INTO basic_dnd.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM basic_dnd.io_item_data WHERE name='Segmented Cuirass'),
  (SELECT group_id FROM basic_dnd.group WHERE name='HEAVY_ARMOUR'));

-- ADD io_item_data's RELATED typess
INSERT INTO basic_dnd.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM basic_dnd.io_item_data WHERE name='Longsword'),
  (SELECT object_type_id FROM basic_dnd.object_type WHERE code='OBJECT_TYPE_1H'));
INSERT INTO basic_dnd.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM basic_dnd.io_item_data WHERE name='Segmented Cuirass'),
  (SELECT object_type_id FROM basic_dnd.object_type WHERE code='OBJECT_TYPE_ARMOR'));

-- ADD io_item_data's RELATED modifierss
INSERT INTO basic_dnd.io_item_data_modifiers_lookup(io_item_data_id, key, value) VALUES (
  (SELECT io_item_data_id FROM basic_dnd.io_item_data WHERE name='Segmented Cuirass'),
  'ELEMENT_ARMOR_CLASS',
  'MINUS_5');


-- ADD SCRIPT_ACTION_TYPES
INSERT INTO basic_dnd.script_action_type(code) VALUES(

-- ADD SCRIPT_ACTIONS
INSERT INTO basic_dnd.script_action(name, type) VALUES(

-- ADD SCRIPT_BUNDLES
INSERT INTO basic_dnd.script_bundle(name) VALUES(
-- ADD script_bundle's RELATED scriptss


-- ADD IO_PC_DATAS
INSERT INTO basic_dnd.io_pc_data(bags, flags, gender, gold, interface_flags, internal_script, level, xp) VALUES(
-- ADD io_pc_data's RELATED groupss

-- ADD io_pc_data's RELATED attributess

-- ADD io_pc_data's RELATED scripted_eventss


