-- ADD ATTRIBUTES
INSERT INTO ll.attribute(code, description, name) VALUES(
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


-- ADD CURRENCYS
INSERT INTO ll.currency(code, name, sort_order) VALUES(
  'CP', 'Copper Piece', 0), (
  'SP', 'Silver Piece', 0), (
  'EP', 'Electrum Piece', 0), (
  'GP', 'Gold Piece', 0), (
  'PP', 'Platinum Piece', 0);

-- ADD currency's RELATED exchange_ratess


-- ADD DIES
INSERT INTO ll.die(code, value) VALUES(
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
INSERT INTO ll.dice(code, die, number, plus) VALUES(
  'ONE_D10', (SELECT die_id FROM ll.die WHERE code='D10'), 1, 0), (
  'ONE_D2', (SELECT die_id FROM ll.die WHERE code='D2'), 1, 0), (
  'ONE_D3', (SELECT die_id FROM ll.die WHERE code='D3'), 1, 0), (
  'ONE_D4', (SELECT die_id FROM ll.die WHERE code='D4'), 1, 0), (
  'ONE_D4_PLUS_1', (SELECT die_id FROM ll.die WHERE code='D4'), 1, 1), (
  'ONE_D6', (SELECT die_id FROM ll.die WHERE code='D6'), 1, 0), (
  'ONE_D8', (SELECT die_id FROM ll.die WHERE code='D8'), 1, 0), (
  'THREE_D6', (SELECT die_id FROM ll.die WHERE code='D6'), 3, 0), (
  'TWO_D4', (SELECT die_id FROM ll.die WHERE code='D4'), 2, 0), (
  'TWO_D6', (SELECT die_id FROM ll.die WHERE code='D6'), 2, 0);


-- ADD EQUIPMENT_ELEMENT_TYPES
INSERT INTO ll.equipment_element_type(code, value) VALUES(
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
INSERT INTO ll.equipment_item_modifier(code, percent, special, value) VALUES(
  'MINUS_1', false, 0, -1.0), (
  'MINUS_2', false, 0, -2.0), (
  'MINUS_3', false, 0, -3.0), (
  'MINUS_4', false, 0, -4.0), (
  'MINUS_5', false, 0, -5.0), (
  'MINUS_6', false, 0, -6.0);


-- ADD EQUIPMENT_SLOTS
INSERT INTO ll.equipment_slot(code, value) VALUES(
  'EQUIP_SLOT_TORSO', 5), (
  'EQUIP_SLOT_HELMET', 6), (
  'EQUIP_SLOT_LEGGINGS', 7), (
  'EQUIP_SLOT_GLOVES', 8), (
  'EQUIP_SLOT_BOOTS', 9), (
  'EQUIP_SLOT_RING_LEFT', 0), (
  'EQUIP_SLOT_RING_RIGHT', 1), (
  'EQUIP_SLOT_SHIELD', 3), (
  'EQUIP_SLOT_TORCH', 4), (
  'EQUIP_SLOT_WEAPON', 2);


-- ADD EVENTS
INSERT INTO ll.event(code) VALUES(

-- ADD GENDERS
INSERT INTO ll.gender(description, name) VALUES(
  'male', 'Male'), (
  'female', 'Female');


-- ADD GROUPS
INSERT INTO ll.group(name) VALUES(
  'BLUNT_WEAPON'), (
  'CLERIC'), (
  'DWARF'), (
  'EDGED_WEAPON'), (
  'ELF'), (
  'FIGHTER'), (
  'HALFLING'), (
  'HEAVY_ARMOUR'), (
  'HEAVY_WEAPON'), (
  'HUMAN'), (
  'LAWFUL'), (
  'LIGHT_WEAPON'), (
  'LONGBOW'), (
  'MAGE'), (
  'PIERCING_WEAPON'), (
  'PROJECTILE_WEAPON'), (
  'SILVER_WEAPON'), (
  'STAFF'), (
  'THROWN_WEAPON');


-- ADD OBJECT_TYPES
INSERT INTO ll.object_type(code, flag) VALUES(
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
INSERT INTO ll.io_item_data(count, damages, description, food_value, internal_script, left_ring, light_value, max_owned, name, price, ring_type, stack_size, steal_value, weight) VALUES(
  0, (SELECT dice_id FROM ll.dice WHERE code='TWO_D4'), 'A straight, double-edged weapon with a long hilt and a blade 3'' long. A single- or two-hand grip is used when wielding.', 0, 'BastardSword', false, 0, 99, 'Longsword', 6.0, 0, 10, 0, 20.0), (
  0, (SELECT dice_id FROM ll.dice WHERE code='ONE_D8'), 'An arm-length weapon borne in both hands.', 0, 'BattleAxe', false, 0, 99, 'Battle Axe', 6.0, 0, 10, 0, 6.0), (
  0, (SELECT dice_id FROM ll.dice WHERE code='ONE_D4'), 'A short stick of fire-hardened oak.', 0, 'Club', false, 0, 99, 'Club', 3.0, 0, 10, 0, 3.0), (
  0, (SELECT dice_id FROM ll.dice WHERE code='ONE_D4'), 'A knife with a very sharp point designed to be used as a thrusting or stabbing weapon.', 0, 'Dagger', false, 0, 99, 'Dagger', 3.0, 0, 15, 0, 1.0), (
  0, (SELECT dice_id FROM ll.dice WHERE code='ONE_D4'), 'A missile weapon resembling a large arrow, with a weighted point.', 0, 'Dart', false, 0, 99, 'Dart', 0.5, 0, 20, 0, 0.5), (
  0, (SELECT dice_id FROM ll.dice WHERE code='ONE_D6'), 'A wooden haft connected by a chain to a spherical striking end.', 0, 'Flail', false, 0, 99, 'Flail', 3.0, 0, 10, 0, 5.0), (
  0, (SELECT dice_id FROM ll.dice WHERE code='ONE_D4'), 'A weapon of war intended for close combat action that resembles a hammer.', 0, 'Hammer', false, 0, 99, 'War Hammer', 1.0, 0, 10, 0, 2.0), (
  0, (SELECT dice_id FROM ll.dice WHERE code='ONE_D6'), 'A small, light axe designed for use in one hand.', 0, 'HandAxe', false, 0, 99, 'Hand Axe', 1.0, 0, 10, 0, 3.0), (
  0, (SELECT dice_id FROM ll.dice WHERE code='ONE_D8'), 'A heavy weapon consisting of a horizontal bow-like assembly mounted on a stock.', 0, 'HeavyCrossbow', false, 0, 99, 'Heavy Crossbow', 25.0, 0, 5, 0, 8.0), (
  0, (SELECT dice_id FROM ll.dice WHERE code='ONE_D8'), 'A weapon based on the agricultural tool with a very long shaft attached to a hinged, roughly cylindrical striking end.', 0, 'HeavyFlail', false, 0, 99, 'Heavy Flail', 8.0, 0, 5, 0, 10.0), (
  0, (SELECT dice_id FROM ll.dice WHERE code='ONE_D6'), 'A modified hammer''s head and spike mounted atop a long pole.', 0, 'HeavyHammer', false, 0, 99, 'Raven''s Beak', 7.0, 0, 10, 0, 5.0), (
  0, (SELECT dice_id FROM ll.dice WHERE code='ONE_D8'), 'A type of war hammer that has a very long spike on the reverse of the hammer head. The horseman''s pick is used to penetrate thick plate armour or mail which a standard sword can not.', 0, 'HeavyPick', false, 0, 99, 'Horseman''s Pick', 8.0, 0, 5, 0, 6.0), (
  0, (SELECT dice_id FROM ll.dice WHERE code='ONE_D6'), 'A light spear designed to be thrown as a ranged weapon.', 0, 'Javelin', false, 0, 99, 'Javelin', 1.0, 0, 15, 0, 2.0), (
  0, (SELECT dice_id FROM ll.dice WHERE code='ONE_D6'), 'A thrusting spear popular for its extreme stopping power.', 0, 'Lance', false, 0, 99, 'Lance', 7.0, 0, 5, 0, 10.0), (
  0, (SELECT dice_id FROM ll.dice WHERE code='ONE_D6'), 'A light weapon consisting of a horizontal bow-like assembly mounted on a stock.', 0, 'LightCrossbow', false, 0, 99, 'Light Crossbow', 7.0, 0, 5, 0, 10.0), (
  0, NULL, 'An armour made from horizontal overlapping rows or bands of solid armour plates.', 0, 'BandedMail', false, 0, 99, 'Segmented Cuirass', 250.0, 0, 10, 0, 35.0), (
  0, NULL, 'A sleeved shirt of metal rings, reaching down to the mid-thigh.', 0, 'ChainMail', false, 0, 99, 'Hauberk', 150.0, 0, 10, 0, 30.0), (
  0, NULL, 'A jacket of boiled leather.', 0, 'LeatherArmor', false, 0, 99, 'Cuir Bouilli', 20.0, 0, 10, 0, 15.0), (
  0, NULL, 'A long linen jacket stuffed with scraps of cloth for added thickness.', 0, 'PaddedArmor', false, 0, 99, 'Gambeson', 20.0, 0, 10, 0, 15.0), (
  0, NULL, 'A full suit of personal body armour made from iron or steel plates.', 0, 'PlateMail', false, 0, 99, 'Plate Armour', 150.0, 0, 10, 0, 30.0), (
  0, NULL, 'A long leather jacket covered with overlapping rows of armour scales.', 0, 'ScaleMail', false, 0, 99, 'Scale Armour', 65.0, 0, 10, 0, 40.0), (
  0, NULL, 'A round wooden shield.', 0, 'Shield', false, 0, 99, 'Shield', 10.0, 0, 10, 0, 10.0), (
  0, NULL, 'A jacket of riveted mail embedded with plates of armour.', 0, 'SplintMail', false, 0, 99, 'Plated Mail', 200.0, 0, 10, 0, 45.0), (
  0, NULL, 'A canvas or leather jacket riveted with plates of armour.', 0, 'StuddedLeatherArmor', false, 0, 99, 'Brigandine', 30.0, 0, 10, 0, 20.0);

-- ADD io_item_data's RELATED groupss
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Longsword'),
  (SELECT group_id FROM ll.group WHERE name='EDGED_WEAPON'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Longsword'),
  (SELECT group_id FROM ll.group WHERE name='HEAVY_WEAPON'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Battle Axe'),
  (SELECT group_id FROM ll.group WHERE name='EDGED_WEAPON'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Battle Axe'),
  (SELECT group_id FROM ll.group WHERE name='HEAVY_WEAPON'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Club'),
  (SELECT group_id FROM ll.group WHERE name='BLUNT_WEAPON'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Dagger'),
  (SELECT group_id FROM ll.group WHERE name='EDGED_WEAPON'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Dagger'),
  (SELECT group_id FROM ll.group WHERE name='LIGHT_WEAPON'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Dart'),
  (SELECT group_id FROM ll.group WHERE name='EDGED_WEAPON'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Dart'),
  (SELECT group_id FROM ll.group WHERE name='THROWN_WEAPON'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Flail'),
  (SELECT group_id FROM ll.group WHERE name='BLUNT_WEAPON'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='War Hammer'),
  (SELECT group_id FROM ll.group WHERE name='BLUNT_WEAPON'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Hand Axe'),
  (SELECT group_id FROM ll.group WHERE name='EDGED_WEAPON'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Heavy Crossbow'),
  (SELECT group_id FROM ll.group WHERE name='EDGED_WEAPON'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Heavy Crossbow'),
  (SELECT group_id FROM ll.group WHERE name='HEAVY_WEAPON'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Heavy Crossbow'),
  (SELECT group_id FROM ll.group WHERE name='PROJECTILE_WEAPON'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Heavy Flail'),
  (SELECT group_id FROM ll.group WHERE name='BLUNT_WEAPON'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Heavy Flail'),
  (SELECT group_id FROM ll.group WHERE name='HEAVY_WEAPON'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Raven''s Beak'),
  (SELECT group_id FROM ll.group WHERE name='BLUNT_WEAPON'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Horseman''s Pick'),
  (SELECT group_id FROM ll.group WHERE name='PIERCING_WEAPON'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Horseman''s Pick'),
  (SELECT group_id FROM ll.group WHERE name='HEAVY_WEAPON'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Javelin'),
  (SELECT group_id FROM ll.group WHERE name='PIERCING_WEAPON'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Javelin'),
  (SELECT group_id FROM ll.group WHERE name='THROWN_WEAPON'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Lance'),
  (SELECT group_id FROM ll.group WHERE name='PIERCING_WEAPON'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Lance'),
  (SELECT group_id FROM ll.group WHERE name='HEAVY_WEAPON'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Light Crossbow'),
  (SELECT group_id FROM ll.group WHERE name='PIERCING_WEAPON'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Light Crossbow'),
  (SELECT group_id FROM ll.group WHERE name='PROJECTILE_WEAPON'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Segmented Cuirass'),
  (SELECT group_id FROM ll.group WHERE name='HEAVY_ARMOUR'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Hauberk'),
  (SELECT group_id FROM ll.group WHERE name='HEAVY_ARMOUR'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Plate Armour'),
  (SELECT group_id FROM ll.group WHERE name='HEAVY_ARMOUR'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Scale Armour'),
  (SELECT group_id FROM ll.group WHERE name='HEAVY_ARMOUR'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Plated Mail'),
  (SELECT group_id FROM ll.group WHERE name='HEAVY_ARMOUR'));
INSERT INTO ll.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Brigandine'),
  (SELECT group_id FROM ll.group WHERE name='HEAVY_ARMOUR'));

-- ADD io_item_data's RELATED typess
INSERT INTO ll.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Longsword'),
  (SELECT object_type_id FROM ll.object_type WHERE code='OBJECT_TYPE_1H'));
INSERT INTO ll.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Battle Axe'),
  (SELECT object_type_id FROM ll.object_type WHERE code='OBJECT_TYPE_2H'));
INSERT INTO ll.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Club'),
  (SELECT object_type_id FROM ll.object_type WHERE code='OBJECT_TYPE_1H'));
INSERT INTO ll.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Dagger'),
  (SELECT object_type_id FROM ll.object_type WHERE code='OBJECT_TYPE_DAGGER'));
INSERT INTO ll.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Dart'),
  (SELECT object_type_id FROM ll.object_type WHERE code='OBJECT_TYPE_1H'));
INSERT INTO ll.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Flail'),
  (SELECT object_type_id FROM ll.object_type WHERE code='OBJECT_TYPE_1H'));
INSERT INTO ll.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='War Hammer'),
  (SELECT object_type_id FROM ll.object_type WHERE code='OBJECT_TYPE_1H'));
INSERT INTO ll.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Hand Axe'),
  (SELECT object_type_id FROM ll.object_type WHERE code='OBJECT_TYPE_1H'));
INSERT INTO ll.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Heavy Crossbow'),
  (SELECT object_type_id FROM ll.object_type WHERE code='OBJECT_TYPE_BOW'));
INSERT INTO ll.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Heavy Flail'),
  (SELECT object_type_id FROM ll.object_type WHERE code='OBJECT_TYPE_2H'));
INSERT INTO ll.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Raven''s Beak'),
  (SELECT object_type_id FROM ll.object_type WHERE code='OBJECT_TYPE_2H'));
INSERT INTO ll.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Horseman''s Pick'),
  (SELECT object_type_id FROM ll.object_type WHERE code='OBJECT_TYPE_1H'));
INSERT INTO ll.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Javelin'),
  (SELECT object_type_id FROM ll.object_type WHERE code='OBJECT_TYPE_1H'));
INSERT INTO ll.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Lance'),
  (SELECT object_type_id FROM ll.object_type WHERE code='OBJECT_TYPE_2H'));
INSERT INTO ll.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Light Crossbow'),
  (SELECT object_type_id FROM ll.object_type WHERE code='OBJECT_TYPE_2H'));
INSERT INTO ll.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Segmented Cuirass'),
  (SELECT object_type_id FROM ll.object_type WHERE code='OBJECT_TYPE_ARMOR'));
INSERT INTO ll.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Hauberk'),
  (SELECT object_type_id FROM ll.object_type WHERE code='OBJECT_TYPE_ARMOR'));
INSERT INTO ll.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Cuir Bouilli'),
  (SELECT object_type_id FROM ll.object_type WHERE code='OBJECT_TYPE_ARMOR'));
INSERT INTO ll.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Gambeson'),
  (SELECT object_type_id FROM ll.object_type WHERE code='OBJECT_TYPE_ARMOR'));
INSERT INTO ll.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Plate Armour'),
  (SELECT object_type_id FROM ll.object_type WHERE code='OBJECT_TYPE_ARMOR'));
INSERT INTO ll.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Scale Armour'),
  (SELECT object_type_id FROM ll.object_type WHERE code='OBJECT_TYPE_ARMOR'));
INSERT INTO ll.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Shield'),
  (SELECT object_type_id FROM ll.object_type WHERE code='OBJECT_TYPE_SHIELD'));
INSERT INTO ll.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Plated Mail'),
  (SELECT object_type_id FROM ll.object_type WHERE code='OBJECT_TYPE_ARMOR'));
INSERT INTO ll.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Brigandine'),
  (SELECT object_type_id FROM ll.object_type WHERE code='OBJECT_TYPE_ARMOR'));

-- ADD io_item_data's RELATED modifierss
INSERT INTO ll.io_item_data_modifiers_lookup(io_item_data_id, key, value) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Segmented Cuirass'),
  'ELEMENT_ARMOR_CLASS',
  'MINUS_5');
INSERT INTO ll.io_item_data_modifiers_lookup(io_item_data_id, key, value) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Hauberk'),
  'ELEMENT_ARMOR_CLASS',
  'MINUS_4');
INSERT INTO ll.io_item_data_modifiers_lookup(io_item_data_id, key, value) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Cuir Bouilli'),
  'ELEMENT_ARMOR_CLASS',
  'MINUS_2');
INSERT INTO ll.io_item_data_modifiers_lookup(io_item_data_id, key, value) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Gambeson'),
  'ELEMENT_ARMOR_CLASS',
  'MINUS_1');
INSERT INTO ll.io_item_data_modifiers_lookup(io_item_data_id, key, value) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Plate Armour'),
  'ELEMENT_ARMOR_CLASS',
  'MINUS_6');
INSERT INTO ll.io_item_data_modifiers_lookup(io_item_data_id, key, value) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Scale Armour'),
  'ELEMENT_ARMOR_CLASS',
  'MINUS_3');
INSERT INTO ll.io_item_data_modifiers_lookup(io_item_data_id, key, value) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Shield'),
  'ELEMENT_ARMOR_CLASS',
  'MINUS_1');
