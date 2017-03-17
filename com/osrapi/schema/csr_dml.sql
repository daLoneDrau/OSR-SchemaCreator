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
  'DF', 'How difficult it is to learn a skill.', 'Difficulty Factor');


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
INSERT INTO csr.father_vocation(social_class, name, thieves_guild_status, social_status, num_starting_animal_skills, num_starting_agricultural_skills, num_starting_combat_skills, num_starting_outdoor_skills, num_starting_thievery_skills, num_starting_bonus_skills, roll_min, roll_max, is_liveried) VALUES(
  NULL, 'Farmer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Horse Handler', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Cowherd', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Swineherd', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Shepherd', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Castle Servant', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Cook', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Blacksmith', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Bonded Stable Hand', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Labourer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Castle Chamberlain', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Scribe Secretary', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Sergeant-Commander', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Sergeant', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Man-At-Arms', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Archer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Chief Forest Ranger', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Forest Ranger', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Sergeant-Armourer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Castle Armourer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Castle Blacksmith', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Falconer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Horse Trainer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Master of Hounds', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Castle Cook', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Rural Carpenter', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Rural Mason', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Forester', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Fisherman', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Village Blacksmith', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Freehold Miller', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Freehold Farmer', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Freehold Stockman', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Petit Sergeant', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Peddler', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Tinker', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Beggar', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Brothel Keeper', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Stable Hand', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Stable Owner', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Cobbler', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Tailor', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Clothmaker', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false), (
  NULL, 'Tanner', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, false);

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

-- ADD father_vocation's RELATED binary_skillss
INSERT INTO csr.father_vocation_binary_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Cowherd'),
  (SELECT skill_id FROM csr.skill WHERE name='Cattle Herding'));
INSERT INTO csr.father_vocation_binary_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Cowherd'),
  (SELECT skill_id FROM csr.skill WHERE name='Dairy Herding'));


-- ADD IO_PC_DATAS
INSERT INTO csr.io_pc_data(aspect, bags, flags, gender, gold, interface_flags, internal_script, level, name, race, social_class, xp, father_vocation) VALUES(
-- ADD io_pc_data's RELATED groupss

-- ADD io_pc_data's RELATED inventory_itemss

-- ADD io_pc_data's RELATED attributess

-- ADD io_pc_data's RELATED equipped_itemss


