-- Schema: tft
DROP SCHEMA IF EXISTS tft CASCADE;
CREATE SCHEMA tft;

-- Table: tft.attribute
-- TODO add table description

DROP TABLE IF EXISTS tft.attribute CASCADE;

CREATE SEQUENCE tft.attribute_id_seq MINVALUE 0;

CREATE TABLE tft.attribute
(
  attribute_id smallint DEFAULT nextval('tft.attribute_id_seq') NOT NULL,
  code character varying(4) NOT NULL,
  description text NOT NULL,
  name character varying(40) NOT NULL,
  CONSTRAINT attribute_attribute_id_pk PRIMARY KEY (attribute_id),
  CONSTRAINT attribute_code_un UNIQUE (code),
  CONSTRAINT attribute_description_un UNIQUE (description),
  CONSTRAINT attribute_name_un UNIQUE (name)
);

-- Table: tft.die
-- TODO add table description

DROP TABLE IF EXISTS tft.die CASCADE;

CREATE SEQUENCE tft.die_id_seq MINVALUE 0;

CREATE TABLE tft.die
(
  die_id smallint DEFAULT nextval('tft.die_id_seq') NOT NULL,
  code character varying(4) NOT NULL,
  value smallint NOT NULL,
  CONSTRAINT die_die_id_pk PRIMARY KEY (die_id),
  CONSTRAINT die_code_un UNIQUE (code),
  CONSTRAINT die_value_un UNIQUE (value)
);

-- Table: tft.dice
-- TODO add table description

DROP TABLE IF EXISTS tft.dice CASCADE;

CREATE SEQUENCE tft.dice_id_seq MINVALUE 0;