INSERT INTO ll.io_item_data_modifiers_lookup(io_item_data_id, key, value) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Plated Mail'),
  'ELEMENT_ARMOR_CLASS',
  'MINUS_5');
INSERT INTO ll.io_item_data_modifiers_lookup(io_item_data_id, key, value) VALUES (
  (SELECT io_item_data_id FROM ll.io_item_data WHERE name='Brigandine'),
  'ELEMENT_ARMOR_CLASS',
  'MINUS_3');


-- ADD SCRIPT_ACTION_TYPES
INSERT INTO ll.script_action_type(code) VALUES(

-- ADD SCRIPT_ACTIONS
INSERT INTO ll.script_action(name, type) VALUES(

-- ADD SCRIPT_BUNDLES
INSERT INTO ll.script_bundle(name) VALUES(
-- ADD script_bundle's RELATED scriptss


-- ADD IO_NPC_DATAS
INSERT INTO ll.io_npc_data(behavior, behavior_param, climb_count, collid_state, collid_time, critical, cut, cuts, damages, gender, internal_script, level, life, mana, maxlife, maxmana, module, name, npc_flags, title, weapon, xpvalue) VALUES(
  0, 0.0, 0.0, 0, 0, 0.0, false, 0, 0.0, (SELECT gender_id FROM ll.gender WHERE name='Male'), NULL, 1, 0.0, 0.0, 0.0, 0.0, 'AC1 - The Shady Dragon Inn', 'Abel Artone', 0, NULL, NULL, 0), (
  0, 0.0, 0.0, 0, 0, 0.0, false, 0, 0.0, (SELECT gender_id FROM ll.gender WHERE name='Male'), NULL, 1, 0.0, 0.0, 0.0, 0.0, 'AC1 - The Shady Dragon Inn', 'Abel Artone', 0, NULL, NULL, 0);

-- ADD io_npc_data's RELATED inventory_itemss

-- ADD io_npc_data's RELATED attributess
INSERT INTO ll.io_npc_data_attributes_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM ll.io_npc_data WHERE name='Abel Artone'),
  'STR',
  '10');
INSERT INTO ll.io_npc_data_attributes_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM ll.io_npc_data WHERE name='Abel Artone'),
  'INT',
  '5');
