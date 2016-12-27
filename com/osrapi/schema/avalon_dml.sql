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


-- ADD ATTRIBUTES
INSERT INTO avalon.attribute(code, description, name) VALUES(

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


-- ADD VULNERABILITYS
INSERT INTO avalon.vulnerability(code, harm_name, weight_class) VALUES(
  'N', '--', 'Negligible'), (
  'L', 'Light', 'Lightweight'), (
  'M', 'Medium', 'Middleweight'), (
  'H', 'Heavy', 'Heavyweight'), (
  'T', 'Tremendous', 'Behemoth');


