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


-- ADD EQUIPMENT_ITEM_MODIFIERS
INSERT INTO bp.equipment_item_modifier(code, percent, special, value) VALUES(
  'MINUS_1', false, 0, -1.0), (
  'MINUS_2', false, 0, -2.0), (
  'MINUS_3', false, 0, -3.0), (
  'MINUS_4', false, 0, -4.0), (
  'MINUS_5', false, 0, -5.0), (
  'MINUS_6', false, 0, -6.0);


-- ADD EQUIPMENT_SLOTS
INSERT INTO bp.equipment_slot(name, val) VALUES(
  'EQUIP_SLOT_WEAPON', 0);