INSERT INTO ll.io_npc_data_attributes_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM ll.io_npc_data WHERE name='Abel Artone'),
  'WIS',
  '15');
INSERT INTO ll.io_npc_data_attributes_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM ll.io_npc_data WHERE name='Abel Artone'),
  'CON',
  '9');
INSERT INTO ll.io_npc_data_attributes_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM ll.io_npc_data WHERE name='Abel Artone'),
  'DEX',
  '8');
INSERT INTO ll.io_npc_data_attributes_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM ll.io_npc_data WHERE name='Abel Artone'),
  'CHA',
  '12');
INSERT INTO ll.io_npc_data_attributes_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM ll.io_npc_data WHERE name='Abel Artone'),
  'STR',
  '10');
INSERT INTO ll.io_npc_data_attributes_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM ll.io_npc_data WHERE name='Abel Artone'),
  'INT',
  '5');
INSERT INTO ll.io_npc_data_attributes_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM ll.io_npc_data WHERE name='Abel Artone'),
  'WIS',
  '15');
INSERT INTO ll.io_npc_data_attributes_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM ll.io_npc_data WHERE name='Abel Artone'),
  'CON',
  '9');
INSERT INTO ll.io_npc_data_attributes_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM ll.io_npc_data WHERE name='Abel Artone'),
  'DEX',
  '8');
