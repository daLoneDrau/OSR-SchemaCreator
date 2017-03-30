-- ADD ATTRIBUTES
INSERT INTO csr.attribute(code, description, name) VALUES(
  'AGIL', 'A measure of a character''s grace and dexterity.', 'Agility'), (
  'INT', 'Measures a character''s ability to understand situations, concentrate, to reason, and to remember. It is essential to intellect-based skills.', 'Intellect'), (
  'BV', 'Measures a character''s ability to speak eloquently, sing etc., and is a very important Attribute for strong Charismatic skills.', 'Bardic Voice'), (
  'STR', 'Measures the raw power of a character''s body. It is important in determining Body and Fatigue Points and it affects physical and athletic skills.', 'Strength'), (
  'WIS', 'Measures a character''s judgement and insight into the deeper significance of things than might be apparent on the surface.', 'Wisdom'), (
  'APP', 'Measures a character''s physical attractiveness. It affects his/her impact on relationships with others.', 'Appearance'), (
  'CON', 'A measure of how healthy and durable a character is. It helps determine Body and Fatigue Points, influences how a character heals or resists disease, and affects survival.', 'Constitution'), (
  'DISC', 'Measures your character''s patience and ability to remain focused on a subject or goal. Disciplined characters tend to learn skills faster and their morale is higher as well.', 'Discipline'), (
  'PTY', 'Measures a character''s religious faith or belief.', 'Piety'), (
  'DF', 'How difficult it is to learn a skill.', 'Difficulty Factor'), (
  'BP', 'The current amount of physical damage the character can sustain.', 'Body Points'), (
  'MBP', 'The maximum amount of physical damage the character can sustain.', 'Maximum Body Points');


-- ADD BIRTH_ASPECTS
INSERT INTO csr.birth_aspect(code, title, roll_min, roll_max, points_adjustment) VALUES(
  'WELL_ASPECTED', 'Well Aspected', 0, 0, 0), (
  'NEUTRALLY_ASPECTED', 'Neutrally Aspected', 0, 0, 0), (
  'POORLY_ASPECTED', 'Poorly Aspected', 0, 0, 0);


