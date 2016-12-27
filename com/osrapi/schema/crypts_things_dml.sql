-- ADD ATTRIBUTES
INSERT INTO crypts_things.attribute(code, description, name) VALUES(
  'BRW', 'brawn', 'Brawn'), (
  'COR', 'coordination', 'Coordinaton'), (
  'HRD', 'hardiness', 'Hardiness'), (
  'EDU', 'education', 'Education'), (
  'COM', 'common sense', 'Common Sense'), (
  'LEA', 'leadership', 'Leadership');


-- ADD DIES
INSERT INTO crypts_things.die(code, value) VALUES(
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
INSERT INTO crypts_things.dice(code, die, number) VALUES(
  'ONE_D10', (SELECT die_id FROM crypts_things.die WHERE code='D10'), 1), (
  'ONE_D2', (SELECT die_id FROM crypts_things.die WHERE code='D2'), 1), (
  'ONE_D3', (SELECT die_id FROM crypts_things.die WHERE code='D3'), 1), (
  'ONE_D4', (SELECT die_id FROM crypts_things.die WHERE code='D4'), 1), (
  'ONE_D6', (SELECT die_id FROM crypts_things.die WHERE code='D6'), 1), (
  'ONE_D8', (SELECT die_id FROM crypts_things.die WHERE code='D8'), 1), (
  'THREE_D6', (SELECT die_id FROM crypts_things.die WHERE code='D6'), 3), (
  'TWO_D4', (SELECT die_id FROM crypts_things.die WHERE code='D4'), 2), (
  'TWO_D6', (SELECT die_id FROM crypts_things.die WHERE code='D6'), 2);


-- ADD EQUIPMENT_ELEMENT_TYPES
INSERT INTO crypts_things.equipment_element_type(code, value) VALUES(

-- ADD EQUIPMENT_ITEM_MODIFIERS
INSERT INTO crypts_things.equipment_item_modifier(code, percent, special, value) VALUES(

-- ADD EVENTS
INSERT INTO crypts_things.event(code) VALUES(

-- ADD GENDERS
INSERT INTO crypts_things.gender(description, name) VALUES(
  'male', 'Male'), (
  'female', 'Female');


-- ADD GROUPS
INSERT INTO crypts_things.group(name) VALUES(
  'BARBARIAN'), (
  'SOLDIER'), (
  'WIZARD'), (
  'THIEF'), (
  'SOPHISTICATED_WEAPON'), (
  'PLATE_ARMOUR'), (
  'LEATHER_ARMOUR'), (
  'MAIL_ARMOUR');


-- ADD LIFE_EVENTS
INSERT INTO crypts_things.life_event(description, name) VALUES(
-- ADD life_event's RELATED modifierss


-- ADD OBJECT_TYPES
INSERT INTO crypts_things.object_type(code, flag) VALUES(
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
INSERT INTO crypts_things.io_item_data(count, description, damages, food_value, internal_script, item_name, left_ring, light_value, max_owned, price, ring_type, stack_size, steal_value, weight) VALUES(
-- ADD io_item_data's RELATED groupss

-- ADD io_item_data's RELATED typess


-- ADD SCRIPT_ACTION_TYPES
INSERT INTO crypts_things.script_action_type(code) VALUES(

-- ADD SCRIPT_ACTIONS
INSERT INTO crypts_things.script_action(name, type) VALUES(

-- ADD SCRIPT_BUNDLES
INSERT INTO crypts_things.script_bundle(name) VALUES(
-- ADD script_bundle's RELATED scriptss


-- ADD IO_PC_DATAS
INSERT INTO crypts_things.io_pc_data(bags, flags, gender, gold, interface_flags, internal_script, level, xp) VALUES(
-- ADD io_pc_data's RELATED groupss

-- ADD io_pc_data's RELATED life_eventss


-- ADD SKILLS
INSERT INTO crypts_things.skill(description, name) VALUES(

