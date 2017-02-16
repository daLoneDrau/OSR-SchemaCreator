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

-- ADD GROUPS
INSERT INTO avalon.group(name) VALUES(
  'TREASURE'), (
  'NATIVE');


-- ADD HEX_NODES
INSERT INTO avalon.hex_node(description, flag, name) VALUES(

-- ADD HORSE_TYPES
INSERT INTO avalon.horse_type(name) VALUES(
  'Pony'), (
  'Warhorse'), (
  'Workhorse');


-- ADD MAGIC_COLORS
INSERT INTO avalon.magic_color(long_name, short_name) VALUES(
  'Power From On High', 'WHITE'), (
  'Natural Law', 'GREY'), (
  'Woods Sprites', 'GOLD'), (
  'Elemental Energies', 'PURPLE'), (
  'Demonic Power', 'BLACK');


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
  'OBJECT_TYPE_ARMOR', 8), (
  'OBJECT_TYPE_SUIT_OF_ARMOR', 16), (
  'OBJECT_TYPE_BREASTPLATE', 32), (
  'OBJECT_TYPE_HELMET', 64), (
  'OBJECT_TYPE_SHIELD', 128), (
  'OBJECT_TYPE_BOOTS', 256), (
  'OBJECT_TYPE_GLOVES', 512), (
  'OBJECT_TYPE_POTION', 1024), (
  'OBJECT_TYPE_CLOAK', 2048), (
  'OBJECT_TYPE_NECKLACE', 4096), (
  'OBJECT_TYPE_BOOK', 8192), (
  'OBJECT_TYPE_BELT', 16384), (
  'OBJECT_TYPE_ARTIFACT', 32768), (
  'OBJECT_TYPE_RING', 65536), (
  'OBJECT_TYPE_FOCUS', 131072), (
  'OBJECT_TYPE_BRACERS', 262144), (
  'OBJECT_TYPE_MAP', 524288), (
  'OBJECT_TYPE_MAGIC_ITEM', 1048576), (
  'OBJECT_TYPE_MISC', 2097152);


-- ADD VULNERABILITYS
INSERT INTO avalon.vulnerability(code, harm_name, value, weight_class) VALUES(
  'N', '--', 0, 'Negligible'), (
  'L', 'Light', 1, 'Lightweight'), (
  'M', 'Medium', 2, 'Middleweight'), (
  'H', 'Heavy', 3, 'Heavyweight'), (
  'T', 'Tremendous', 4, 'Behemoth');


-- ADD IO_ITEM_DATAS
INSERT INTO avalon.io_item_data(alerted_attack_speed, alerted_sharpness, alerted_weight_class, attack_method, condition, count, description, food_value, internal_script, left_ring, length, light_value, max_owned, name, price, ring_type, stack_size, steal_value, unalerted_attack_speed, unalerted_sharpness, unalerted_weight_class, weapon_length) VALUES(
  1, 2, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), (SELECT attack_type_id FROM avalon.attack_type WHERE name='Missile'), NULL, 0, NULL, 0, NULL, false, 0, 0, 0, 'Medium Bow', 8.0, 0, 0, 0, 0, 0, (SELECT vulnerability_id FROM avalon.vulnerability WHERE code='M'), 16);

-- ADD io_item_data's RELATED groupss

-- ADD io_item_data's RELATED protectionss

-- ADD io_item_data's RELATED typess

-- ADD io_item_data's RELATED modifierss


-- ADD IO_NPC_DATAS
INSERT INTO avalon.io_npc_data(behavior, behavior_param, climb_count, collid_state, collid_time, critical, cut, cuts, damages, gender, internal_script, life, mana, maxlife, maxmana, name, npc_flags, title, weapon, xpvalue) VALUES(
-- ADD io_npc_data's RELATED attributess


-- ADD IO_PC_DATAS
INSERT INTO avalon.io_pc_data(bags, gender, gold, interface_flags, level, name, xp) VALUES(
-- ADD io_pc_data's RELATED attributess

-- ADD io_pc_data's RELATED equipped_itemss