-- ADD EQUIPMENT_ELEMENT_TYPES
INSERT INTO csr.equipment_element_type(code, value) VALUES(

-- ADD EQUIPMENT_ITEM_MODIFIERS
INSERT INTO csr.equipment_item_modifier(code, percent, special, value) VALUES(

-- ADD EQUIPMENT_SLOTS
INSERT INTO csr.equipment_slot(code, value) VALUES(

-- ADD FAMILY_STATUSS
INSERT INTO csr.family_status(code, title, roll_min, roll_max, points_adjustment) VALUES(
  'BLACK_SHEEP', 'Black Sheep', 0, 0, 0), (
  'CREDIT_TO_THE_FAMILY', 'Credit to the Family', 0, 0, 0), (
  'GOOD_SON_DAUGHTER', 'Good Son/Daughter', 0, 0, 0);


-- ADD GENDERS
INSERT INTO csr.gender(description, name, subjective, objective, dependent_possessive, independent_possessive, reflexive) VALUES(
  'male', 'Male', 'he', 'him', NULL, NULL, 'himself'), (
  'female', 'Female', 'she', 'her', NULL, NULL, 'herself');


-- ADD GROUPS
INSERT INTO csr.group(name) VALUES(

-- ADD OBJECT_TYPES
INSERT INTO csr.object_type(code, flag) VALUES(

-- ADD IO_ITEM_DATAS
INSERT INTO csr.io_item_data(count, description, food_value, internal_script, left_ring, light_value, max_owned, name, price, ring_type, stack_size, steal_value, title, weight) VALUES(
-- ADD io_item_data's RELATED groupss

-- ADD io_item_data's RELATED typess

-- ADD io_item_data's RELATED modifierss


-- ADD RACES
INSERT INTO csr.race(name) VALUES(
  'HUMAN'), (
  'DWARF'), (
  'ELF'), (
  'ORC'), (
  'GOBLIN'), (
  'HOBGOBLIN'), (
  'TROLL'), (
  'WEREBEAR'), (
  'WEREBOAR'), (
  'WERERAT'), (
  'WEREWOLF'), (
  'VAMPIRE');


-- ADD SIBLING_RANKS
INSERT INTO csr.sibling_rank(code, title, roll_min, roll_max, points_adjustment) VALUES(
  'UNACK_BASTARD', 'Illegitimate and unacknowledged offspring', 0, 0, 0), (
  'ACK_BASTARD', 'Illegitimate and acknowledged offspring', 0, 0, 0), (
  '6TH_CHILD', '6th child', 0, 0, 0), (
  '5TH_CHILD', '5th child', 0, 0, 0), (
  '4TH_CHILD', '4th child', 0, 0, 0), (
  '3RD_CHILD', '3rd child', 0, 0, 0), (
  '2ND_CHILD', '2nd child', 0, 0, 0), (
  '1ST_CHILD', '1st child', 0, 0, 0);


-- ADD SKILLS
INSERT INTO csr.skill(name) VALUES(

-- ADD SOCIAL_CLASSS
INSERT INTO csr.social_class(name, title, roll_min, roll_max, points_adjustment) VALUES(
  'SERVILE', 'Villein', 0, 0, 0), (
  'FREEMAN', 'Freeman', 0, 0, 0), (
  'TOWNSMAN', 'Townsman', 0, 0, 0), (
  'GUILDSMAN', 'Guildsman', 0, 0, 0), (
  'LANDLESS KNIGHT', 'Landless Gentry', 0, 0, 0), (
  'LANDED KNIGHT', 'Landed Gentry', 0, 0, 0), (
  'BANNERETTE', 'Bannerette', 0, 0, 0), (
  'BARON', 'Baron', 0, 0, 0), (
  'TITLED NOBLE', 'Nobility', 0, 0, 0), (
  'ROYALTY', 'Royalty', 0, 0, 0);


-- ADD FATHER_VOCATIONS
INSERT INTO csr.father_vocation(, social_class, name, feudal_holding, thieves_guild_status, num_bonus_d10_social_status, social_status, num_starting_animal_skills, num_starting_agricultural_skills, num_starting_artistic_skills, num_starting_craftt_skills, num_starting_combat_skills, num_starting_lore_skills, num_starting_outdoor_skills, num_starting_sea_skills, num_starting_thievery_skills, num_starting_trade_skills, num_starting_bonus_skills, num_starting_binary0_magick_methods, num_starting_binary1_magick_methods, num_starting_binary1_lore_skills, num_starting_foreign_languages, num_starting_written_languages, reading_int_required, roll_min, roll_maxis_liveried) VALUES(
  NULL, 'Farmer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Horse Handler', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Cowherd', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Swineherd', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Shepherd', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Castle Servant', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Cook', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Blacksmith', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Bonded Stable Hand', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Labourer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Castle Chamberlain', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Scribe Secretary', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Sergeant-Commander', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Sergeant', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Man-At-Arms', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Archer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Chief Forest Ranger', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Forest Ranger', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Sergeant-Armourer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Castle Armourer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Castle Blacksmith', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Falconer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Horse Trainer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Master of Hounds', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Castle Cook', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Rural Carpenter', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Rural Mason', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Forester', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Fisherman', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Village Blacksmith', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Freehold Miller', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Freehold Farmer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Freehold Stockman', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Petit Sergeant', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Peddler', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Tinker', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Beggar', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Brothel Keeper', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Stable Hand', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Stable Owner', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Cobbler', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Tailor', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Clothmaker', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Tanner', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Town Blacksmith', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Shopkeeper', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Innkeeper', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Town Cook', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Harnessmaker', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Stall-keeper', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Barber', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Butcher', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Baker', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Wine Merchant', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Money Lender', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Town Labourer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Cloth Merchant', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Weaver', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Dyer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Mason', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Guild Mason', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Builder', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Goldsmith', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Goldsmith', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Jewelsmith', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Ship-Owner/Captain', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Ship''s Captain', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Ship''s Mate', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mariner', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Carpenter', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Guild Carpenter', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Cabinetmaker', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Barrelwright', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Cartwright', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Shipbuilder', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Shipbuilder', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Armourer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Armourer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mercenary Captain', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mercenary Sergeant', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mercenary Man-at-arms', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mercenary Archer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mercenary Cross-bowman', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Glassblower', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Glassblower', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Potter', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Potter', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Perfumer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Perfumer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Apothecary', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Entertainer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Artist', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Sculptor', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Foundryman', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Foundryman', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mine Owner', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Miner', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Engraver', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Mstr. Thief', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Thief', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Assassin', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Scribe/Clerk', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Physician', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Guild Scholar', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Scholar', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Magus', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, '"Merchant Prince"', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Knight-Errant', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'In Household of a Landed Knight', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'In Household of a Bannerette', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'In Household of a Baron of the Realm', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'In Household of a Titled Nobleman', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'In Household of the Royal Family', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'In Household of the King', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Knight(A)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Knight(B)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Knight(C)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Knight(D)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Knight(E)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Knight(F)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Knight(G)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Knight(H)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Knight(I)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Knight(J)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Knight(K)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Knight(L)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Bannerette(M)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Bannerette(N)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Bannerette(O)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Bannerette(P)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Baronet(Q)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Baronet(R)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Baronet(S)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Baron/Viscount(T)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Baron/Viscount(U)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Baron/Viscount(V)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Baron/Viscount(W)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Count/Earl(X)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Count/Earl(Y)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Count/Earl(Z)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Count/Earl(AA)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Count/Earl(BB)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Count/Earl(CC)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Count/Earl(DD)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Count/Earl(EE)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Marquis(FF)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Duke(GG)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Duke(HH)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Sovereign Prince(PR)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'King(KG)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false);

-- ADD father_vocation's RELATED starting_skillss
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Horse Handler'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Horse Handler'),
  (SELECT skill_id FROM csr.skill WHERE name='Animal Handling'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Swineherd'),
  (SELECT skill_id FROM csr.skill WHERE name='Pig Raising'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Shepherd'),
  (SELECT skill_id FROM csr.skill WHERE name='Sheep Herding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Castle Servant'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Cook'),
  (SELECT skill_id FROM csr.skill WHERE name='Cooking'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Cook'),
  (SELECT skill_id FROM csr.skill WHERE name='Knife Fighting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Blacksmith'),
  (SELECT skill_id FROM csr.skill WHERE name='Blacksmithing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Blacksmith'),
  (SELECT skill_id FROM csr.skill WHERE name='Mace Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bonded Stable Hand'),
  (SELECT skill_id FROM csr.skill WHERE name='Animal Handling'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bonded Stable Hand'),
  (SELECT skill_id FROM csr.skill WHERE name='Quarterstaff'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Labourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Endurance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Labourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Conditioning'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Labourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Lifting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Castle Chamberlain'),
  (SELECT skill_id FROM csr.skill WHERE name='Write'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Castle Chamberlain'),
  (SELECT skill_id FROM csr.skill WHERE name='Counting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Castle Chamberlain'),
  (SELECT skill_id FROM csr.skill WHERE name='Calligraphy & Illumination'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Scribe Secretary'),
  (SELECT skill_id FROM csr.skill WHERE name='Write'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Scribe Secretary'),
  (SELECT skill_id FROM csr.skill WHERE name='Counting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Scribe Secretary'),
  (SELECT skill_id FROM csr.skill WHERE name='Calligraphy & Illumination'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sergeant-Commander'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sergeant-Commander'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sergeant'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sergeant'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Man-At-Arms'),
  (SELECT skill_id FROM csr.skill WHERE name='Quarterstaff'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Archer'),
  (SELECT skill_id FROM csr.skill WHERE name='Archery'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Archer'),
  (SELECT skill_id FROM csr.skill WHERE name='Quarterstaff'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Chief Forest Ranger'),
  (SELECT skill_id FROM csr.skill WHERE name='Archery'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Chief Forest Ranger'),
  (SELECT skill_id FROM csr.skill WHERE name='Quarterstaff'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Forest Ranger'),
  (SELECT skill_id FROM csr.skill WHERE name='Archery'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Forest Ranger'),
  (SELECT skill_id FROM csr.skill WHERE name='Quarterstaff'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sergeant-Armourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Blacksmithing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sergeant-Armourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Weaponsmith'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sergeant-Armourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Castle Armourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Blacksmithing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Castle Armourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Weaponsmith'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Castle Blacksmith'),
  (SELECT skill_id FROM csr.skill WHERE name='Blacksmithing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Castle Blacksmith'),
  (SELECT skill_id FROM csr.skill WHERE name='Mace Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Falconer'),
  (SELECT skill_id FROM csr.skill WHERE name='Animal Training'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Falconer'),
  (SELECT skill_id FROM csr.skill WHERE name='Quarterstaff'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Horse Trainer'),
  (SELECT skill_id FROM csr.skill WHERE name='Animal Training'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Horse Trainer'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Master of Hounds'),
  (SELECT skill_id FROM csr.skill WHERE name='Animal Training'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Master of Hounds'),
  (SELECT skill_id FROM csr.skill WHERE name='Quarterstaff'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Master of Hounds'),
  (SELECT skill_id FROM csr.skill WHERE name='Javelin'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Master of Hounds'),
  (SELECT skill_id FROM csr.skill WHERE name='Throw Javelin'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Castle Cook'),
  (SELECT skill_id FROM csr.skill WHERE name='Cooking'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Castle Cook'),
  (SELECT skill_id FROM csr.skill WHERE name='Knife Fighting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Rural Carpenter'),
  (SELECT skill_id FROM csr.skill WHERE name='Carpentry'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Rural Carpenter'),
  (SELECT skill_id FROM csr.skill WHERE name='Mace Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Rural Carpenter'),
  (SELECT skill_id FROM csr.skill WHERE name='Quarterstaff'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Rural Mason'),
  (SELECT skill_id FROM csr.skill WHERE name='Masonry'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Rural Mason'),
  (SELECT skill_id FROM csr.skill WHERE name='Mace Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Rural Mason'),
  (SELECT skill_id FROM csr.skill WHERE name='Quarterstaff'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Forester'),
  (SELECT skill_id FROM csr.skill WHERE name='Archery'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Forester'),
  (SELECT skill_id FROM csr.skill WHERE name='Quarterstaff'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Fisherman'),
  (SELECT skill_id FROM csr.skill WHERE name='Fishing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Fisherman'),
  (SELECT skill_id FROM csr.skill WHERE name='Fisherman'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Fisherman'),
  (SELECT skill_id FROM csr.skill WHERE name='Small Boats'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Fisherman'),
  (SELECT skill_id FROM csr.skill WHERE name='Spear'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Village Blacksmith'),
  (SELECT skill_id FROM csr.skill WHERE name='Blacksmithing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Village Blacksmith'),
  (SELECT skill_id FROM csr.skill WHERE name='Mace Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Freehold Miller'),
  (SELECT skill_id FROM csr.skill WHERE name='Milling'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Freehold Miller'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Freehold Miller'),
  (SELECT skill_id FROM csr.skill WHERE name='Quarterstaff'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Freehold Farmer'),
  (SELECT skill_id FROM csr.skill WHERE name='Quarterstaff'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Freehold Stockman'),
  (SELECT skill_id FROM csr.skill WHERE name='Quarterstaff'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Petit Sergeant'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Petit Sergeant'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Peddler'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Peddler'),
  (SELECT skill_id FROM csr.skill WHERE name='Con'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Tinker'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Tinker'),
  (SELECT skill_id FROM csr.skill WHERE name='Tinkering'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Beggar'),
  (SELECT skill_id FROM csr.skill WHERE name='Begging'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Beggar'),
  (SELECT skill_id FROM csr.skill WHERE name='Con'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Brothel Keeper'),
  (SELECT skill_id FROM csr.skill WHERE name='Intimidation'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Brothel Keeper'),
  (SELECT skill_id FROM csr.skill WHERE name='Con'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Brothel Keeper'),
  (SELECT skill_id FROM csr.skill WHERE name='Knife Fighting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Stable Hand'),
  (SELECT skill_id FROM csr.skill WHERE name='Animal Handling'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Stable Hand'),
  (SELECT skill_id FROM csr.skill WHERE name='Knife Fighting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Stable Owner'),
  (SELECT skill_id FROM csr.skill WHERE name='Animal Handling'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Stable Owner'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Stable Owner'),
  (SELECT skill_id FROM csr.skill WHERE name='Veterinary'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Cobbler'),
  (SELECT skill_id FROM csr.skill WHERE name='Leatherworking'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Cobbler'),
  (SELECT skill_id FROM csr.skill WHERE name='Knife Fighting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Tailor'),
  (SELECT skill_id FROM csr.skill WHERE name='Tailoring'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Tailor'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Clothmaker'),
  (SELECT skill_id FROM csr.skill WHERE name='Spinning & Weaving'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Clothmaker'),
  (SELECT skill_id FROM csr.skill WHERE name='Dyeing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Tanner'),
  (SELECT skill_id FROM csr.skill WHERE name='Leatherworking'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Tanner'),
  (SELECT skill_id FROM csr.skill WHERE name='Knife Fighting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Town Blacksmith'),
  (SELECT skill_id FROM csr.skill WHERE name='Blacksmithing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Town Blacksmith'),
  (SELECT skill_id FROM csr.skill WHERE name='Mace Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Shopkeeper'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Innkeeper'),
  (SELECT skill_id FROM csr.skill WHERE name='Innkeeping'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Innkeeper'),
  (SELECT skill_id FROM csr.skill WHERE name='Brewing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Town Cook'),
  (SELECT skill_id FROM csr.skill WHERE name='Cooking'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Town Cook'),
  (SELECT skill_id FROM csr.skill WHERE name='Knife Fighting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Harnessmaker'),
  (SELECT skill_id FROM csr.skill WHERE name='Leatherworking'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Harnessmaker'),
  (SELECT skill_id FROM csr.skill WHERE name='Animal Handling'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Stall-keeper'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Stall-keeper'),
  (SELECT skill_id FROM csr.skill WHERE name='Con'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Barber'),
  (SELECT skill_id FROM csr.skill WHERE name='First Aid'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Barber'),
  (SELECT skill_id FROM csr.skill WHERE name='Knife Fighting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Butcher'),
  (SELECT skill_id FROM csr.skill WHERE name='Axe Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Butcher'),
  (SELECT skill_id FROM csr.skill WHERE name='Knife Fighting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baker'),
  (SELECT skill_id FROM csr.skill WHERE name='Cooking'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Wine Merchant'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Wine Merchant'),
  (SELECT skill_id FROM csr.skill WHERE name='Wine Making'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Money Lender'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Money Lender'),
  (SELECT skill_id FROM csr.skill WHERE name='Diplomacy & Politics'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Town Labourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Endurance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Town Labourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Conditioning'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Town Labourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Lifting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Cloth Merchant'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Cloth Merchant'),
  (SELECT skill_id FROM csr.skill WHERE name='Spinning & Weaving'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Cloth Merchant'),
  (SELECT skill_id FROM csr.skill WHERE name='Dyeing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Weaver'),
  (SELECT skill_id FROM csr.skill WHERE name='Spinning & Weaving'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Dyer'),
  (SELECT skill_id FROM csr.skill WHERE name='Dyeing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Mason'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Mason'),
  (SELECT skill_id FROM csr.skill WHERE name='Masonry'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Mason'),
  (SELECT skill_id FROM csr.skill WHERE name='Mace Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Guild Mason'),
  (SELECT skill_id FROM csr.skill WHERE name='Masonry'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Guild Mason'),
  (SELECT skill_id FROM csr.skill WHERE name='Mace Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Builder'),
  (SELECT skill_id FROM csr.skill WHERE name='Architecture'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Builder'),
  (SELECT skill_id FROM csr.skill WHERE name='Masonry'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Goldsmith'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Goldsmith'),
  (SELECT skill_id FROM csr.skill WHERE name='Goldsmithing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Jewelsmith'),
  (SELECT skill_id FROM csr.skill WHERE name='Jewelsmithing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Ship-Owner/Captain'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Ship''s Captain'),
  (SELECT skill_id FROM csr.skill WHERE name='Leadership'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Ship''s Mate'),
  (SELECT skill_id FROM csr.skill WHERE name='Intimidation'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mariner'),
  (SELECT skill_id FROM csr.skill WHERE name='Knife Fighting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Carpenter'),
  (SELECT skill_id FROM csr.skill WHERE name='Carpentry'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Carpenter'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Carpenter'),
  (SELECT skill_id FROM csr.skill WHERE name='Mace Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Guild Carpenter'),
  (SELECT skill_id FROM csr.skill WHERE name='Carpentry'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Guild Carpenter'),
  (SELECT skill_id FROM csr.skill WHERE name='Mace Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Cabinetmaker'),
  (SELECT skill_id FROM csr.skill WHERE name='Carpentry'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Cabinetmaker'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Cabinetmaker'),
  (SELECT skill_id FROM csr.skill WHERE name='Mace Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Barrelwright'),
  (SELECT skill_id FROM csr.skill WHERE name='Carpentry'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Barrelwright'),
  (SELECT skill_id FROM csr.skill WHERE name='Cooper'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Barrelwright'),
  (SELECT skill_id FROM csr.skill WHERE name='Mace Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Cartwright'),
  (SELECT skill_id FROM csr.skill WHERE name='Carpentry'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Cartwright'),
  (SELECT skill_id FROM csr.skill WHERE name='Cart-making'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Cartwright'),
  (SELECT skill_id FROM csr.skill WHERE name='Mace Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Shipbuilder'),
  (SELECT skill_id FROM csr.skill WHERE name='Carpentry'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Shipbuilder'),
  (SELECT skill_id FROM csr.skill WHERE name='Shipbuilding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Shipbuilder'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Shipbuilder'),
  (SELECT skill_id FROM csr.skill WHERE name='Marine Architecture'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Shipbuilder'),
  (SELECT skill_id FROM csr.skill WHERE name='Carpentry'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Shipbuilder'),
  (SELECT skill_id FROM csr.skill WHERE name='Shipbuilding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Armourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Blacksmithing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Armourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Weaponsmithing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Armourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Engraving'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Armourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Blacksmithing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Armourer'),
  (SELECT skill_id FROM csr.skill WHERE name='Weaponsmithing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mercenary Captain'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mercenary Captain'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mercenary Captain'),
  (SELECT skill_id FROM csr.skill WHERE name='Leadership'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mercenary Sergeant'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mercenary Sergeant'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mercenary Archer'),
  (SELECT skill_id FROM csr.skill WHERE name='Archery'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mercenary Archer'),
  (SELECT skill_id FROM csr.skill WHERE name='Short Sword'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mercenary Cross-bowman'),
  (SELECT skill_id FROM csr.skill WHERE name='Crossbow'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mercenary Cross-bowman'),
  (SELECT skill_id FROM csr.skill WHERE name='Short Sword'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Glassblower'),
  (SELECT skill_id FROM csr.skill WHERE name='Glassblowing & Glazing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Glassblower'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Glassblower'),
  (SELECT skill_id FROM csr.skill WHERE name='Glassblowing & Glazing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Potter'),
  (SELECT skill_id FROM csr.skill WHERE name='Pottery'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Potter'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Potter'),
  (SELECT skill_id FROM csr.skill WHERE name='Pottery'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Perfumer'),
  (SELECT skill_id FROM csr.skill WHERE name='Perfumery'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Perfumer'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Perfumer'),
  (SELECT skill_id FROM csr.skill WHERE name='Perfumery'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Apothecary'),
  (SELECT skill_id FROM csr.skill WHERE name='Make Drugs'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Apothecary'),
  (SELECT skill_id FROM csr.skill WHERE name='Poisons'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Apothecary'),
  (SELECT skill_id FROM csr.skill WHERE name='Herbal Lore'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Artist'),
  (SELECT skill_id FROM csr.skill WHERE name='Painting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Sculptor'),
  (SELECT skill_id FROM csr.skill WHERE name='Sculpture'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Foundryman'),
  (SELECT skill_id FROM csr.skill WHERE name='Smelting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Foundryman'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Foundryman'),
  (SELECT skill_id FROM csr.skill WHERE name='Endurance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Foundryman'),
  (SELECT skill_id FROM csr.skill WHERE name='Smelting'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Foundryman'),
  (SELECT skill_id FROM csr.skill WHERE name='Endurance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mine Owner'),
  (SELECT skill_id FROM csr.skill WHERE name='Mining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mine Owner'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mine Owner'),
  (SELECT skill_id FROM csr.skill WHERE name='Geological Lore'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Miner'),
  (SELECT skill_id FROM csr.skill WHERE name='Mining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Miner'),
  (SELECT skill_id FROM csr.skill WHERE name='Endurance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Engraver'),
  (SELECT skill_id FROM csr.skill WHERE name='Goldsmithing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Engraver'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Engraver'),
  (SELECT skill_id FROM csr.skill WHERE name='Engraving'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Thief'),
  (SELECT skill_id FROM csr.skill WHERE name='Con'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Thief'),
  (SELECT skill_id FROM csr.skill WHERE name='Con'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Assassin'),
  (SELECT skill_id FROM csr.skill WHERE name='Intimidation'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Assassin'),
  (SELECT skill_id FROM csr.skill WHERE name='Stealth'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Assassin'),
  (SELECT skill_id FROM csr.skill WHERE name='Skulking in Shadows'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Assassin'),
  (SELECT skill_id FROM csr.skill WHERE name='Disguise'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Scribe/Clerk'),
  (SELECT skill_id FROM csr.skill WHERE name='Writing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Scribe/Clerk'),
  (SELECT skill_id FROM csr.skill WHERE name='Paper Making'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Scribe/Clerk'),
  (SELECT skill_id FROM csr.skill WHERE name='Calligraphy & Illumination'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Physician'),
  (SELECT skill_id FROM csr.skill WHERE name='Writing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Physician'),
  (SELECT skill_id FROM csr.skill WHERE name='Herb Lore'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Physician'),
  (SELECT skill_id FROM csr.skill WHERE name='First Aid'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Guild Scholar'),
  (SELECT skill_id FROM csr.skill WHERE name='Writing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Scholar'),
  (SELECT skill_id FROM csr.skill WHERE name='Writing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Magus'),
  (SELECT skill_id FROM csr.skill WHERE name='Ancient Language'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Magus'),
  (SELECT skill_id FROM csr.skill WHERE name='Writing'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='"Merchant Prince"'),
  (SELECT skill_id FROM csr.skill WHERE name='Bargaining'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='"Merchant Prince"'),
  (SELECT skill_id FROM csr.skill WHERE name='Con'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='"Merchant Prince"'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight-Errant'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight-Errant'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight-Errant'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight-Errant'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight-Errant'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight-Errant'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Landed Knight'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Landed Knight'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Landed Knight'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Landed Knight'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Landed Knight'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Landed Knight'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Landed Knight'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Bannerette'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Bannerette'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Bannerette'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Bannerette'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Bannerette'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Bannerette'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Bannerette'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Baron of the Realm'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Baron of the Realm'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Baron of the Realm'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Baron of the Realm'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Baron of the Realm'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Baron of the Realm'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Baron of the Realm'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Titled Nobleman'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Titled Nobleman'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Titled Nobleman'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Titled Nobleman'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Titled Nobleman'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Titled Nobleman'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of a Titled Nobleman'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of the Royal Family'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of the Royal Family'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of the Royal Family'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of the Royal Family'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of the Royal Family'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of the Royal Family'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of the Royal Family'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of the King'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of the King'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of the King'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of the King'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of the King'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of the King'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='In Household of the King'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(A)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(A)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(A)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(A)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(A)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(A)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(A)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(B)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(B)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(B)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(B)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(B)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(B)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(B)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(C)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(C)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(C)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(C)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(C)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(C)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(C)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(D)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(D)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(D)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(D)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(D)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(D)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(D)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(E)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(E)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(E)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(E)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(E)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(E)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(E)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(F)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(F)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(F)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(F)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(F)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(F)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(F)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(G)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(G)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(G)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(G)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(G)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(G)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(G)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(H)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(H)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(H)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(H)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(H)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(H)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(H)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(I)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(I)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(I)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(I)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(I)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(I)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(I)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(J)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(J)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(J)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(J)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(J)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(J)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(J)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(K)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(K)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(K)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(K)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(K)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(K)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(K)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(L)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(L)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(L)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(L)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(L)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(L)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Knight(L)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(M)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(M)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(M)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(M)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(M)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(M)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(M)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(N)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(N)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(N)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(N)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(N)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(N)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(N)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(O)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(O)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(O)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(O)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(O)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(O)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(O)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(P)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(P)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(P)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(P)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(P)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(P)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Bannerette(P)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(Q)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(Q)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(Q)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(Q)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(Q)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(Q)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(Q)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(R)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(R)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(R)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(R)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(R)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(R)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(R)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(S)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(S)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(S)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(S)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(S)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(S)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baronet(S)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(T)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(T)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(T)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(T)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(T)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(T)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(T)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(U)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(U)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(U)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(U)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(U)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(U)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(U)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(V)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(V)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(V)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(V)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(V)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(V)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(V)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(W)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(W)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(W)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(W)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(W)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(W)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Baron/Viscount(W)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(X)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(X)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(X)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(X)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(X)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(X)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(X)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(Y)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(Y)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(Y)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(Y)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(Y)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(Y)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(Y)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(Z)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(Z)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(Z)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(Z)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(Z)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(Z)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(Z)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(AA)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(AA)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(AA)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(AA)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(AA)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(AA)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(AA)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(BB)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(BB)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(BB)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(BB)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(BB)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(BB)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(BB)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(CC)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(CC)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(CC)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(CC)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(CC)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(CC)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(CC)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(DD)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(DD)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(DD)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(DD)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(DD)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(DD)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(DD)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(EE)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(EE)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(EE)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(EE)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(EE)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(EE)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Count/Earl(EE)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Marquis(FF)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Marquis(FF)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Marquis(FF)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Marquis(FF)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Marquis(FF)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Marquis(FF)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Marquis(FF)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Duke(GG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Duke(GG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Duke(GG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Duke(GG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Duke(GG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Duke(GG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Duke(GG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Duke(HH)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Duke(HH)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Duke(HH)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Duke(HH)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Duke(HH)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Duke(HH)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Duke(HH)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sovereign Prince(PR)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sovereign Prince(PR)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sovereign Prince(PR)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sovereign Prince(PR)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sovereign Prince(PR)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sovereign Prince(PR)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sovereign Prince(PR)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Sovereign Prince(PR)'),
  (SELECT skill_id FROM csr.skill WHERE name='Diplomacy & Politics'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='King(KG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='King(KG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Riding a Warhorse'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='King(KG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Mounted Combat'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='King(KG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Cavalry Lance'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='King(KG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Wearing Armour'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='King(KG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Courtly Manners'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='King(KG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Reading'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='King(KG)'),
  (SELECT skill_id FROM csr.skill WHERE name='Diplomacy & Politics'));

-- ADD father_vocation's RELATED binary_skillss
INSERT INTO csr.father_vocation_binary_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Cowherd'),
  (SELECT skill_id FROM csr.skill WHERE name='Cattle Herding'));
INSERT INTO csr.father_vocation_binary_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Cowherd'),
  (SELECT skill_id FROM csr.skill WHERE name='Dairy Herding'));
INSERT INTO csr.father_vocation_binary_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Goldsmith'),
  (SELECT skill_id FROM csr.skill WHERE name='Goldsmithing'));
INSERT INTO csr.father_vocation_binary_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Mstr. Goldsmith'),
  (SELECT skill_id FROM csr.skill WHERE name='Jewelsmithing'));


-- ADD IO_PC_DATAS
INSERT INTO csr.io_pc_data(build, height, weight, aspect, rank, status, bags, flags, gender, gold, interface_flags, internal_script, level, name, race, social_class, xp, father_vocation) VALUES(
-- ADD io_pc_data's RELATED groupss

-- ADD io_pc_data's RELATED inventory_itemss

-- ADD io_pc_data's RELATED attributess

-- ADD io_pc_data's RELATED equipped_itemss


