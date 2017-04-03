-- ADD ATTRIBUTES
INSERT INTO tft.attribute(code, description, name) VALUES(
  'STR', '', 'Strength'), (
  'DX', '', 'Dexterity'), (
  'MA', '', 'Movement Allowance');


-- ADD DIES
INSERT INTO tft.die(code, value) VALUES(
  'D6', 6);


-- ADD DICES
INSERT INTO tft.dice(code, die, number, plus) VALUES(
  'ONE_D6', (SELECT die_id FROM tft.die WHERE code='D6'), 1, 0), (
  'ONE_D6_PLUS_1', (SELECT die_id FROM tft.die WHERE code='D6'), 1, 1), (
  'ONE_D6_PLUS_2', (SELECT die_id FROM tft.die WHERE code='D6'), 1, 2), (
  'ONE_D6_MINUS_1', (SELECT die_id FROM tft.die WHERE code='D6'), 1, -1), (
  'ONE_D6_MINUS_2', (SELECT die_id FROM tft.die WHERE code='D6'), 1, -2), (
  'ONE_D6_MINUS_4', (SELECT die_id FROM tft.die WHERE code='D6'), 1, -4), (
  'TWO_D6', (SELECT die_id FROM tft.die WHERE code='D6'), 2, 0), (
  'TWO_D6_PLUS_1', (SELECT die_id FROM tft.die WHERE code='D6'), 2, 1), (
  'TWO_D6_MINUS_1', (SELECT die_id FROM tft.die WHERE code='D6'), 2, -1), (
  'TWO_D6_MINUS_2', (SELECT die_id FROM tft.die WHERE code='D6'), 2, -2), (
  'THREE_D6', (SELECT die_id FROM tft.die WHERE code='D6'), 3, 0), (
  'THREE_D6_MINUS_1', (SELECT die_id FROM tft.die WHERE code='D6'), 3, -1), (
  'FOUR_D6', (SELECT die_id FROM tft.die WHERE code='D6'), 4, 0);


-- ADD EQUIPMENT_ELEMENT_TYPES
INSERT INTO tft.equipment_element_type(code, value) VALUES(
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
INSERT INTO tft.equipment_item_modifier(code, percent, special, value) VALUES(
  'MINUS_1', false, 0, -1.0), (
  'MINUS_2', false, 0, -2.0), (
  'MINUS_3', false, 0, -3.0), (
  'MINUS_4', false, 0, -4.0), (
  'MINUS_5', false, 0, -5.0), (
  'MINUS_6', false, 0, -6.0);


-- ADD EQUIPMENT_SLOTS
INSERT INTO tft.equipment_slot(code, value) VALUES(
  'EQUIP_SLOT_LEFT_HAND', 1), (
  'EQUIP_SLOT_ARMOR', 2), (
  'EQUIP_SLOT_RIGHT_HAND', 0);


-- ADD GENDERS
INSERT INTO tft.gender(description, name, subjective, objective, dependent_possessive, independent_possessive, reflexive, gender_offspring, gender_parent) VALUES(
  'male', 'Male', 'he', 'him', NULL, NULL, 'himself', NULL, NULL), (
  'female', 'Female', 'she', 'her', NULL, NULL, 'herself', NULL, NULL);


-- ADD GROUPS
INSERT INTO tft.group(name) VALUES(

-- ADD OBJECT_TYPES
INSERT INTO tft.object_type(code, flag) VALUES(
  'OBJECT_TYPE_WEAPON', 1), (
  'OBJECT_TYPE_1H', 2), (
  'OBJECT_TYPE_2H', 4), (
  'OBJECT_TYPE_POLE_WEAPON', 8), (
  'OBJECT_TYPE_MISSILE_WEAPON', 16), (
  'OBJECT_TYPE_THROWN', 32), (
  'OBJECT_TYPE_FOOD', 64), (
  'OBJECT_TYPE_GOLD', 128), (
  'OBJECT_TYPE_ARMOR', 256);


-- ADD IO_ITEM_DATAS
INSERT INTO tft.io_item_data(st_requirement, count, description, food_value, internal_script, left_ring, light_value, max_owned, name, price, ring_type, stack_size, steal_value, title, weight) VALUES(
-- ADD io_item_data's RELATED groupss

-- ADD io_item_data's RELATED typess

-- ADD io_item_data's RELATED modifierss


-- ADD IO_PC_DATAS
INSERT INTO tft.io_pc_data(bags, flags, gender, gold, interface_flags, internal_script, level, name, xp) VALUES(
-- ADD io_pc_data's RELATED groupss

-- ADD io_pc_data's RELATED inventory_itemss

-- ADD io_pc_data's RELATED attributess

-- ADD io_pc_data's RELATED equipped_itemss


