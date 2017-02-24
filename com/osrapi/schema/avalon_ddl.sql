-- Schema: avalon
DROP SCHEMA IF EXISTS avalon CASCADE;
CREATE SCHEMA avalon;

-- Table: avalon.action_chit
-- TODO add table description

DROP TABLE IF EXISTS avalon.action_chit CASCADE;

CREATE SEQUENCE avalon.action_chit_id_seq MINVALUE 0;

CREATE TABLE avalon.action_chit
(
  action_chit_id smallint DEFAULT nextval('avalon.action_chit_id_seq') NOT NULL,
  CONSTRAINT action_chit_action_chit_id_pk PRIMARY KEY (action_chit_id)
);

-- Table: avalon.advantage
-- TODO add table description

DROP TABLE IF EXISTS avalon.advantage CASCADE;

CREATE SEQUENCE avalon.advantage_id_seq MINVALUE 0;

CREATE TABLE avalon.advantage
(
  advantage_id smallint DEFAULT nextval('avalon.advantage_id_seq') NOT NULL,
  description text NOT NULL,
  flag integer NOT NULL,
  name character varying(40) NOT NULL,
  CONSTRAINT advantage_advantage_id_pk PRIMARY KEY (advantage_id),
  CONSTRAINT advantage_name_un UNIQUE (name)
);

-- Table: avalon.armor_condition
-- TODO add table description

DROP TABLE IF EXISTS avalon.armor_condition CASCADE;

CREATE SEQUENCE avalon.armor_condition_id_seq MINVALUE 0;

CREATE TABLE avalon.armor_condition
(
  armor_condition_id smallint DEFAULT nextval('avalon.armor_condition_id_seq') NOT NULL,
  name character varying(40) NOT NULL,
  CONSTRAINT armor_condition_armor_condition_id_pk PRIMARY KEY (armor_condition_id),
  CONSTRAINT armor_condition_name_un UNIQUE (name)
);

-- Table: avalon.armor_protection
-- TODO add table description

DROP TABLE IF EXISTS avalon.armor_protection CASCADE;

CREATE SEQUENCE avalon.armor_protection_id_seq MINVALUE 0;

CREATE TABLE avalon.armor_protection
(
  armor_protection_id smallint DEFAULT nextval('avalon.armor_protection_id_seq') NOT NULL,
  name character varying(40) NOT NULL,
  CONSTRAINT armor_protection_armor_protection_id_pk PRIMARY KEY (armor_protection_id),
  CONSTRAINT armor_protection_name_un UNIQUE (name)
);

-- Table: avalon.attack_type
-- TODO add table description

DROP TABLE IF EXISTS avalon.attack_type CASCADE;

CREATE SEQUENCE avalon.attack_type_id_seq MINVALUE 0;

CREATE TABLE avalon.attack_type
(
  attack_type_id smallint DEFAULT nextval('avalon.attack_type_id_seq') NOT NULL,
  name character varying(40) NOT NULL,
  CONSTRAINT attack_type_attack_type_id_pk PRIMARY KEY (attack_type_id),
  CONSTRAINT attack_type_name_un UNIQUE (name)
);

-- Table: avalon.attribute
-- TODO add table description

DROP TABLE IF EXISTS avalon.attribute CASCADE;

CREATE SEQUENCE avalon.attribute_id_seq MINVALUE 0;

CREATE TABLE avalon.attribute
(
  attribute_id smallint DEFAULT nextval('avalon.attribute_id_seq') NOT NULL,
  code character varying(3) NOT NULL,
  description text NOT NULL,
  name character varying(40) NOT NULL,
  CONSTRAINT attribute_attribute_id_pk PRIMARY KEY (attribute_id),
  CONSTRAINT attribute_code_un UNIQUE (code),
  CONSTRAINT attribute_description_un UNIQUE (description),
  CONSTRAINT attribute_name_un UNIQUE (name)
);

-- Table: avalon.daily_period
-- TODO add table description

DROP TABLE IF EXISTS avalon.daily_period CASCADE;

CREATE SEQUENCE avalon.daily_period_id_seq MINVALUE 0;

CREATE TABLE avalon.daily_period
(
  daily_period_id smallint DEFAULT nextval('avalon.daily_period_id_seq') NOT NULL,
  name character varying(40) NOT NULL,
  CONSTRAINT daily_period_daily_period_id_pk PRIMARY KEY (daily_period_id),
  CONSTRAINT daily_period_name_un UNIQUE (name)
);

