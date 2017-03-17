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
INSERT INTO csr.father_vocation(social_class, name, social_status, num_starting_agricultural_skills, num_starting_bonus_skills, roll_min, roll_max) VALUES(
  NULL, 'Farmer', 0, 0, 0, 0, 0), (
  NULL, 'Horse Handler', 0, 0, 0, 0, 0), (
  NULL, 'Cowherd', 0, 0, 0, 0, 0), (
  NULL, 'Swineherd', 0, 0, 0, 0, 0), (
  NULL, 'Shepherd', 0, 0, 0, 0, 0), (
  NULL, 'Castle Servant', 0, 0, 0, 0, 0), (
  NULL, 'Cook', 0, 0, 0, 0, 0), (
  NULL, 'Blacksmith', 0, 0, 0, 0, 0), (
  NULL, 'Stable Hand', 0, 0, 0, 0, 0), (
  NULL, 'Labourer', 0, 0, 0, 0, 0);

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
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Stable Hand'),
  (SELECT skill_id FROM csr.skill WHERE name='Animal Handling'));
INSERT INTO csr.father_vocation_starting_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Stable Hand'),
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

-- ADD father_vocation's RELATED binary_skillss
INSERT INTO csr.father_vocation_binary_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Cowherd'),
  (SELECT skill_id FROM csr.skill WHERE name='Cattle Herding'));
INSERT INTO csr.father_vocation_binary_skills_lookup(father_vocation_id, skill_id) VALUES (
  (SELECT father_vocation_id FROM csr.father_vocation WHERE name='Cowherd'),
  (SELECT skill_id FROM csr.skill WHERE name='Dairy Herding'));


-- ADD IO_PC_DATAS
INSERT INTO csr.io_pc_data(aspect, bags, flags, gender, gold, interface_flags, internal_script, level, name, race, social_class, xp) VALUES(
-- ADD io_pc_data's RELATED groupss

-- ADD io_pc_data's RELATED inventory_itemss

-- ADD io_pc_data's RELATED attributess

-- ADD io_pc_data's RELATED equipped_itemss


