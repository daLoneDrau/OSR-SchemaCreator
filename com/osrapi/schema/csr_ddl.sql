-- Schema: csr
DROP SCHEMA IF EXISTS csr CASCADE;
CREATE SCHEMA csr;

-- Table: csr.attribute
-- TODO add table description

DROP TABLE IF EXISTS csr.attribute CASCADE;

CREATE SEQUENCE csr.attribute_id_seq MINVALUE 0;

CREATE TABLE csr.attribute
(
  attribute_id smallint DEFAULT nextval('csr.attribute_id_seq') NOT NULL,
  code character varying(4) NOT NULL,
  description text NOT NULL,
  name character varying(40) NOT NULL,
  CONSTRAINT attribute_attribute_id_pk PRIMARY KEY (attribute_id),
  CONSTRAINT attribute_code_un UNIQUE (code),
  CONSTRAINT attribute_description_un UNIQUE (description),
  CONSTRAINT attribute_name_un UNIQUE (name)
);

-- Table: csr.birth_aspect
-- TODO add table description

DROP TABLE IF EXISTS csr.birth_aspect CASCADE;

CREATE SEQUENCE csr.birth_aspect_id_seq MINVALUE 0;

CREATE TABLE csr.birth_aspect
(
  birth_aspect_id smallint DEFAULT nextval('csr.birth_aspect_id_seq') NOT NULL,
  code character varying(20) NOT NULL,
  title character varying(20) NOT NULL,
  roll_min smallint NOT NULL,
  roll_max smallint NOT NULL,
  points_adjustment smallint NOT NULL,
  CONSTRAINT birth_aspect_birth_aspect_id_pk PRIMARY KEY (birth_aspect_id),
  CONSTRAINT birth_aspect_code_un UNIQUE (code),
  CONSTRAINT birth_aspect_title_un UNIQUE (title),
  CONSTRAINT birth_aspect_roll_min_un UNIQUE (roll_min),
  CONSTRAINT birth_aspect_roll_max_un UNIQUE (roll_max)
);

-- Table: csr.equipment_element_type
-- TODO add table description

DROP TABLE IF EXISTS csr.equipment_element_type CASCADE;

CREATE SEQUENCE csr.equipment_element_type_id_seq MINVALUE 0;

