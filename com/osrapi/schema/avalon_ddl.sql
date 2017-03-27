-- Schema: avalon
DROP SCHEMA IF EXISTS avalon CASCADE;
CREATE SCHEMA avalon;

-- Table: avalon.action_type
-- TODO add table description

DROP TABLE IF EXISTS avalon.action_type CASCADE;

CREATE SEQUENCE avalon.action_type_id_seq MINVALUE 0;

CREATE TABLE avalon.action_type
(
  action_type_id smallint DEFAULT nextval('avalon.action_type_id_seq') NOT NULL,
  name character varying(40) NOT NULL,
  CONSTRAINT action_type_action_type_id_pk PRIMARY KEY (action_type_id),
  CONSTRAINT action_type_name_un UNIQUE (name)
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

-- Table: avalon.hex_clearing_type
-- TODO add table description

DROP TABLE IF EXISTS avalon.hex_clearing_type CASCADE;

CREATE SEQUENCE avalon.hex_clearing_type_id_seq MINVALUE 0;

CREATE TABLE avalon.hex_clearing_type
(
  hex_clearing_type_id smallint DEFAULT nextval('avalon.hex_clearing_type_id_seq') NOT NULL,
  code character varying(22) NOT NULL,
  CONSTRAINT hex_clearing_type_hex_clearing_type_id_pk PRIMARY KEY (hex_clearing_type_id),
  CONSTRAINT hex_clearing_type_code_un UNIQUE (code)
);

-- Table: avalon.hex_terrain_type
-- TODO add table description

DROP TABLE IF EXISTS avalon.hex_terrain_type CASCADE;

CREATE SEQUENCE avalon.hex_terrain_type_id_seq MINVALUE 0;

CREATE TABLE avalon.hex_terrain_type
(
  hex_terrain_type_id smallint DEFAULT nextval('avalon.hex_terrain_type_id_seq') NOT NULL,
  code character varying(20) NOT NULL,
  CONSTRAINT hex_terrain_type_hex_terrain_type_id_pk PRIMARY KEY (hex_terrain_type_id),
  CONSTRAINT hex_terrain_type_code_un UNIQUE (code)
);

-- Table: avalon.hex_tile_type
-- TODO add table description

DROP TABLE IF EXISTS avalon.hex_tile_type CASCADE;

CREATE SEQUENCE avalon.hex_tile_type_id_seq MINVALUE 0;

CREATE TABLE avalon.hex_tile_type
(
  hex_tile_type_id smallint DEFAULT nextval('avalon.hex_tile_type_id_seq') NOT NULL,
  code character varying(18) NOT NULL,
  CONSTRAINT hex_tile_type_hex_tile_type_id_pk PRIMARY KEY (hex_tile_type_id),
  CONSTRAINT hex_tile_type_code_un UNIQUE (code)
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
  name character varying(10) NOT NULL,
  CONSTRAINT magic_color_magic_color_id_pk PRIMARY KEY (magic_color_id),
  CONSTRAINT magic_color_long_name_un UNIQUE (long_name),
  CONSTRAINT magic_color_name_un UNIQUE (name)
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

-- Table: avalon.vector3
-- TODO add table description

DROP TABLE IF EXISTS avalon.vector3 CASCADE;

CREATE SEQUENCE avalon.vector3_id_seq MINVALUE 0;

CREATE TABLE avalon.vector3
(
  vector3_id smallint DEFAULT nextval('avalon.vector3_id_seq') NOT NULL,
  x smallint NOT NULL,
  y smallint NOT NULL,
  z smallint NOT NULL,
  code character varying(8) NOT NULL,
  CONSTRAINT vector3_vector3_id_pk PRIMARY KEY (vector3_id),
  CONSTRAINT vector3_code_un UNIQUE (code)
);

-- Table: avalon.hex_clearing
-- TODO add table description

DROP TABLE IF EXISTS avalon.hex_clearing CASCADE;

CREATE SEQUENCE avalon.hex_clearing_id_seq MINVALUE 0;

CREATE TABLE avalon.hex_clearing
(
  hex_clearing_id smallint DEFAULT nextval('avalon.hex_clearing_id_seq') NOT NULL,
  number smallint NOT NULL,
  type smallint NOT NULL,
  location smallint NOT NULL,
  code character varying(3) NOT NULL,
  CONSTRAINT hex_clearing_hex_clearing_id_pk PRIMARY KEY (hex_clearing_id),
  CONSTRAINT hex_clearing_type_fk FOREIGN KEY (type)
    REFERENCES avalon.hex_clearing_type (hex_clearing_type_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT hex_clearing_location_fk FOREIGN KEY (location)
    REFERENCES avalon.vector3 (vector3_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT hex_clearing_code_un UNIQUE (code)
);

-- Table: avalon.hex_node
-- TODO add table description

DROP TABLE IF EXISTS avalon.hex_node CASCADE;

CREATE SEQUENCE avalon.hex_node_id_seq MINVALUE 0;

CREATE TABLE avalon.hex_node
(
  hex_node_id smallint DEFAULT nextval('avalon.hex_node_id_seq') NOT NULL,
  location smallint NOT NULL,
  type smallint NOT NULL,
  code character varying(30) NOT NULL,
  CONSTRAINT hex_node_hex_node_id_pk PRIMARY KEY (hex_node_id),
  CONSTRAINT hex_node_location_fk FOREIGN KEY (location)
    REFERENCES avalon.vector3 (vector3_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT hex_node_type_fk FOREIGN KEY (type)
    REFERENCES avalon.hex_terrain_type (hex_terrain_type_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT hex_node_code_un UNIQUE (code)
);

-- Table: avalon.path_node
-- TODO add table description

DROP TABLE IF EXISTS avalon.path_node CASCADE;

CREATE SEQUENCE avalon.path_node_id_seq MINVALUE 0;

CREATE TABLE avalon.path_node
(
  path_node_id smallint DEFAULT nextval('avalon.path_node_id_seq') NOT NULL,
  node smallint NOT NULL,
  sort_order smallint NOT NULL,
  CONSTRAINT path_node_path_node_id_pk PRIMARY KEY (path_node_id),
  CONSTRAINT path_node_node_fk FOREIGN KEY (node)
    REFERENCES avalon.vector3 (vector3_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.hex_path
-- TODO add table description

DROP TABLE IF EXISTS avalon.hex_path CASCADE;

CREATE SEQUENCE avalon.hex_path_id_seq MINVALUE 0;

CREATE TABLE avalon.hex_path
(
  hex_path_id smallint DEFAULT nextval('avalon.hex_path_id_seq') NOT NULL,
  code character varying(20) NOT NULL,
  CONSTRAINT hex_path_hex_path_id_pk PRIMARY KEY (hex_path_id),
  CONSTRAINT hex_path_code_un UNIQUE (code)
);

-- Table: avalon.hex_path_nodes_lookup
-- lookup table for hex_paths and their associated nodess.

DROP TABLE IF EXISTS avalon.hex_path_nodes_lookup CASCADE;

CREATE TABLE avalon.hex_path_nodes_lookup
(
  hex_path_id smallint NOT NULL,
  path_node_id smallint NOT NULL,
  CONSTRAINT hex_path_nodes_lookup_hex_path_id_path_node_id_pk PRIMARY KEY (hex_path_id, path_node_id),
  CONSTRAINT hex_path_nodes_lookup_hex_path_id_fk FOREIGN KEY (hex_path_id)
    REFERENCES avalon.hex_path (hex_path_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT hex_path_nodes_lookup_path_node_id_fk FOREIGN KEY (path_node_id)
    REFERENCES avalon.path_node (path_node_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.hex_node_edge
-- TODO add table description

DROP TABLE IF EXISTS avalon.hex_node_edge CASCADE;

CREATE SEQUENCE avalon.hex_node_edge_id_seq MINVALUE 0;

CREATE TABLE avalon.hex_node_edge
(
  hex_node_edge_id smallint DEFAULT nextval('avalon.hex_node_edge_id_seq') NOT NULL,
  clearing_from smallint NOT NULL,
  clearing_to smallint NOT NULL,
  path smallint NOT NULL,
  CONSTRAINT hex_node_edge_hex_node_edge_id_pk PRIMARY KEY (hex_node_edge_id),
  CONSTRAINT hex_node_edge_clearing_from_fk FOREIGN KEY (clearing_from)
    REFERENCES avalon.hex_clearing (hex_clearing_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT hex_node_edge_clearing_to_fk FOREIGN KEY (clearing_to)
    REFERENCES avalon.hex_clearing (hex_clearing_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT hex_node_edge_path_fk FOREIGN KEY (path)
    REFERENCES avalon.hex_path (hex_path_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.hex_side_edge
-- TODO add table description

DROP TABLE IF EXISTS avalon.hex_side_edge CASCADE;

CREATE SEQUENCE avalon.hex_side_edge_id_seq MINVALUE 0;

CREATE TABLE avalon.hex_side_edge
(
  hex_side_edge_id smallint DEFAULT nextval('avalon.hex_side_edge_id_seq') NOT NULL,
  clearing_from smallint NOT NULL,
  side smallint NOT NULL,
  path smallint NOT NULL,
  CONSTRAINT hex_side_edge_hex_side_edge_id_pk PRIMARY KEY (hex_side_edge_id),
  CONSTRAINT hex_side_edge_clearing_from_fk FOREIGN KEY (clearing_from)
    REFERENCES avalon.hex_clearing (hex_clearing_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT hex_side_edge_path_fk FOREIGN KEY (path)
    REFERENCES avalon.hex_path (hex_path_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.hex_tile
-- TODO add table description

DROP TABLE IF EXISTS avalon.hex_tile CASCADE;

CREATE SEQUENCE avalon.hex_tile_id_seq MINVALUE 0;

CREATE TABLE avalon.hex_tile
(
  hex_tile_id smallint DEFAULT nextval('avalon.hex_tile_id_seq') NOT NULL,
  abbreviation character varying(2) NOT NULL,
  name character varying(20) NOT NULL,
  type smallint NOT NULL,
  CONSTRAINT hex_tile_hex_tile_id_pk PRIMARY KEY (hex_tile_id),
  CONSTRAINT hex_tile_abbreviation_un UNIQUE (abbreviation),
  CONSTRAINT hex_tile_name_un UNIQUE (name),
  CONSTRAINT hex_tile_type_fk FOREIGN KEY (type)
    REFERENCES avalon.hex_tile_type (hex_tile_type_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.hex_tile_clearings_lookup
-- lookup table for hex_tiles and their associated clearingss.

DROP TABLE IF EXISTS avalon.hex_tile_clearings_lookup CASCADE;

CREATE TABLE avalon.hex_tile_clearings_lookup
(
  hex_tile_id smallint NOT NULL,
  hex_clearing_id smallint NOT NULL,
  CONSTRAINT hex_tile_clearings_lookup_hex_tile_id_hex_clearing_id_pk PRIMARY KEY (hex_tile_id, hex_clearing_id),
  CONSTRAINT hex_tile_clearings_lookup_hex_tile_id_fk FOREIGN KEY (hex_tile_id)
    REFERENCES avalon.hex_tile (hex_tile_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT hex_tile_clearings_lookup_hex_clearing_id_fk FOREIGN KEY (hex_clearing_id)
    REFERENCES avalon.hex_clearing (hex_clearing_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.hex_tile_edges_lookup
-- lookup table for hex_tiles and their associated edgess.

DROP TABLE IF EXISTS avalon.hex_tile_edges_lookup CASCADE;

CREATE TABLE avalon.hex_tile_edges_lookup
(
  hex_tile_id smallint NOT NULL,
  hex_node_edge_id smallint NOT NULL,
  CONSTRAINT hex_tile_edges_lookup_hex_tile_id_hex_node_edge_id_pk PRIMARY KEY (hex_tile_id, hex_node_edge_id),
  CONSTRAINT hex_tile_edges_lookup_hex_tile_id_fk FOREIGN KEY (hex_tile_id)
    REFERENCES avalon.hex_tile (hex_tile_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT hex_tile_edges_lookup_hex_node_edge_id_fk FOREIGN KEY (hex_node_edge_id)
    REFERENCES avalon.hex_node_edge (hex_node_edge_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.hex_tile_enchanted_edges_lookup
-- lookup table for hex_tiles and their associated enchanted_edgess.

DROP TABLE IF EXISTS avalon.hex_tile_enchanted_edges_lookup CASCADE;

CREATE TABLE avalon.hex_tile_enchanted_edges_lookup
(
  hex_tile_id smallint NOT NULL,
  hex_node_edge_id smallint NOT NULL,
  CONSTRAINT hex_tile_enchanted_edges_lookup_hex_tile_id_hex_node_edge_id_pk PRIMARY KEY (hex_tile_id, hex_node_edge_id),
  CONSTRAINT hex_tile_enchanted_edges_lookup_hex_tile_id_fk FOREIGN KEY (hex_tile_id)
    REFERENCES avalon.hex_tile (hex_tile_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT hex_tile_enchanted_edges_lookup_hex_node_edge_id_fk FOREIGN KEY (hex_node_edge_id)
    REFERENCES avalon.hex_node_edge (hex_node_edge_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.hex_tile_enchanted_secret_edges_lookup
-- lookup table for hex_tiles and their associated enchanted_secret_edgess.

DROP TABLE IF EXISTS avalon.hex_tile_enchanted_secret_edges_lookup CASCADE;

CREATE TABLE avalon.hex_tile_enchanted_secret_edges_lookup
(
  hex_tile_id smallint NOT NULL,
  hex_node_edge_id smallint NOT NULL,
  CONSTRAINT hex_tile_enchanted_secret_edges_lookup_hex_tile_id_hex_node_edge_id_pk PRIMARY KEY (hex_tile_id, hex_node_edge_id),
  CONSTRAINT hex_tile_enchanted_secret_edges_lookup_hex_tile_id_fk FOREIGN KEY (hex_tile_id)
    REFERENCES avalon.hex_tile (hex_tile_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT hex_tile_enchanted_secret_edges_lookup_hex_node_edge_id_fk FOREIGN KEY (hex_node_edge_id)
    REFERENCES avalon.hex_node_edge (hex_node_edge_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.hex_tile_enchanted_side_edges_lookup
-- lookup table for hex_tiles and their associated enchanted_side_edgess.

DROP TABLE IF EXISTS avalon.hex_tile_enchanted_side_edges_lookup CASCADE;

CREATE TABLE avalon.hex_tile_enchanted_side_edges_lookup
(
  hex_tile_id smallint NOT NULL,
  hex_side_edge_id smallint NOT NULL,
  CONSTRAINT hex_tile_enchanted_side_edges_lookup_hex_tile_id_hex_side_edge_id_pk PRIMARY KEY (hex_tile_id, hex_side_edge_id),
  CONSTRAINT hex_tile_enchanted_side_edges_lookup_hex_tile_id_fk FOREIGN KEY (hex_tile_id)
    REFERENCES avalon.hex_tile (hex_tile_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT hex_tile_enchanted_side_edges_lookup_hex_side_edge_id_fk FOREIGN KEY (hex_side_edge_id)
    REFERENCES avalon.hex_side_edge (hex_side_edge_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.hex_tile_enchanted_terrain_lookup
-- lookup table for hex_tiles and their associated enchanted_terrains.

DROP TABLE IF EXISTS avalon.hex_tile_enchanted_terrain_lookup CASCADE;

CREATE TABLE avalon.hex_tile_enchanted_terrain_lookup
(
  hex_tile_id smallint NOT NULL,
  hex_node_id smallint NOT NULL,
  CONSTRAINT hex_tile_enchanted_terrain_lookup_hex_tile_id_hex_node_id_pk PRIMARY KEY (hex_tile_id, hex_node_id),
  CONSTRAINT hex_tile_enchanted_terrain_lookup_hex_tile_id_fk FOREIGN KEY (hex_tile_id)
    REFERENCES avalon.hex_tile (hex_tile_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT hex_tile_enchanted_terrain_lookup_hex_node_id_fk FOREIGN KEY (hex_node_id)
    REFERENCES avalon.hex_node (hex_node_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.hex_tile_secret_edges_lookup
-- lookup table for hex_tiles and their associated secret_edgess.

DROP TABLE IF EXISTS avalon.hex_tile_secret_edges_lookup CASCADE;

CREATE TABLE avalon.hex_tile_secret_edges_lookup
(
  hex_tile_id smallint NOT NULL,
  hex_node_edge_id smallint NOT NULL,
  CONSTRAINT hex_tile_secret_edges_lookup_hex_tile_id_hex_node_edge_id_pk PRIMARY KEY (hex_tile_id, hex_node_edge_id),
  CONSTRAINT hex_tile_secret_edges_lookup_hex_tile_id_fk FOREIGN KEY (hex_tile_id)
    REFERENCES avalon.hex_tile (hex_tile_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT hex_tile_secret_edges_lookup_hex_node_edge_id_fk FOREIGN KEY (hex_node_edge_id)
    REFERENCES avalon.hex_node_edge (hex_node_edge_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.hex_tile_side_edges_lookup
-- lookup table for hex_tiles and their associated side_edgess.

DROP TABLE IF EXISTS avalon.hex_tile_side_edges_lookup CASCADE;

CREATE TABLE avalon.hex_tile_side_edges_lookup
(
  hex_tile_id smallint NOT NULL,
  hex_side_edge_id smallint NOT NULL,
  CONSTRAINT hex_tile_side_edges_lookup_hex_tile_id_hex_side_edge_id_pk PRIMARY KEY (hex_tile_id, hex_side_edge_id),
  CONSTRAINT hex_tile_side_edges_lookup_hex_tile_id_fk FOREIGN KEY (hex_tile_id)
    REFERENCES avalon.hex_tile (hex_tile_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT hex_tile_side_edges_lookup_hex_side_edge_id_fk FOREIGN KEY (hex_side_edge_id)
    REFERENCES avalon.hex_side_edge (hex_side_edge_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.hex_tile_terrain_lookup
-- lookup table for hex_tiles and their associated terrains.

DROP TABLE IF EXISTS avalon.hex_tile_terrain_lookup CASCADE;

CREATE TABLE avalon.hex_tile_terrain_lookup
(
  hex_tile_id smallint NOT NULL,
  hex_node_id smallint NOT NULL,
  CONSTRAINT hex_tile_terrain_lookup_hex_tile_id_hex_node_id_pk PRIMARY KEY (hex_tile_id, hex_node_id),
  CONSTRAINT hex_tile_terrain_lookup_hex_tile_id_fk FOREIGN KEY (hex_tile_id)
    REFERENCES avalon.hex_tile (hex_tile_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT hex_tile_terrain_lookup_hex_node_id_fk FOREIGN KEY (hex_node_id)
    REFERENCES avalon.hex_node (hex_node_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
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

-- Table: avalon.action_chit
-- TODO add table description

DROP TABLE IF EXISTS avalon.action_chit CASCADE;

CREATE SEQUENCE avalon.action_chit_id_seq MINVALUE 0;

CREATE TABLE avalon.action_chit
(
  action_chit_id smallint DEFAULT nextval('avalon.action_chit_id_seq') NOT NULL,
  type smallint NOT NULL,
  strength smallint,
  magic_type smallint,
  speed smallint NOT NULL,
  fatigue_asterisk smallint,
  code character varying(20) NOT NULL,
  CONSTRAINT action_chit_action_chit_id_pk PRIMARY KEY (action_chit_id),
  CONSTRAINT action_chit_type_fk FOREIGN KEY (type)
    REFERENCES avalon.action_type (action_type_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT action_chit_strength_fk FOREIGN KEY (strength)
    REFERENCES avalon.vulnerability (vulnerability_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT action_chit_magic_type_fk FOREIGN KEY (magic_type)
    REFERENCES avalon.magic_type (magic_type_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT action_chit_code_un UNIQUE (code)
);

-- Table: avalon.development_actions
-- TODO add table description

DROP TABLE IF EXISTS avalon.development_actions CASCADE;

CREATE SEQUENCE avalon.development_actions_id_seq MINVALUE 0;

CREATE TABLE avalon.development_actions
(
  development_actions_id smallint DEFAULT nextval('avalon.development_actions_id_seq') NOT NULL,
  action smallint NOT NULL,
  quantity smallint NOT NULL,
  code character varying(20) NOT NULL,
  CONSTRAINT development_actions_development_actions_id_pk PRIMARY KEY (development_actions_id),
  CONSTRAINT development_actions_action_quantity_un UNIQUE (action, quantity),
  CONSTRAINT development_actions_action_fk FOREIGN KEY (action)
    REFERENCES avalon.action_chit (action_chit_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT development_actions_code_un UNIQUE (code)
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
  fame_bounty smallint,
  gender smallint,
  gold_bounty smallint,
  internal_script text,
  move_strength smallint,
  name character varying(50) NOT NULL,
  natural_weapon_length smallint,
  natural_weapon_type smallint,
  notoriety smallint NOT NULL,
  npc_flags bigint,
  title character varying(50) NOT NULL,
  unalerted_attack_speed smallint NOT NULL,
  unalerted_attack_spell smallint,
  unalerted_attack_stars smallint,
  unalerted_attack_weight smallint,
  unalerted_move smallint NOT NULL,
  vulnerability smallint,
  wage smallint,
  weight smallint,
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
  CONSTRAINT io_npc_data_natural_weapon_type_fk FOREIGN KEY (natural_weapon_type)
    REFERENCES avalon.attack_type (attack_type_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_npc_data_unalerted_attack_spell_fk FOREIGN KEY (unalerted_attack_spell)
    REFERENCES avalon.magic_type (magic_type_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
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
  advantage1 smallint NOT NULL,
  advantage2 smallint NOT NULL,
  evaluation text NOT NULL,
  gender smallint NOT NULL,
  glyph character varying(40) NOT NULL,
  gold decimal,
  interface_flags smallint,
  name character varying(40) NOT NULL,
  stage_one_name character varying(40) NOT NULL,
  stage_one_spells smallint,
  stage_two_name character varying(40) NOT NULL,
  stage_two_spells smallint,
  stage_three_name character varying(40) NOT NULL,
  stage_three_spells smallint,
  stage_four_spells smallint,
  vulnerability smallint,
  CONSTRAINT io_pc_data_io_pc_data_id_pk PRIMARY KEY (io_pc_data_id),
  CONSTRAINT io_pc_data_advantage1_fk FOREIGN KEY (advantage1)
    REFERENCES avalon.advantage (advantage_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_advantage2_fk FOREIGN KEY (advantage2)
    REFERENCES avalon.advantage (advantage_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_gender_fk FOREIGN KEY (gender)
    REFERENCES avalon.gender (gender_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_vulnerability_fk FOREIGN KEY (vulnerability)
    REFERENCES avalon.vulnerability (vulnerability_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.io_pc_data_ally_lookup
-- lookup table for io_pc_datas and their associated allys.

DROP TABLE IF EXISTS avalon.io_pc_data_ally_lookup CASCADE;

CREATE TABLE avalon.io_pc_data_ally_lookup
(
  io_pc_data_id smallint NOT NULL,
  group_id smallint NOT NULL,
  CONSTRAINT io_pc_data_ally_lookup_io_pc_data_id_group_id_pk PRIMARY KEY (io_pc_data_id, group_id),
  CONSTRAINT io_pc_data_ally_lookup_io_pc_data_id_fk FOREIGN KEY (io_pc_data_id)
    REFERENCES avalon.io_pc_data (io_pc_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_ally_lookup_group_id_fk FOREIGN KEY (group_id)
    REFERENCES avalon.group (group_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.io_pc_data_enemy_lookup
-- lookup table for io_pc_datas and their associated enemys.

DROP TABLE IF EXISTS avalon.io_pc_data_enemy_lookup CASCADE;

CREATE TABLE avalon.io_pc_data_enemy_lookup
(
  io_pc_data_id smallint NOT NULL,
  group_id smallint NOT NULL,
  CONSTRAINT io_pc_data_enemy_lookup_io_pc_data_id_group_id_pk PRIMARY KEY (io_pc_data_id, group_id),
  CONSTRAINT io_pc_data_enemy_lookup_io_pc_data_id_fk FOREIGN KEY (io_pc_data_id)
    REFERENCES avalon.io_pc_data (io_pc_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_enemy_lookup_group_id_fk FOREIGN KEY (group_id)
    REFERENCES avalon.group (group_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.io_pc_data_friendly_lookup
-- lookup table for io_pc_datas and their associated friendlys.

DROP TABLE IF EXISTS avalon.io_pc_data_friendly_lookup CASCADE;

CREATE TABLE avalon.io_pc_data_friendly_lookup
(
  io_pc_data_id smallint NOT NULL,
  group_id smallint NOT NULL,
  CONSTRAINT io_pc_data_friendly_lookup_io_pc_data_id_group_id_pk PRIMARY KEY (io_pc_data_id, group_id),
  CONSTRAINT io_pc_data_friendly_lookup_io_pc_data_id_fk FOREIGN KEY (io_pc_data_id)
    REFERENCES avalon.io_pc_data (io_pc_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_friendly_lookup_group_id_fk FOREIGN KEY (group_id)
    REFERENCES avalon.group (group_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.io_pc_data_stage_one_actions_lookup
-- lookup table for io_pc_datas and their associated stage_one_actionss.

DROP TABLE IF EXISTS avalon.io_pc_data_stage_one_actions_lookup CASCADE;

CREATE TABLE avalon.io_pc_data_stage_one_actions_lookup
(
  io_pc_data_id smallint NOT NULL,
  development_actions_id smallint NOT NULL,
  CONSTRAINT io_pc_data_stage_one_actions_lookup_io_pc_data_id_development_actions_id_pk PRIMARY KEY (io_pc_data_id, development_actions_id),
  CONSTRAINT io_pc_data_stage_one_actions_lookup_io_pc_data_id_fk FOREIGN KEY (io_pc_data_id)
    REFERENCES avalon.io_pc_data (io_pc_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_stage_one_actions_lookup_development_actions_id_fk FOREIGN KEY (development_actions_id)
    REFERENCES avalon.development_actions (development_actions_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.io_pc_data_stage_two_actions_lookup
-- lookup table for io_pc_datas and their associated stage_two_actionss.

DROP TABLE IF EXISTS avalon.io_pc_data_stage_two_actions_lookup CASCADE;

CREATE TABLE avalon.io_pc_data_stage_two_actions_lookup
(
  io_pc_data_id smallint NOT NULL,
  development_actions_id smallint NOT NULL,
  CONSTRAINT io_pc_data_stage_two_actions_lookup_io_pc_data_id_development_actions_id_pk PRIMARY KEY (io_pc_data_id, development_actions_id),
  CONSTRAINT io_pc_data_stage_two_actions_lookup_io_pc_data_id_fk FOREIGN KEY (io_pc_data_id)
    REFERENCES avalon.io_pc_data (io_pc_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_stage_two_actions_lookup_development_actions_id_fk FOREIGN KEY (development_actions_id)
    REFERENCES avalon.development_actions (development_actions_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.io_pc_data_stage_three_actions_lookup
-- lookup table for io_pc_datas and their associated stage_three_actionss.

DROP TABLE IF EXISTS avalon.io_pc_data_stage_three_actions_lookup CASCADE;

CREATE TABLE avalon.io_pc_data_stage_three_actions_lookup
(
  io_pc_data_id smallint NOT NULL,
  development_actions_id smallint NOT NULL,
  CONSTRAINT io_pc_data_stage_three_actions_lookup_io_pc_data_id_development_actions_id_pk PRIMARY KEY (io_pc_data_id, development_actions_id),
  CONSTRAINT io_pc_data_stage_three_actions_lookup_io_pc_data_id_fk FOREIGN KEY (io_pc_data_id)
    REFERENCES avalon.io_pc_data (io_pc_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_stage_three_actions_lookup_development_actions_id_fk FOREIGN KEY (development_actions_id)
    REFERENCES avalon.development_actions (development_actions_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.io_pc_data_stage_four_actions_lookup
-- lookup table for io_pc_datas and their associated stage_four_actionss.

DROP TABLE IF EXISTS avalon.io_pc_data_stage_four_actions_lookup CASCADE;

CREATE TABLE avalon.io_pc_data_stage_four_actions_lookup
(
  io_pc_data_id smallint NOT NULL,
  development_actions_id smallint NOT NULL,
  CONSTRAINT io_pc_data_stage_four_actions_lookup_io_pc_data_id_development_actions_id_pk PRIMARY KEY (io_pc_data_id, development_actions_id),
  CONSTRAINT io_pc_data_stage_four_actions_lookup_io_pc_data_id_fk FOREIGN KEY (io_pc_data_id)
    REFERENCES avalon.io_pc_data (io_pc_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_stage_four_actions_lookup_development_actions_id_fk FOREIGN KEY (development_actions_id)
    REFERENCES avalon.development_actions (development_actions_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.io_pc_data_starting_location_lookup
-- lookup table for io_pc_datas and their associated startingLocation.

DROP TABLE IF EXISTS avalon.io_pc_data_starting_location_lookup CASCADE;

CREATE TABLE avalon.io_pc_data_starting_location_lookup
(
  io_pc_data_id smallint NOT NULL,
  starting_location character varying(20) NOT NULL,
  CONSTRAINT io_pc_data_starting_location_lookup_io_pc_data_id_starting_location_pk PRIMARY KEY (io_pc_data_id, starting_location),
  CONSTRAINT io_pc_data_starting_location_lookup_io_pc_data_id_fk FOREIGN KEY (io_pc_data_id)
    REFERENCES avalon.io_pc_data (io_pc_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.io_pc_data_unfriendly_lookup
-- lookup table for io_pc_datas and their associated unfriendlys.

DROP TABLE IF EXISTS avalon.io_pc_data_unfriendly_lookup CASCADE;

CREATE TABLE avalon.io_pc_data_unfriendly_lookup
(
  io_pc_data_id smallint NOT NULL,
  group_id smallint NOT NULL,
  CONSTRAINT io_pc_data_unfriendly_lookup_io_pc_data_id_group_id_pk PRIMARY KEY (io_pc_data_id, group_id),
  CONSTRAINT io_pc_data_unfriendly_lookup_io_pc_data_id_fk FOREIGN KEY (io_pc_data_id)
    REFERENCES avalon.io_pc_data (io_pc_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_unfriendly_lookup_group_id_fk FOREIGN KEY (group_id)
    REFERENCES avalon.group (group_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.io_pc_data_stage_one_equipped_items_lookup
-- lookup table for io_pc_datas and their associated stage_one_equipped_itemss.

DROP TABLE IF EXISTS avalon.io_pc_data_stage_one_equipped_items_lookup CASCADE;

CREATE TABLE avalon.io_pc_data_stage_one_equipped_items_lookup
(
  io_pc_data_id smallint NOT NULL,
  key character varying(40) NOT NULL,
  value character varying(40) NOT NULL,
  CONSTRAINT io_pc_data_stage_one_equipped_items_lookup_io_pc_data_id_key_pk PRIMARY KEY (io_pc_data_id, key),
  CONSTRAINT io_pc_data_stage_one_equipped_items_lookup_key_fk FOREIGN KEY (key)
    REFERENCES avalon.equipment_slot (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_stage_one_equipped_items_lookup_value_fk FOREIGN KEY (value)
    REFERENCES avalon.io_item_data (name) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.io_pc_data_stage_two_equipped_items_lookup
-- lookup table for io_pc_datas and their associated stage_two_equipped_itemss.

DROP TABLE IF EXISTS avalon.io_pc_data_stage_two_equipped_items_lookup CASCADE;

CREATE TABLE avalon.io_pc_data_stage_two_equipped_items_lookup
(
  io_pc_data_id smallint NOT NULL,
  key character varying(40) NOT NULL,
  value character varying(40) NOT NULL,
  CONSTRAINT io_pc_data_stage_two_equipped_items_lookup_io_pc_data_id_key_pk PRIMARY KEY (io_pc_data_id, key),
  CONSTRAINT io_pc_data_stage_two_equipped_items_lookup_key_fk FOREIGN KEY (key)
    REFERENCES avalon.equipment_slot (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_stage_two_equipped_items_lookup_value_fk FOREIGN KEY (value)
    REFERENCES avalon.io_item_data (name) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.io_pc_data_stage_three_equipped_items_lookup
-- lookup table for io_pc_datas and their associated stage_three_equipped_itemss.

DROP TABLE IF EXISTS avalon.io_pc_data_stage_three_equipped_items_lookup CASCADE;

CREATE TABLE avalon.io_pc_data_stage_three_equipped_items_lookup
(
  io_pc_data_id smallint NOT NULL,
  key character varying(40) NOT NULL,
  value character varying(40) NOT NULL,
  CONSTRAINT io_pc_data_stage_three_equipped_items_lookup_io_pc_data_id_key_pk PRIMARY KEY (io_pc_data_id, key),
  CONSTRAINT io_pc_data_stage_three_equipped_items_lookup_key_fk FOREIGN KEY (key)
    REFERENCES avalon.equipment_slot (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_stage_three_equipped_items_lookup_value_fk FOREIGN KEY (value)
    REFERENCES avalon.io_item_data (name) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: avalon.io_pc_data_stage_four_equipped_items_lookup
-- lookup table for io_pc_datas and their associated stage_four_equipped_itemss.

DROP TABLE IF EXISTS avalon.io_pc_data_stage_four_equipped_items_lookup CASCADE;

CREATE TABLE avalon.io_pc_data_stage_four_equipped_items_lookup
(
  io_pc_data_id smallint NOT NULL,
  key character varying(40) NOT NULL,
  value character varying(40) NOT NULL,
  CONSTRAINT io_pc_data_stage_four_equipped_items_lookup_io_pc_data_id_key_pk PRIMARY KEY (io_pc_data_id, key),
  CONSTRAINT io_pc_data_stage_four_equipped_items_lookup_key_fk FOREIGN KEY (key)
    REFERENCES avalon.equipment_slot (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_stage_four_equipped_items_lookup_value_fk FOREIGN KEY (value)
    REFERENCES avalon.io_item_data (name) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