CREATE TABLE tft.dice
(
  dice_id smallint DEFAULT nextval('tft.dice_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  die smallint NOT NULL,
  number smallint NOT NULL,
  plus smallint,
  CONSTRAINT dice_dice_id_pk PRIMARY KEY (dice_id),
  CONSTRAINT dice_code_un UNIQUE (code),
  CONSTRAINT dice_die_fk FOREIGN KEY (die)
    REFERENCES tft.die (die_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: tft.equipment_element_type
-- TODO add table description

DROP TABLE IF EXISTS tft.equipment_element_type CASCADE;

CREATE SEQUENCE tft.equipment_element_type_id_seq MINVALUE 0;

CREATE TABLE tft.equipment_element_type
(
  equipment_element_type_id smallint DEFAULT nextval('tft.equipment_element_type_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  value smallint NOT NULL,
  CONSTRAINT equipment_element_type_equipment_element_type_id_pk PRIMARY KEY (equipment_element_type_id),
  CONSTRAINT equipment_element_type_code_un UNIQUE (code),
  CONSTRAINT equipment_element_type_value_un UNIQUE (value)
);

-- Table: tft.equipment_item_modifier
-- TODO add table description

DROP TABLE IF EXISTS tft.equipment_item_modifier CASCADE;

CREATE SEQUENCE tft.equipment_item_modifier_id_seq MINVALUE 0;

CREATE TABLE tft.equipment_item_modifier
(
  equipment_item_modifier_id smallint DEFAULT nextval('tft.equipment_item_modifier_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  percent boolean NOT NULL,
  special smallint,
  value decimal NOT NULL,
  CONSTRAINT equipment_item_modifier_equipment_item_modifier_id_pk PRIMARY KEY (equipment_item_modifier_id),
  CONSTRAINT equipment_item_modifier_code_un UNIQUE (code)
);

-- Table: tft.equipment_slot
-- TODO add table description

DROP TABLE IF EXISTS tft.equipment_slot CASCADE;

CREATE SEQUENCE tft.equipment_slot_id_seq MINVALUE 0;

CREATE TABLE tft.equipment_slot
(
  equipment_slot_id smallint DEFAULT nextval('tft.equipment_slot_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  value smallint NOT NULL,
  CONSTRAINT equipment_slot_equipment_slot_id_pk PRIMARY KEY (equipment_slot_id),
  CONSTRAINT equipment_slot_code_un UNIQUE (code)
);

-- Table: tft.gender
-- TODO add table description

DROP TABLE IF EXISTS tft.gender CASCADE;

CREATE SEQUENCE tft.gender_id_seq MINVALUE 0;

CREATE TABLE tft.gender
(
  gender_id smallint DEFAULT nextval('tft.gender_id_seq') NOT NULL,
  description text NOT NULL,
  name character varying(10) NOT NULL,
  subjective character varying(3) NOT NULL,
  objective character varying(3) NOT NULL,
  dependent_possessive character varying(3) NOT NULL,
  independent_possessive character varying(4) NOT NULL,
  reflexive character varying(7) NOT NULL,
  gender_offspring character varying(8) NOT NULL,
  gender_parent character varying(6) NOT NULL,
  CONSTRAINT gender_gender_id_pk PRIMARY KEY (gender_id),
  CONSTRAINT gender_description_un UNIQUE (description),
  CONSTRAINT gender_name_un UNIQUE (name),
  CONSTRAINT gender_subjective_un UNIQUE (subjective),
  CONSTRAINT gender_objective_un UNIQUE (objective),
  CONSTRAINT gender_dependent_possessive_un UNIQUE (dependent_possessive),
  CONSTRAINT gender_independent_possessive_un UNIQUE (independent_possessive),
  CONSTRAINT gender_reflexive_un UNIQUE (reflexive),
  CONSTRAINT gender_gender_offspring_un UNIQUE (gender_offspring),
  CONSTRAINT gender_gender_parent_un UNIQUE (gender_parent)
);

-- Table: tft.group
-- TODO add table description

DROP TABLE IF EXISTS tft.group CASCADE;

CREATE SEQUENCE tft.group_id_seq MINVALUE 0;

CREATE TABLE tft.group
(
  group_id smallint DEFAULT nextval('tft.group_id_seq') NOT NULL,
  name character varying(255) NOT NULL,
  CONSTRAINT group_group_id_pk PRIMARY KEY (group_id),
  CONSTRAINT group_name_un UNIQUE (name)
);

-- Table: tft.object_type
-- TODO add table description

DROP TABLE IF EXISTS tft.object_type CASCADE;

CREATE SEQUENCE tft.object_type_id_seq MINVALUE 0;

CREATE TABLE tft.object_type
(
  object_type_id smallint DEFAULT nextval('tft.object_type_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  flag smallint NOT NULL,
  CONSTRAINT object_type_object_type_id_pk PRIMARY KEY (object_type_id),
  CONSTRAINT object_type_code_un UNIQUE (code),
  CONSTRAINT object_type_flag_un UNIQUE (flag)
);

-- Table: tft.io_item_data
-- TODO add table description

DROP TABLE IF EXISTS tft.io_item_data CASCADE;

CREATE SEQUENCE tft.io_item_data_id_seq MINVALUE 0;

CREATE TABLE tft.io_item_data
(
  io_item_data_id smallint DEFAULT nextval('tft.io_item_data_id_seq') NOT NULL,
  st_requirement smallint NOT NULL,
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

-- Table: tft.io_item_data_groups_lookup
-- lookup table for io_item_datas and their associated groupss.

DROP TABLE IF EXISTS tft.io_item_data_groups_lookup CASCADE;

CREATE TABLE tft.io_item_data_groups_lookup
(
  io_item_data_id smallint NOT NULL,
  group_id smallint NOT NULL,
  CONSTRAINT io_item_data_groups_lookup_io_item_data_id_group_id_pk PRIMARY KEY (io_item_data_id, group_id),
  CONSTRAINT io_item_data_groups_lookup_io_item_data_id_fk FOREIGN KEY (io_item_data_id)
    REFERENCES tft.io_item_data (io_item_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_item_data_groups_lookup_group_id_fk FOREIGN KEY (group_id)
    REFERENCES tft.group (group_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: tft.io_item_data_types_lookup
-- lookup table for io_item_datas and their associated typess.

DROP TABLE IF EXISTS tft.io_item_data_types_lookup CASCADE;

CREATE TABLE tft.io_item_data_types_lookup
(
  io_item_data_id smallint NOT NULL,
  object_type_id smallint NOT NULL,
  CONSTRAINT io_item_data_types_lookup_io_item_data_id_object_type_id_pk PRIMARY KEY (io_item_data_id, object_type_id),
  CONSTRAINT io_item_data_types_lookup_io_item_data_id_fk FOREIGN KEY (io_item_data_id)
    REFERENCES tft.io_item_data (io_item_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_item_data_types_lookup_object_type_id_fk FOREIGN KEY (object_type_id)
    REFERENCES tft.object_type (object_type_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: tft.io_item_data_modifiers_lookup
-- lookup table for io_item_datas and their associated modifierss.

DROP TABLE IF EXISTS tft.io_item_data_modifiers_lookup CASCADE;

CREATE TABLE tft.io_item_data_modifiers_lookup
(
  io_item_data_id smallint NOT NULL,
  key character varying(40) NOT NULL,
  value character varying(40) NOT NULL,
  CONSTRAINT io_item_data_modifiers_lookup_io_item_data_id_key_pk PRIMARY KEY (io_item_data_id, key),
  CONSTRAINT io_item_data_modifiers_lookup_key_fk FOREIGN KEY (key)
    REFERENCES tft.equipment_element_type (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_item_data_modifiers_lookup_value_fk FOREIGN KEY (value)
    REFERENCES tft.equipment_item_modifier (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: tft.io_pc_data
-- TODO add table description

DROP TABLE IF EXISTS tft.io_pc_data CASCADE;

CREATE SEQUENCE tft.io_pc_data_id_seq MINVALUE 0;

CREATE TABLE tft.io_pc_data
(
  io_pc_data_id smallint DEFAULT nextval('tft.io_pc_data_id_seq') NOT NULL,
  bags smallint NOT NULL,
  flags bigint,
  gender smallint NOT NULL,
  gold decimal NOT NULL,
  interface_flags smallint,
  internal_script text,
  level smallint NOT NULL,
  name character varying(40) NOT NULL,
  xp bigint NOT NULL,
  CONSTRAINT io_pc_data_io_pc_data_id_pk PRIMARY KEY (io_pc_data_id),
  CONSTRAINT io_pc_data_gender_fk FOREIGN KEY (gender)
    REFERENCES tft.gender (gender_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: tft.io_pc_data_groups_lookup
-- lookup table for io_pc_datas and their associated groupss.

DROP TABLE IF EXISTS tft.io_pc_data_groups_lookup CASCADE;

CREATE TABLE tft.io_pc_data_groups_lookup
(
  io_pc_data_id smallint NOT NULL,
  group_id smallint NOT NULL,
  CONSTRAINT io_pc_data_groups_lookup_io_pc_data_id_group_id_pk PRIMARY KEY (io_pc_data_id, group_id),
  CONSTRAINT io_pc_data_groups_lookup_io_pc_data_id_fk FOREIGN KEY (io_pc_data_id)
    REFERENCES tft.io_pc_data (io_pc_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_groups_lookup_group_id_fk FOREIGN KEY (group_id)
    REFERENCES tft.group (group_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: tft.io_pc_data_inventory_items_lookup
-- lookup table for io_pc_datas and their associated inventory_itemss.

DROP TABLE IF EXISTS tft.io_pc_data_inventory_items_lookup CASCADE;

CREATE TABLE tft.io_pc_data_inventory_items_lookup
(
  io_pc_data_id smallint NOT NULL,
  io_item_data_id smallint NOT NULL,
  CONSTRAINT io_pc_data_inventory_items_lookup_io_pc_data_id_io_item_data_id_pk PRIMARY KEY (io_pc_data_id, io_item_data_id),
  CONSTRAINT io_pc_data_inventory_items_lookup_io_pc_data_id_fk FOREIGN KEY (io_pc_data_id)
    REFERENCES tft.io_pc_data (io_pc_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_inventory_items_lookup_io_item_data_id_fk FOREIGN KEY (io_item_data_id)
    REFERENCES tft.io_item_data (io_item_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: tft.io_pc_data_keyring_lookup
-- lookup table for io_pc_datas and their associated keyring.

DROP TABLE IF EXISTS tft.io_pc_data_keyring_lookup CASCADE;

CREATE TABLE tft.io_pc_data_keyring_lookup
(
  io_pc_data_id smallint NOT NULL,
  keyring character varying(40) NOT NULL,
  CONSTRAINT io_pc_data_keyring_lookup_io_pc_data_id_keyring_pk PRIMARY KEY (io_pc_data_id, keyring),
  CONSTRAINT io_pc_data_keyring_lookup_io_pc_data_id_fk FOREIGN KEY (io_pc_data_id)
    REFERENCES tft.io_pc_data (io_pc_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: tft.io_pc_data_attributes_lookup
-- lookup table for io_pc_datas and their associated attributess.

DROP TABLE IF EXISTS tft.io_pc_data_attributes_lookup CASCADE;

CREATE TABLE tft.io_pc_data_attributes_lookup
(
  io_pc_data_id smallint NOT NULL,
  key character varying(3) NOT NULL,
  value smallint NOT NULL,
  CONSTRAINT io_pc_data_attributes_lookup_io_pc_data_id_key_pk PRIMARY KEY (io_pc_data_id, key),
  CONSTRAINT io_pc_data_attributes_lookup_key_fk FOREIGN KEY (key)
    REFERENCES tft.attribute (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: tft.io_pc_data_equipped_items_lookup
-- lookup table for io_pc_datas and their associated equipped_itemss.

DROP TABLE IF EXISTS tft.io_pc_data_equipped_items_lookup CASCADE;

CREATE TABLE tft.io_pc_data_equipped_items_lookup
(
  io_pc_data_id smallint NOT NULL,
  key character varying(40) NOT NULL,
  value character varying(40) NOT NULL,
  CONSTRAINT io_pc_data_equipped_items_lookup_io_pc_data_id_key_pk PRIMARY KEY (io_pc_data_id, key),
  CONSTRAINT io_pc_data_equipped_items_lookup_key_fk FOREIGN KEY (key)
    REFERENCES tft.equipment_slot (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_equipped_items_lookup_value_fk FOREIGN KEY (value)
    REFERENCES tft.io_item_data (name) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