INSERT INTO ll.io_npc_data_attributes_lookup(io_npc_data_id, key, value) VALUES (
  (SELECT io_npc_data_id FROM ll.io_npc_data WHERE name='Abel Artone'),
  'CHA',
  '12');

-- ADD io_npc_data's RELATED equipped_itemss

-- ADD io_npc_data's RELATED scripted_eventss


-- ADD IO_PC_DATAS
INSERT INTO ll.io_pc_data(bags, flags, gender, gold, interface_flags, internal_script, level, module, name, xp) VALUES(
  1, 0, (SELECT gender_id FROM ll.gender WHERE name='Male'), 0.0, 0, NULL, 1, 'B1 - In Search of the Unknown', 'Brandon', 0);

-- ADD io_pc_data's RELATED groupss
INSERT INTO ll.io_pc_data_groups_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM ll.io_pc_data WHERE name='Brandon'),
  (SELECT group_id FROM ll.group WHERE name='FIGHTER'));
INSERT INTO ll.io_pc_data_groups_lookup(io_pc_data_id, group_id) VALUES (
  (SELECT io_pc_data_id FROM ll.io_pc_data WHERE name='Brandon'),
  (SELECT group_id FROM ll.group WHERE name='HUMAN'));

-- ADD io_pc_data's RELATED attributess
INSERT INTO ll.io_pc_data_attributes_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM ll.io_pc_data WHERE name='Brandon'),
  'STR',
  '14');
INSERT INTO ll.io_pc_data_attributes_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM ll.io_pc_data WHERE name='Brandon'),
  'INT',
  '8');
INSERT INTO ll.io_pc_data_attributes_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM ll.io_pc_data WHERE name='Brandon'),
  'WIS',
  '11');
INSERT INTO ll.io_pc_data_attributes_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM ll.io_pc_data WHERE name='Brandon'),
  'CON',
  '13');
INSERT INTO ll.io_pc_data_attributes_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM ll.io_pc_data WHERE name='Brandon'),
  'DEX',
  '9');
INSERT INTO ll.io_pc_data_attributes_lookup(io_pc_data_id, key, value) VALUES (
  (SELECT io_pc_data_id FROM ll.io_pc_data WHERE name='Brandon'),
  'CHA',
  '12');

-- ADD io_pc_data's RELATED scripted_eventss


