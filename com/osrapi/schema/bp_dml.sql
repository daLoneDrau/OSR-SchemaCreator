-- ADD DAMAGE_TYPES
INSERT INTO bp.damage_type(flag, name) VALUES(
  1, 'DAMAGE_TYPE_ACID'), (
  2, 'DAMAGE_TYPE_COLD'), (
  4, 'DAMAGE_TYPE_DRAIN_LIFE'), (
  8, 'DAMAGE_TYPE_DRAIN_MANA'), (
  16, 'DAMAGE_TYPE_FAKEFIRE'), (
  32, 'DAMAGE_TYPE_FIELD'), (
  64, 'DAMAGE_TYPE_FIRE'), (
  128, 'DAMAGE_TYPE_GAS'), (
  0, 'DAMAGE_TYPE_GENERIC'), (
  256, 'DAMAGE_TYPE_LIGHTNING'), (
  512, 'DAMAGE_TYPE_MAGICAL'), (
  1024, 'DAMAGE_TYPE_METAL'), (
  2048, 'DAMAGE_TYPE_NO_FIX'), (
  4096, 'DAMAGE_TYPE_ORGANIC'), (
  8192, 'DAMAGE_TYPE_PER_SECOND'), (
  16384, 'DAMAGE_TYPE_POISON'), (
  32768, 'DAMAGE_TYPE_PUSH'), (
  65536, 'DAMAGE_TYPE_STONE'), (
  131072, 'DAMAGE_TYPE_WOOD');


-- ADD EQUIPMENT_ELEMENT_TYPES
INSERT INTO bp.equipment_element_type(code, value) VALUES(
  'ELEMENT_COMBAT_SKILL', 0), (
  'ELEMENT_ENDURANCE', 1), (
  'ELEMENT_WEALTH', 2), (
  'ELEMENT_WOUNDS', 3), (
  'ELEMENT_POISON_WOUNDS', 4), (
  'ELEMENT_WIT_AND_WILES', 5);


-- ADD ATTRIBUTES
INSERT INTO bp.attribute(code, description, element, name) VALUES(
  'CS', 'Combat Skill', (SELECT equipment_element_type_id FROM bp.equipment_element_type WHERE code='ELEMENT_COMBAT_SKILL'), 'Combat Skill'), (
  'EN', 'Endurance', (SELECT equipment_element_type_id FROM bp.equipment_element_type WHERE code='ELEMENT_ENDURANCE'), 'Endurance'), (
  'WE', 'Wealth', (SELECT equipment_element_type_id FROM bp.equipment_element_type WHERE code='ELEMENT_WEALTH'), 'Wealth'), (
  'WO', 'Wounds', (SELECT equipment_element_type_id FROM bp.equipment_element_type WHERE code='ELEMENT_WOUNDS'), 'Wounds'), (
  'PW', 'Poison Wounds', (SELECT equipment_element_type_id FROM bp.equipment_element_type WHERE code='ELEMENT_POISON_WOUNDS'), 'Poison Wounds'), (
  'WI', 'Wit & Wiles', (SELECT equipment_element_type_id FROM bp.equipment_element_type WHERE code='ELEMENT_WIT_AND_WILES'), 'Wit & Wiles');


-- ADD EQUIPMENT_ITEM_MODIFIERS
INSERT INTO bp.equipment_item_modifier(code, percent, special, value) VALUES(
  'MINUS_1', false, 0, -1.0), (
  'MINUS_2', false, 0, -2.0), (
  'MINUS_3', false, 0, -3.0), (
  'MINUS_4', false, 0, -4.0), (
  'MINUS_5', false, 0, -5.0), (
  'MINUS_6', false, 0, -6.0), (
  'PLUS_8', false, 0, 8.0);


-- ADD EQUIPMENT_SLOTS
INSERT INTO bp.equipment_slot(name, val) VALUES(
  'EQUIP_SLOT_WEAPON', 0);


-- ADD GENDERS
INSERT INTO bp.gender(description, name) VALUES(
  'male', 'Male'), (
  'female', 'Female');


-- ADD GROUPS
INSERT INTO bp.group(name) VALUES(
  'TREASURE'), (
  'ARMORY'), (
  'HUMANOID'), (
  'POISON_WEAPON');


-- ADD OBJECT_TYPES
INSERT INTO bp.object_type(code, flag) VALUES(
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
  'OBJECT_TYPE_LEGGINGS', 2048), (
  'OBJECT_TYPE_AMULET', 4096), (
  'OBJECT_TYPE_NECKLACE', 8192);


-- ADD IO_ITEM_DATAS
INSERT INTO bp.io_item_data(count, description, food_value, internal_script, left_ring, light_value, max_owned, name, price, ring_type, stack_size, steal_value, weight) VALUES(
  0, 'Your trusty broadsword, Bonebiter.', 0, 'Bonebiter', false, 0, 1, 'Bonebiter', 6.0, 0, 1, 0, 0.0), (
  0, 'An ancient sword, engraved with arcane runes.  Every would this weapon inflicts poisons the victim.', 0, 'MagicSword', false, 0, 1, 'MagicSword', 6.0, 0, 1, 0, 0.0);

-- ADD io_item_data's RELATED groupss
INSERT INTO bp.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM bp.io_item_data WHERE name='Bonebiter'),
  (SELECT group_id FROM bp.group WHERE name='ARMORY'));
INSERT INTO bp.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM bp.io_item_data WHERE name='MagicSword'),
  (SELECT group_id FROM bp.group WHERE name='ARMORY'));
INSERT INTO bp.io_item_data_groups_lookup(io_item_data_id, group_id) VALUES (
  (SELECT io_item_data_id FROM bp.io_item_data WHERE name='MagicSword'),
  (SELECT group_id FROM bp.group WHERE name='POISON_WEAPON'));

-- ADD io_item_data's RELATED typess
INSERT INTO bp.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM bp.io_item_data WHERE name='Bonebiter'),
  (SELECT object_type_id FROM bp.object_type WHERE code='OBJECT_TYPE_1H'));
INSERT INTO bp.io_item_data_types_lookup(io_item_data_id, object_type_id) VALUES (
  (SELECT io_item_data_id FROM bp.io_item_data WHERE name='MagicSword'),
  (SELECT object_type_id FROM bp.object_type WHERE code='OBJECT_TYPE_1H'));

-- ADD io_item_data's RELATED modifierss
INSERT INTO bp.io_item_data_modifiers_lookup(io_item_data_id, key, value) VALUES (
  (SELECT io_item_data_id FROM bp.io_item_data WHERE name='MagicSword'),
  'ELEMENT_COMBAT_SKILL',
  'PLUS_1');


-- ADD IO_PC_DATAS
INSERT INTO bp.io_pc_data(bags, gender, gold, interface_flags, level, name, xp) VALUES(
-- ADD io_pc_data's RELATED attributess

-- ADD io_pc_data's RELATED equipped_itemss


-- ADD SCRIPT_ACTION_TYPES
INSERT INTO bp.script_action_type(code) VALUES(

-- ADD SCRIPT_ACTIONS
INSERT INTO bp.script_action(name, type) VALUES(

-- ADD SCRIPT_BUNDLES
INSERT INTO bp.script_bundle(name) VALUES(
-- ADD script_bundle's RELATED scriptss