CREATE TABLE csr.equipment_element_type
(
  equipment_element_type_id smallint DEFAULT nextval('csr.equipment_element_type_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  value smallint NOT NULL,
  CONSTRAINT equipment_element_type_equipment_element_type_id_pk PRIMARY KEY (equipment_element_type_id),
  CONSTRAINT equipment_element_type_code_un UNIQUE (code),
  CONSTRAINT equipment_element_type_value_un UNIQUE (value)
);

-- Table: csr.equipment_item_modifier
-- TODO add table description

DROP TABLE IF EXISTS csr.equipment_item_modifier CASCADE;

CREATE SEQUENCE csr.equipment_item_modifier_id_seq MINVALUE 0;

CREATE TABLE csr.equipment_item_modifier
(
  equipment_item_modifier_id smallint DEFAULT nextval('csr.equipment_item_modifier_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  percent boolean NOT NULL,
  special smallint,
  value decimal NOT NULL,
  CONSTRAINT equipment_item_modifier_equipment_item_modifier_id_pk PRIMARY KEY (equipment_item_modifier_id),
  CONSTRAINT equipment_item_modifier_code_un UNIQUE (code)
);

-- Table: csr.equipment_slot
-- TODO add table description

DROP TABLE IF EXISTS csr.equipment_slot CASCADE;

CREATE SEQUENCE csr.equipment_slot_id_seq MINVALUE 0;

CREATE TABLE csr.equipment_slot
(
  equipment_slot_id smallint DEFAULT nextval('csr.equipment_slot_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  value smallint NOT NULL,
  CONSTRAINT equipment_slot_equipment_slot_id_pk PRIMARY KEY (equipment_slot_id),
  CONSTRAINT equipment_slot_code_un UNIQUE (code)
);

-- Table: csr.gender
-- TODO add table description

DROP TABLE IF EXISTS csr.gender CASCADE;

CREATE SEQUENCE csr.gender_id_seq MINVALUE 0;

CREATE TABLE csr.gender
(
  gender_id smallint DEFAULT nextval('csr.gender_id_seq') NOT NULL,
  description text NOT NULL,
  name character varying(10) NOT NULL,
  subjective character varying(3) NOT NULL,
  objective character varying(3) NOT NULL,
  dependent_possessive character varying(3) NOT NULL,
  independent_possessive character varying(4) NOT NULL,
  reflexive character varying(7) NOT NULL,
  CONSTRAINT gender_gender_id_pk PRIMARY KEY (gender_id),
  CONSTRAINT gender_description_un UNIQUE (description),
  CONSTRAINT gender_name_un UNIQUE (name),
  CONSTRAINT gender_subjective_un UNIQUE (subjective),
  CONSTRAINT gender_objective_un UNIQUE (objective),
  CONSTRAINT gender_dependent_possessive_un UNIQUE (dependent_possessive),
  CONSTRAINT gender_independent_possessive_un UNIQUE (independent_possessive),
  CONSTRAINT gender_reflexive_un UNIQUE (reflexive)
);

-- Table: csr.group
-- TODO add table description

DROP TABLE IF EXISTS csr.group CASCADE;

CREATE SEQUENCE csr.group_id_seq MINVALUE 0;

CREATE TABLE csr.group
(
  group_id smallint DEFAULT nextval('csr.group_id_seq') NOT NULL,
  name character varying(255) NOT NULL,
  CONSTRAINT group_group_id_pk PRIMARY KEY (group_id),
  CONSTRAINT group_name_un UNIQUE (name)
);

-- Table: csr.object_type
-- TODO add table description

DROP TABLE IF EXISTS csr.object_type CASCADE;

CREATE SEQUENCE csr.object_type_id_seq MINVALUE 0;

CREATE TABLE csr.object_type
(
  object_type_id smallint DEFAULT nextval('csr.object_type_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  flag smallint NOT NULL,
  CONSTRAINT object_type_object_type_id_pk PRIMARY KEY (object_type_id),
  CONSTRAINT object_type_code_un UNIQUE (code),
  CONSTRAINT object_type_flag_un UNIQUE (flag)
);

-- Table: csr.io_item_data
-- TODO add table description

DROP TABLE IF EXISTS csr.io_item_data CASCADE;

CREATE SEQUENCE csr.io_item_data_id_seq MINVALUE 0;

CREATE TABLE csr.io_item_data
(
  io_item_data_id smallint DEFAULT nextval('csr.io_item_data_id_seq') NOT NULL,
  count smallint,
  description text NOT NULL,
  food_value smallint,
  internal_script character varying(255) NOT NULL,
  left_ring boolean,
  light_value smallint,
  max_owned smallint,
  name character varying(40) NOT NULL,
  price decimal NOT NULL,
  ring_type smallint,
  stack_size smallint NOT NULL,
  steal_value smallint,
  title character varying(40) NOT NULL,
  weight decimal NOT NULL,
  CONSTRAINT io_item_data_io_item_data_id_pk PRIMARY KEY (io_item_data_id),
  CONSTRAINT io_item_data_name_un UNIQUE (name)
);

-- Table: csr.io_item_data_groups_lookup
-- lookup table for io_item_datas and their associated groupss.

DROP TABLE IF EXISTS csr.io_item_data_groups_lookup CASCADE;

CREATE TABLE csr.io_item_data_groups_lookup
(
  io_item_data_id smallint NOT NULL,
  group_id smallint NOT NULL,
  CONSTRAINT io_item_data_groups_lookup_io_item_data_id_group_id_pk PRIMARY KEY (io_item_data_id, group_id),
  CONSTRAINT io_item_data_groups_lookup_io_item_data_id_fk FOREIGN KEY (io_item_data_id)
    REFERENCES csr.io_item_data (io_item_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_item_data_groups_lookup_group_id_fk FOREIGN KEY (group_id)
    REFERENCES csr.group (group_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: csr.io_item_data_types_lookup
-- lookup table for io_item_datas and their associated typess.

DROP TABLE IF EXISTS csr.io_item_data_types_lookup CASCADE;

CREATE TABLE csr.io_item_data_types_lookup
(
  io_item_data_id smallint NOT NULL,
  object_type_id smallint NOT NULL,
  CONSTRAINT io_item_data_types_lookup_io_item_data_id_object_type_id_pk PRIMARY KEY (io_item_data_id, object_type_id),
  CONSTRAINT io_item_data_types_lookup_io_item_data_id_fk FOREIGN KEY (io_item_data_id)
    REFERENCES csr.io_item_data (io_item_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_item_data_types_lookup_object_type_id_fk FOREIGN KEY (object_type_id)
    REFERENCES csr.object_type (object_type_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: csr.io_item_data_modifiers_lookup
-- lookup table for io_item_datas and their associated modifierss.

DROP TABLE IF EXISTS csr.io_item_data_modifiers_lookup CASCADE;

CREATE TABLE csr.io_item_data_modifiers_lookup
(
  io_item_data_id smallint NOT NULL,
  key character varying(40) NOT NULL,
  value character varying(40) NOT NULL,
  CONSTRAINT io_item_data_modifiers_lookup_io_item_data_id_key_pk PRIMARY KEY (io_item_data_id, key),
  CONSTRAINT io_item_data_modifiers_lookup_key_fk FOREIGN KEY (key)
    REFERENCES csr.equipment_element_type (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_item_data_modifiers_lookup_value_fk FOREIGN KEY (value)
    REFERENCES csr.equipment_item_modifier (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: csr.race
-- TODO add table description

DROP TABLE IF EXISTS csr.race CASCADE;

CREATE SEQUENCE csr.race_id_seq MINVALUE 0;

CREATE TABLE csr.race
(
  race_id smallint DEFAULT nextval('csr.race_id_seq') NOT NULL,
  name character varying(255) NOT NULL,
  CONSTRAINT race_race_id_pk PRIMARY KEY (race_id),
  CONSTRAINT race_name_un UNIQUE (name)
);

-- Table: csr.social_class
-- TODO add table description

DROP TABLE IF EXISTS csr.social_class CASCADE;

CREATE SEQUENCE csr.social_class_id_seq MINVALUE 0;

CREATE TABLE csr.social_class
(
  social_class_id smallint DEFAULT nextval('csr.social_class_id_seq') NOT NULL,
  name character varying(20) NOT NULL,
  title character varying(20) NOT NULL,
  roll_min smallint NOT NULL,
  roll_max smallint NOT NULL,
  points_adjustment smallint NOT NULL,
  CONSTRAINT social_class_social_class_id_pk PRIMARY KEY (social_class_id),
  CONSTRAINT social_class_name_un UNIQUE (name),
  CONSTRAINT social_class_title_un UNIQUE (title),
  CONSTRAINT social_class_roll_min_un UNIQUE (roll_min),
  CONSTRAINT social_class_roll_max_un UNIQUE (roll_max)
);

-- Table: csr.io_pc_data
-- TODO add table description

DROP TABLE IF EXISTS csr.io_pc_data CASCADE;

CREATE SEQUENCE csr.io_pc_data_id_seq MINVALUE 0;

CREATE TABLE csr.io_pc_data
(
  io_pc_data_id smallint DEFAULT nextval('csr.io_pc_data_id_seq') NOT NULL,
  aspect smallint NOT NULL,
  bags smallint NOT NULL,
  flags bigint,
  gender smallint NOT NULL,
  gold decimal NOT NULL,
  interface_flags smallint,
  internal_script text,
  level smallint NOT NULL,
  name character varying(40) NOT NULL,
  race smallint NOT NULL,
  social_class smallint NOT NULL,
  xp bigint NOT NULL,
  CONSTRAINT io_pc_data_io_pc_data_id_pk PRIMARY KEY (io_pc_data_id),
  CONSTRAINT io_pc_data_aspect_fk FOREIGN KEY (aspect)
    REFERENCES csr.birth_aspect (birth_aspect_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_gender_fk FOREIGN KEY (gender)
    REFERENCES csr.gender (gender_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_race_fk FOREIGN KEY (race)
    REFERENCES csr.race (race_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_social_class_fk FOREIGN KEY (social_class)
    REFERENCES csr.social_class (social_class_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: csr.io_pc_data_groups_lookup
-- lookup table for io_pc_datas and their associated groupss.

DROP TABLE IF EXISTS csr.io_pc_data_groups_lookup CASCADE;

CREATE TABLE csr.io_pc_data_groups_lookup
(
  io_pc_data_id smallint NOT NULL,
  group_id smallint NOT NULL,
  CONSTRAINT io_pc_data_groups_lookup_io_pc_data_id_group_id_pk PRIMARY KEY (io_pc_data_id, group_id),
  CONSTRAINT io_pc_data_groups_lookup_io_pc_data_id_fk FOREIGN KEY (io_pc_data_id)
    REFERENCES csr.io_pc_data (io_pc_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_groups_lookup_group_id_fk FOREIGN KEY (group_id)
    REFERENCES csr.group (group_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: csr.io_pc_data_inventory_items_lookup
-- lookup table for io_pc_datas and their associated inventory_itemss.

DROP TABLE IF EXISTS csr.io_pc_data_inventory_items_lookup CASCADE;

CREATE TABLE csr.io_pc_data_inventory_items_lookup
(
  io_pc_data_id smallint NOT NULL,
  io_item_data_id smallint NOT NULL,
  CONSTRAINT io_pc_data_inventory_items_lookup_io_pc_data_id_io_item_data_id_pk PRIMARY KEY (io_pc_data_id, io_item_data_id),
  CONSTRAINT io_pc_data_inventory_items_lookup_io_pc_data_id_fk FOREIGN KEY (io_pc_data_id)
    REFERENCES csr.io_pc_data (io_pc_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_inventory_items_lookup_io_item_data_id_fk FOREIGN KEY (io_item_data_id)
    REFERENCES csr.io_item_data (io_item_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: csr.io_pc_data_keyring_lookup
-- lookup table for io_pc_datas and their associated keyring.

DROP TABLE IF EXISTS csr.io_pc_data_keyring_lookup CASCADE;

CREATE TABLE csr.io_pc_data_keyring_lookup
(
  io_pc_data_id smallint NOT NULL,
  keyring character varying(40) NOT NULL,
  CONSTRAINT io_pc_data_keyring_lookup_io_pc_data_id_keyring_pk PRIMARY KEY (io_pc_data_id, keyring),
  CONSTRAINT io_pc_data_keyring_lookup_io_pc_data_id_fk FOREIGN KEY (io_pc_data_id)
    REFERENCES csr.io_pc_data (io_pc_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: csr.io_pc_data_attributes_lookup
-- lookup table for io_pc_datas and their associated attributess.

DROP TABLE IF EXISTS csr.io_pc_data_attributes_lookup CASCADE;

CREATE TABLE csr.io_pc_data_attributes_lookup
(
  io_pc_data_id smallint NOT NULL,
  key character varying(3) NOT NULL,
  value smallint NOT NULL,
  CONSTRAINT io_pc_data_attributes_lookup_io_pc_data_id_key_pk PRIMARY KEY (io_pc_data_id, key),
  CONSTRAINT io_pc_data_attributes_lookup_key_fk FOREIGN KEY (key)
    REFERENCES csr.attribute (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: csr.io_pc_data_equipped_items_lookup
-- lookup table for io_pc_datas and their associated equipped_itemss.

DROP TABLE IF EXISTS csr.io_pc_data_equipped_items_lookup CASCADE;

CREATE TABLE csr.io_pc_data_equipped_items_lookup
(
  io_pc_data_id smallint NOT NULL,
  key character varying(40) NOT NULL,
  value character varying(40) NOT NULL,
  CONSTRAINT io_pc_data_equipped_items_lookup_io_pc_data_id_key_pk PRIMARY KEY (io_pc_data_id, key),
  CONSTRAINT io_pc_data_equipped_items_lookup_key_fk FOREIGN KEY (key)
    REFERENCES csr.equipment_slot (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_equipped_items_lookup_value_fk FOREIGN KEY (value)
    REFERENCES csr.io_item_data (name) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

