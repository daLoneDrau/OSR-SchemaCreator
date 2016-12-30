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
INSERT INTO crypts_things.dice(code, die, number, plus) VALUES(
  'ONE_D10', (SELECT die_id FROM crypts_things.die WHERE code='D10'), 1, 0), (
  'ONE_D2', (SELECT die_id FROM crypts_things.die WHERE code='D2'), 1, 0), (
  'ONE_D3', (SELECT die_id FROM crypts_things.die WHERE code='D3'), 1, 0), (
  'ONE_D4', (SELECT die_id FROM crypts_things.die WHERE code='D4'), 1, 0), (
  'ONE_D4_PLUS_1', (SELECT die_id FROM crypts_things.die WHERE code='D4'), 1, 1), (
  'ONE_D6', (SELECT die_id FROM crypts_things.die WHERE code='D6'), 1, 0), (
  'ONE_D8', (SELECT die_id FROM crypts_things.die WHERE code='D8'), 1, 0), (
  'THREE_D6', (SELECT die_id FROM crypts_things.die WHERE code='D6'), 3, 0), (
  'TWO_D4', (SELECT die_id FROM crypts_things.die WHERE code='D4'), 2, 0), (
  'TWO_D6', (SELECT die_id FROM crypts_things.die WHERE code='D6'), 2, 0);



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