-- Table: avalon.equipment_element_type
-- TODO add table description

DROP TABLE IF EXISTS avalon.equipment_element_type CASCADE;

CREATE SEQUENCE avalon.equipment_element_type_id_seq MINVALUE 0;

CREATE TABLE avalon.equipment_element_type
(
  equipment_element_type_id smallint DEFAULT nextval('avalon.equipment_element_type_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  value smallint NOT NULL,
  CONSTRAINT equipment_element_type_equipment_element_type_id_pk PRIMARY KEY (equipment_element_type_id),
  CONSTRAINT equipment_element_type_code_un UNIQUE (code),
  CONSTRAINT equipment_element_type_value_un UNIQUE (value)
);

-- Table: avalon.equipment_item_modifier
-- TODO add table description

DROP TABLE IF EXISTS avalon.equipment_item_modifier CASCADE;

CREATE SEQUENCE avalon.equipment_item_modifier_id_seq MINVALUE 0;

CREATE TABLE avalon.equipment_item_modifier
(
  equipment_item_modifier_id smallint DEFAULT nextval('avalon.equipment_item_modifier_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  percent boolean NOT NULL,
  special smallint,
  value decimal NOT NULL,
  CONSTRAINT equipment_item_modifier_equipment_item_modifier_id_pk PRIMARY KEY (equipment_item_modifier_id),
  CONSTRAINT equipment_item_modifier_code_un UNIQUE (code)
);

-- Table: avalon.equipment_slot
-- TODO add table description

DROP TABLE IF EXISTS avalon.equipment_slot CASCADE;

CREATE SEQUENCE avalon.equipment_slot_id_seq MINVALUE 0;

CREATE TABLE avalon.equipment_slot
(
  equipment_slot_id smallint DEFAULT nextval('avalon.equipment_slot_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  value smallint NOT NULL,
  CONSTRAINT equipment_slot_equipment_slot_id_pk PRIMARY KEY (equipment_slot_id),
  CONSTRAINT equipment_slot_code_un UNIQUE (code),
  CONSTRAINT equipment_slot_value_un UNIQUE (value)
);

-- Table: avalon.game_action
-- TODO add table description

DROP TABLE IF EXISTS avalon.game_action CASCADE;

CREATE SEQUENCE avalon.game_action_id_seq MINVALUE 0;

CREATE TABLE avalon.game_action
(
  game_action_id smallint DEFAULT nextval('avalon.game_action_id_seq') NOT NULL,
  name character varying(40) NOT NULL,
  CONSTRAINT game_action_game_action_id_pk PRIMARY KEY (game_action_id),
  CONSTRAINT game_action_name_un UNIQUE (name)
);

-- Table: avalon.gender
-- TODO add table description

DROP TABLE IF EXISTS avalon.gender CASCADE;

CREATE SEQUENCE avalon.gender_id_seq MINVALUE 0;

CREATE TABLE avalon.gender
(
  gender_id smallint DEFAULT nextval('avalon.gender_id_seq') NOT NULL,
  description text NOT NULL,
  name character varying(10) NOT NULL,
  CONSTRAINT gender_gender_id_pk PRIMARY KEY (gender_id),
  CONSTRAINT gender_description_un UNIQUE (description),
  CONSTRAINT gender_name_un UNIQUE (name)
);

-- Table: avalon.group
-- TODO add table description

DROP TABLE IF EXISTS avalon.group CASCADE;

CREATE SEQUENCE avalon.group_id_seq MINVALUE 0;

CREATE TABLE avalon.group
(
  group_id smallint DEFAULT nextval('avalon.group_id_seq') NOT NULL,
  name character varying(255) NOT NULL,
  CONSTRAINT group_group_id_pk PRIMARY KEY (group_id),
  CONSTRAINT group_name_un UNIQUE (name)
);

-- Table: avalon.hex_node
-- TODO add table description

DROP TABLE IF EXISTS avalon.hex_node CASCADE;

CREATE SEQUENCE avalon.hex_node_id_seq MINVALUE 0;

CREATE TABLE avalon.hex_node
(
  hex_node_id smallint DEFAULT nextval('avalon.hex_node_id_seq') NOT NULL,
  description text NOT NULL,
  flag integer NOT NULL,
  name character varying(40) NOT NULL,
  CONSTRAINT hex_node_hex_node_id_pk PRIMARY KEY (hex_node_id),
  CONSTRAINT hex_node_name_un UNIQUE (name)
);

-- Table: avalon.horse_type
-- TODO add table description

DROP TABLE IF EXISTS avalon.horse_type CASCADE;

CREATE SEQUENCE avalon.horse_type_id_seq MINVALUE 0;

CREATE TABLE avalon.horse_type
(
  horse_type_id smallint DEFAULT nextval('avalon.horse_type_id_seq') NOT NULL,
  name character varying(40) NOT NULL,
  CONSTRAINT horse_type_horse_type_id_pk PRIMARY KEY (horse_type_id),
  CONSTRAINT horse_type_name_un UNIQUE (name)
);

-- Table: avalon.magic_color
-- TODO add table description

DROP TABLE IF EXISTS avalon.magic_color CASCADE;

CREATE SEQUENCE avalon.magic_color_id_seq MINVALUE 0;

CREATE TABLE avalon.magic_color
(
  magic_color_id smallint DEFAULT nextval('avalon.magic_color_id_seq') NOT NULL,
  long_name character varying(40) NOT NULL,
  short_name character varying(10) NOT NULL,
  CONSTRAINT magic_color_magic_color_id_pk PRIMARY KEY (magic_color_id),
  CONSTRAINT magic_color_long_name_un UNIQUE (long_name),
  CONSTRAINT magic_color_short_name_un UNIQUE (short_name)
);

-- Table: avalon.magic_type
-- TODO add table description

DROP TABLE IF EXISTS avalon.magic_type CASCADE;

CREATE SEQUENCE avalon.magic_type_id_seq MINVALUE 0;

CREATE TABLE avalon.magic_type
(
  magic_type_id smallint DEFAULT nextval('avalon.magic_type_id_seq') NOT NULL,
  code character varying(4) NOT NULL,
  spell_name character varying(20) NOT NULL,
  title character varying(40) NOT NULL,
  CONSTRAINT magic_type_magic_type_id_pk PRIMARY KEY (magic_type_id),
  CONSTRAINT magic_type_code_un UNIQUE (code),
  CONSTRAINT magic_type_spell_name_un UNIQUE (spell_name),
  CONSTRAINT magic_type_title_un UNIQUE (title)
);

-- Table: avalon.node_type
-- TODO add table description

DROP TABLE IF EXISTS avalon.node_type CASCADE;

CREATE SEQUENCE avalon.node_type_id_seq MINVALUE 0;

CREATE TABLE avalon.node_type
(
  node_type_id smallint DEFAULT nextval('avalon.node_type_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  description text NOT NULL,
  CONSTRAINT node_type_node_type_id_pk PRIMARY KEY (node_type_id),
  CONSTRAINT node_type_code_un UNIQUE (code)
);

-- Table: avalon.object_type
-- TODO add table description

DROP TABLE IF EXISTS avalon.object_type CASCADE;

CREATE SEQUENCE avalon.object_type_id_seq MINVALUE 0;

CREATE TABLE avalon.object_type
(
  object_type_id smallint DEFAULT nextval('avalon.object_type_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  flag integer NOT NULL,
  CONSTRAINT object_type_object_type_id_pk PRIMARY KEY (object_type_id),
  CONSTRAINT object_type_code_un UNIQUE (code),
  CONSTRAINT object_type_flag_un UNIQUE (flag)
);

-- Table: avalon.vulnerability
-- TODO add table description

DROP TABLE IF EXISTS avalon.vulnerability CASCADE;

CREATE SEQUENCE avalon.vulnerability_id_seq MINVALUE 0;

CREATE TABLE avalon.vulnerability
(
  vulnerability_id smallint DEFAULT nextval('avalon.vulnerability_id_seq') NOT NULL,
  code character varying(1) NOT NULL,
  harm_name character varying(40) NOT NULL,
  value smallint NOT NULL,
  weight_class character varying(20) NOT NULL,
  CONSTRAINT vulnerability_vulnerability_id_pk PRIMARY KEY (vulnerability_id),
  CONSTRAINT vulnerability_code_un UNIQUE (code),
  CONSTRAINT vulnerability_harm_name_un UNIQUE (harm_name),
  CONSTRAINT vulnerability_value_un UNIQUE (value),
  CONSTRAINT vulnerability_weight_class_un UNIQUE (weight_class)
);

-- Table: avalon.io_item_data
-- TODO add table description

DROP TABLE IF EXISTS avalon.io_item_data CASCADE;

CREATE SEQUENCE avalon.io_item_data_id_seq MINVALUE 0;

CREATE TABLE avalon.io_item_data
(
  io_item_data_id smallint DEFAULT nextval('avalon.io_item_data_id_seq') NOT NULL,
  alerted_speed smallint,
  alerted_sharpness smallint,
  alerted_weight_class smallint,
  attack_method smallint,
  condition smallint,
  count smallint,
  description text,
  fame smallint,
  food_value smallint,
  horse_type smallint,
  internal_script character varying(255) NOT NULL,
  left_ring boolean,
  length smallint,
  light_value smallint,
  max_owned smallint,
  name character varying(40) NOT NULL,
  notoriety smallint,
  price decimal NOT NULL,
  price_damaged decimal,
  price_destroyed decimal,
  ring_type smallint,
  stack_size smallint NOT NULL,
  steal_value smallint,
  title character varying(40) NOT NULL,
  unalerted_speed smallint,
  unalerted_sharpness smallint,
  unalerted_weight_class smallint,
  weight_class smallint,
  weapon_length smallint,
  CONSTRAINT io_item_data_io_item_data_id_pk PRIMARY KEY (io_item_data_id),
  CONSTRAINT io_item_data_alerted_weight_class_fk FOREIGN KEY (alerted_weight_class)
    REFERENCES avalon.vulnerability (vulnerability_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_item_data_attack_method_fk FOREIGN KEY (attack_method)
    REFERENCES avalon.attack_type (attack_type_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_item_data_condition_fk FOREIGN KEY (condition)
    REFERENCES avalon.armor_condition (armor_condition_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_item_data_horse_type_fk FOREIGN KEY (horse_type)
    REFERENCES avalon.horse_type (horse_type_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_item_data_name_un UNIQUE (name),
  CONSTRAINT io_item_data_unalerted_weight_class_fk FOREIGN KEY (unalerted_weight_class)
    REFERENCES avalon.vulnerability (vulnerability_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_item_data_weight_class_fk FOREIGN KEY (weight_class)
    REFERENCES avalon.vulnerability (vulnerability_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.io_item_data_groups_lookup
-- lookup table for io_item_datas and their associated groupss.

DROP TABLE IF EXISTS avalon.io_item_data_groups_lookup CASCADE;

CREATE TABLE avalon.io_item_data_groups_lookup
(
  io_item_data_id smallint NOT NULL,
  group_id smallint NOT NULL,
  CONSTRAINT io_item_data_groups_lookup_io_item_data_id_group_id_pk PRIMARY KEY (io_item_data_id, group_id),
  CONSTRAINT io_item_data_groups_lookup_io_item_data_id_fk FOREIGN KEY (io_item_data_id)
    REFERENCES avalon.io_item_data (io_item_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_item_data_groups_lookup_group_id_fk FOREIGN KEY (group_id)
    REFERENCES avalon.group (group_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.io_item_data_protections_lookup
-- lookup table for io_item_datas and their associated protectionss.

DROP TABLE IF EXISTS avalon.io_item_data_protections_lookup CASCADE;

CREATE TABLE avalon.io_item_data_protections_lookup
(
  io_item_data_id smallint NOT NULL,
  armor_protection_id smallint NOT NULL,
  CONSTRAINT io_item_data_protections_lookup_io_item_data_id_armor_protection_id_pk PRIMARY KEY (io_item_data_id, armor_protection_id),
  CONSTRAINT io_item_data_protections_lookup_io_item_data_id_fk FOREIGN KEY (io_item_data_id)
    REFERENCES avalon.io_item_data (io_item_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_item_data_protections_lookup_armor_protection_id_fk FOREIGN KEY (armor_protection_id)
    REFERENCES avalon.armor_protection (armor_protection_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.io_item_data_types_lookup
-- lookup table for io_item_datas and their associated typess.

DROP TABLE IF EXISTS avalon.io_item_data_types_lookup CASCADE;

CREATE TABLE avalon.io_item_data_types_lookup
(
  io_item_data_id smallint NOT NULL,
  object_type_id smallint NOT NULL,
  CONSTRAINT io_item_data_types_lookup_io_item_data_id_object_type_id_pk PRIMARY KEY (io_item_data_id, object_type_id),
  CONSTRAINT io_item_data_types_lookup_io_item_data_id_fk FOREIGN KEY (io_item_data_id)
    REFERENCES avalon.io_item_data (io_item_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_item_data_types_lookup_object_type_id_fk FOREIGN KEY (object_type_id)
    REFERENCES avalon.object_type (object_type_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.io_item_data_modifiers_lookup
-- lookup table for io_item_datas and their associated modifierss.

DROP TABLE IF EXISTS avalon.io_item_data_modifiers_lookup CASCADE;

CREATE TABLE avalon.io_item_data_modifiers_lookup
(
  io_item_data_id smallint NOT NULL,
  key character varying(40) NOT NULL,
  value character varying(40) NOT NULL,
  CONSTRAINT io_item_data_modifiers_lookup_io_item_data_id_key_pk PRIMARY KEY (io_item_data_id, key),
  CONSTRAINT io_item_data_modifiers_lookup_key_fk FOREIGN KEY (key)
    REFERENCES avalon.equipment_element_type (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_item_data_modifiers_lookup_value_fk FOREIGN KEY (value)
    REFERENCES avalon.equipment_item_modifier (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.io_npc_data
-- TODO add table description

DROP TABLE IF EXISTS avalon.io_npc_data CASCADE;

CREATE SEQUENCE avalon.io_npc_data_id_seq MINVALUE 0;

CREATE TABLE avalon.io_npc_data
(
  io_npc_data_id smallint DEFAULT nextval('avalon.io_npc_data_id_seq') NOT NULL,
  alerted_attack_speed smallint NOT NULL,
  alerted_attack_stars smallint,
  alerted_attack_weight smallint NOT NULL,
  alerted_move smallint NOT NULL,
  gender smallint NOT NULL,
  gold_bounty smallint,
  internal_script text,
  move_strength smallint NOT NULL,
  name character varying(50) NOT NULL,
  notoriety smallint NOT NULL,
  npc_flags bigint,
  title character varying(50) NOT NULL,
  unalerted_attack_speed smallint NOT NULL,
  unalerted_attack_stars smallint,
  unalerted_attack_weight smallint NOT NULL,
  unalerted_move smallint NOT NULL,
  vulnerability smallint NOT NULL,
  wage smallint,
  weight smallint NOT NULL,
  CONSTRAINT io_npc_data_io_npc_data_id_pk PRIMARY KEY (io_npc_data_id),
  CONSTRAINT io_npc_data_alerted_attack_weight_fk FOREIGN KEY (alerted_attack_weight)
    REFERENCES avalon.vulnerability (vulnerability_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_npc_data_gender_fk FOREIGN KEY (gender)
    REFERENCES avalon.gender (gender_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_npc_data_move_strength_fk FOREIGN KEY (move_strength)
    REFERENCES avalon.vulnerability (vulnerability_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_npc_data_name_un UNIQUE (name),
  CONSTRAINT io_npc_data_unalerted_attack_weight_fk FOREIGN KEY (unalerted_attack_weight)
    REFERENCES avalon.vulnerability (vulnerability_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_npc_data_vulnerability_fk FOREIGN KEY (vulnerability)
    REFERENCES avalon.vulnerability (vulnerability_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_npc_data_weight_fk FOREIGN KEY (weight)
    REFERENCES avalon.vulnerability (vulnerability_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.io_npc_data_groups_lookup
-- lookup table for io_npc_datas and their associated groupss.

DROP TABLE IF EXISTS avalon.io_npc_data_groups_lookup CASCADE;

CREATE TABLE avalon.io_npc_data_groups_lookup
(
  io_npc_data_id smallint NOT NULL,
  group_id smallint NOT NULL,
  CONSTRAINT io_npc_data_groups_lookup_io_npc_data_id_group_id_pk PRIMARY KEY (io_npc_data_id, group_id),
  CONSTRAINT io_npc_data_groups_lookup_io_npc_data_id_fk FOREIGN KEY (io_npc_data_id)
    REFERENCES avalon.io_npc_data (io_npc_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_npc_data_groups_lookup_group_id_fk FOREIGN KEY (group_id)
    REFERENCES avalon.group (group_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.io_npc_data_inventory_items_lookup
-- lookup table for io_npc_datas and their associated inventory_itemss.

DROP TABLE IF EXISTS avalon.io_npc_data_inventory_items_lookup CASCADE;

CREATE TABLE avalon.io_npc_data_inventory_items_lookup
(
  io_npc_data_id smallint NOT NULL,
  io_item_data_id smallint NOT NULL,
  CONSTRAINT io_npc_data_inventory_items_lookup_io_npc_data_id_io_item_data_id_pk PRIMARY KEY (io_npc_data_id, io_item_data_id),
  CONSTRAINT io_npc_data_inventory_items_lookup_io_npc_data_id_fk FOREIGN KEY (io_npc_data_id)
    REFERENCES avalon.io_npc_data (io_npc_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_npc_data_inventory_items_lookup_io_item_data_id_fk FOREIGN KEY (io_item_data_id)
    REFERENCES avalon.io_item_data (io_item_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.io_npc_data_equipped_items_lookup
-- lookup table for io_npc_datas and their associated equipped_itemss.

DROP TABLE IF EXISTS avalon.io_npc_data_equipped_items_lookup CASCADE;

CREATE TABLE avalon.io_npc_data_equipped_items_lookup
(
  io_npc_data_id smallint NOT NULL,
  key character varying(40) NOT NULL,
  value character varying(40) NOT NULL,
  CONSTRAINT io_npc_data_equipped_items_lookup_io_npc_data_id_key_pk PRIMARY KEY (io_npc_data_id, key),
  CONSTRAINT io_npc_data_equipped_items_lookup_key_fk FOREIGN KEY (key)
    REFERENCES avalon.equipment_slot (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_npc_data_equipped_items_lookup_value_fk FOREIGN KEY (value)
    REFERENCES avalon.io_item_data (name) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.io_pc_data
-- TODO add table description

DROP TABLE IF EXISTS avalon.io_pc_data CASCADE;

CREATE SEQUENCE avalon.io_pc_data_id_seq MINVALUE 0;

CREATE TABLE avalon.io_pc_data
(
  io_pc_data_id smallint DEFAULT nextval('avalon.io_pc_data_id_seq') NOT NULL,
  bags smallint NOT NULL,
  gender smallint NOT NULL,
  gold decimal NOT NULL,
  interface_flags smallint NOT NULL,
  level smallint NOT NULL,
  name character varying(40) NOT NULL,
  xp smallint NOT NULL,
  CONSTRAINT io_pc_data_io_pc_data_id_pk PRIMARY KEY (io_pc_data_id),
  CONSTRAINT io_pc_data_gender_fk FOREIGN KEY (gender)
    REFERENCES avalon.gender (gender_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.io_pc_data_keyring_lookup
-- lookup table for io_pc_datas and their associated keyring.

DROP TABLE IF EXISTS avalon.io_pc_data_keyring_lookup CASCADE;

CREATE TABLE avalon.io_pc_data_keyring_lookup
(
  io_pc_data_id smallint NOT NULL,
  keyring character varying(40) NOT NULL,
  CONSTRAINT io_pc_data_keyring_lookup_io_pc_data_id_keyring_pk PRIMARY KEY (io_pc_data_id, keyring),
  CONSTRAINT io_pc_data_keyring_lookup_io_pc_data_id_fk FOREIGN KEY (io_pc_data_id)
    REFERENCES avalon.io_pc_data (io_pc_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.io_pc_data_attributes_lookup
-- lookup table for io_pc_datas and their associated attributess.

DROP TABLE IF EXISTS avalon.io_pc_data_attributes_lookup CASCADE;

CREATE TABLE avalon.io_pc_data_attributes_lookup
(
  io_pc_data_id smallint NOT NULL,
  key character varying(3) NOT NULL,
  value smallint NOT NULL,
  CONSTRAINT io_pc_data_attributes_lookup_io_pc_data_id_key_pk PRIMARY KEY (io_pc_data_id, key),
  CONSTRAINT io_pc_data_attributes_lookup_key_fk FOREIGN KEY (key)
    REFERENCES avalon.attribute (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.io_pc_data_equipped_items_lookup
-- lookup table for io_pc_datas and their associated equipped_itemss.

DROP TABLE IF EXISTS avalon.io_pc_data_equipped_items_lookup CASCADE;

CREATE TABLE avalon.io_pc_data_equipped_items_lookup
(
  io_pc_data_id smallint NOT NULL,
  key character varying(40) NOT NULL,
  value smallint NOT NULL,
  CONSTRAINT io_pc_data_equipped_items_lookup_io_pc_data_id_key_pk PRIMARY KEY (io_pc_data_id, key),
  CONSTRAINT io_pc_data_equipped_items_lookup_key_fk FOREIGN KEY (key)
    REFERENCES avalon.equipment_slot (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_equipped_items_lookup_value_fk FOREIGN KEY (value)
    REFERENCES avalon.io_item_data (io_item_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

