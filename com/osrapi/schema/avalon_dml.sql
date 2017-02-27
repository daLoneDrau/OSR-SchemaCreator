-- ADD ACTION_TYPES
INSERT INTO avalon.action_type(name) VALUES(

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
  'WOODFOLK');


-- ADD HEX_NODES
INSERT INTO avalon.hex_node(description, flag, name) VALUES(

-- ADD HORSE_TYPES
INSERT INTO avalon.horse_type(name) VALUES(
  'Pony'), (
  'Warhorse'), (
  'Workhorse');


-- ADD MAGIC_COLORS
INSERT INTO avalon.magic_color(long_name, name) VALUES(
  'Power From On High', NULL), (
  'Natural Law', NULL), (
  'Woods Sprites', NULL), (
  'Elemental Energies', NULL), (
  'Demonic Power', NULL);


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


-- ADD VULNERABILITYS
INSERT INTO avalon.vulnerability(code, harm_name, value, weight_class) VALUES(
  'N', '--', 0, 'Negligible'), (
  'L', 'Light', 1, 'Lightweight'), (
  'M', 'Medium', 2, 'Middleweight'), (
  'H', 'Heavy', 3, 'Heavyweight'), (
  'T', 'Tremendous', 4, 'Behemoth');


-- ADD ACTION_CHITS
INSERT INTO avalon.action_chit(type, strength, magic_type, fatigue_asterisk) VALUES(

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
  5, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 2, 8, NULL, 0, NULL, NULL, 'Winged Demon', 17, (SELECT attack_type_id FROM avalon.attack_type WHERE name='Power of the Pit'), 8, 0, 'Winged Demon', 3, (SELECT magic_type_id FROM avalon.magic_type WHERE code='V'), 0, NULL, 3, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='T'), 0, NULL);

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


-- ADD IO_PC_DATAS
INSERT INTO avalon.io_pc_data(bags, gender, gold, interface_flags, level, name, xp) VALUES(
-- ADD io_pc_data's RELATED attributess

-- ADD io_pc_data's RELATED equipped_itemss


