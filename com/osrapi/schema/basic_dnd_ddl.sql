-- Schema: basic_dnd
DROP SCHEMA IF EXISTS basic_dnd CASCADE;
CREATE SCHEMA basic_dnd;

-- Table: basic_dnd.attribute
-- TODO add table description

DROP TABLE IF EXISTS basic_dnd.attribute CASCADE;

CREATE SEQUENCE basic_dnd.attribute_id_seq MINVALUE 0;

CREATE TABLE basic_dnd.attribute
(
  attribute_id smallint DEFAULT nextval('basic_dnd.attribute_id_seq') NOT NULL,
  code character varying(3) NOT NULL,
  description text NOT NULL,
  name character varying(40) NOT NULL,
  CONSTRAINT attribute_attribute_id_pk PRIMARY KEY (attribute_id),
  CONSTRAINT attribute_code_un UNIQUE (code),
  CONSTRAINT attribute_description_un UNIQUE (description),
  CONSTRAINT attribute_name_un UNIQUE (name)
);

-- Table: basic_dnd.die
-- TODO add table description

DROP TABLE IF EXISTS basic_dnd.die CASCADE;

CREATE SEQUENCE basic_dnd.die_id_seq MINVALUE 0;

CREATE TABLE basic_dnd.die
(
  die_id smallint DEFAULT nextval('basic_dnd.die_id_seq') NOT NULL,
  code character varying(4) NOT NULL,
  value smallint NOT NULL,
  CONSTRAINT die_die_id_pk PRIMARY KEY (die_id),
  CONSTRAINT die_code_un UNIQUE (code),
  CONSTRAINT die_value_un UNIQUE (value)
);

-- Table: basic_dnd.dice
-- TODO add table description

DROP TABLE IF EXISTS basic_dnd.dice CASCADE;

CREATE SEQUENCE basic_dnd.dice_id_seq MINVALUE 0;

CREATE TABLE basic_dnd.dice
(
  dice_id smallint DEFAULT nextval('basic_dnd.dice_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  die smallint NOT NULL,
  number smallint NOT NULL,
  CONSTRAINT dice_dice_id_pk PRIMARY KEY (dice_id),
  CONSTRAINT dice_code_un UNIQUE (code),
  CONSTRAINT dice_die_fk FOREIGN KEY (die)
    REFERENCES basic_dnd.die (die_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: basic_dnd.equipment_element_type
-- TODO add table description

DROP TABLE IF EXISTS basic_dnd.equipment_element_type CASCADE;

CREATE SEQUENCE basic_dnd.equipment_element_type_id_seq MINVALUE 0;

CREATE TABLE basic_dnd.equipment_element_type
(
  equipment_element_type_id smallint DEFAULT nextval('basic_dnd.equipment_element_type_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  value smallint NOT NULL,
  CONSTRAINT equipment_element_type_equipment_element_type_id_pk PRIMARY KEY (equipment_element_type_id),
  CONSTRAINT equipment_element_type_code_un UNIQUE (code),
  CONSTRAINT equipment_element_type_value_un UNIQUE (value)
);

-- Table: basic_dnd.equipment_item_modifier
-- TODO add table description

DROP TABLE IF EXISTS basic_dnd.equipment_item_modifier CASCADE;

CREATE SEQUENCE basic_dnd.equipment_item_modifier_id_seq MINVALUE 0;

CREATE TABLE basic_dnd.equipment_item_modifier
(
  equipment_item_modifier_id smallint DEFAULT nextval('basic_dnd.equipment_item_modifier_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  percent boolean NOT NULL,
  special smallint NOT NULL,
  value decimal NOT NULL,
  CONSTRAINT equipment_item_modifier_equipment_item_modifier_id_pk PRIMARY KEY (equipment_item_modifier_id),
  CONSTRAINT equipment_item_modifier_code_un UNIQUE (code)
);

-- Table: basic_dnd.event
-- TODO add table description

DROP TABLE IF EXISTS basic_dnd.event CASCADE;

CREATE SEQUENCE basic_dnd.event_id_seq MINVALUE 0;

CREATE TABLE basic_dnd.event
(
  event_id smallint DEFAULT nextval('basic_dnd.event_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  CONSTRAINT event_event_id_pk PRIMARY KEY (event_id),
  CONSTRAINT event_code_un UNIQUE (code)
);

-- Table: basic_dnd.gender
-- TODO add table description

DROP TABLE IF EXISTS basic_dnd.gender CASCADE;

CREATE SEQUENCE basic_dnd.gender_id_seq MINVALUE 0;

CREATE TABLE basic_dnd.gender
(
  gender_id smallint DEFAULT nextval('basic_dnd.gender_id_seq') NOT NULL,
  description text NOT NULL,
  name character varying(10) NOT NULL,
  CONSTRAINT gender_gender_id_pk PRIMARY KEY (gender_id),
  CONSTRAINT gender_description_un UNIQUE (description),
  CONSTRAINT gender_name_un UNIQUE (name)
);

-- Table: basic_dnd.group
-- TODO add table description

DROP TABLE IF EXISTS basic_dnd.group CASCADE;

CREATE SEQUENCE basic_dnd.group_id_seq MINVALUE 0;

CREATE TABLE basic_dnd.group
(
  group_id smallint DEFAULT nextval('basic_dnd.group_id_seq') NOT NULL,
  name character varying(255) NOT NULL,
  CONSTRAINT group_group_id_pk PRIMARY KEY (group_id),
  CONSTRAINT group_name_un UNIQUE (name)
);

-- Table: basic_dnd.object_type
-- TODO add table description

DROP TABLE IF EXISTS basic_dnd.object_type CASCADE;

CREATE SEQUENCE basic_dnd.object_type_id_seq MINVALUE 0;

CREATE TABLE basic_dnd.object_type
(
  object_type_id smallint DEFAULT nextval('basic_dnd.object_type_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  flag smallint NOT NULL,
  CONSTRAINT object_type_object_type_id_pk PRIMARY KEY (object_type_id),
  CONSTRAINT object_type_code_un UNIQUE (code),
  CONSTRAINT object_type_flag_un UNIQUE (flag)
);

-- Table: basic_dnd.io_item_data
-- TODO add table description

DROP TABLE IF EXISTS basic_dnd.io_item_data CASCADE;

CREATE SEQUENCE basic_dnd.io_item_data_id_seq MINVALUE 0;

CREATE TABLE basic_dnd.io_item_data
(
  io_item_data_id smallint DEFAULT nextval('basic_dnd.io_item_data_id_seq') NOT NULL,
  count smallint NOT NULL,
  damages smallint NOT NULL,
  description text NOT NULL,
  food_value smallint,
  internal_script text,
  item_name character varying(40) NOT NULL,
  left_ring boolean,
  light_value smallint,
  max_owned smallint NOT NULL,
  price decimal NOT NULL,
  ring_type smallint NOT NULL,
  stack_size smallint NOT NULL,
  steal_value smallint,
  weight decimal NOT NULL,
  CONSTRAINT io_item_data_io_item_data_id_pk PRIMARY KEY (io_item_data_id),
  CONSTRAINT io_item_data_damages_fk FOREIGN KEY (damages)
    REFERENCES basic_dnd.dice (dice_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: basic_dnd.io_item_data_groups_lookup
-- lookup table for io_item_datas and their associated groupss.

DROP TABLE IF EXISTS basic_dnd.io_item_data_groups_lookup CASCADE;

CREATE TABLE basic_dnd.io_item_data_groups_lookup
(
  io_item_data_id smallint NOT NULL,
  group_id smallint NOT NULL,
  CONSTRAINT io_item_data_groups_lookup_io_item_data_id_group_id_pk PRIMARY KEY (io_item_data_id, group_id),
  CONSTRAINT io_item_data_groups_lookup_io_item_data_id_fk FOREIGN KEY (io_item_data_id)
    REFERENCES basic_dnd.io_item_data (io_item_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_item_data_groups_lookup_group_id_fk FOREIGN KEY (group_id)
    REFERENCES basic_dnd.group (group_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: basic_dnd.io_item_data_types_lookup
-- lookup table for io_item_datas and their associated typess.

DROP TABLE IF EXISTS basic_dnd.io_item_data_types_lookup CASCADE;

CREATE TABLE basic_dnd.io_item_data_types_lookup
(
  io_item_data_id smallint NOT NULL,
  object_type_id smallint NOT NULL,
  CONSTRAINT io_item_data_types_lookup_io_item_data_id_object_type_id_pk PRIMARY KEY (io_item_data_id, object_type_id),
  CONSTRAINT io_item_data_types_lookup_io_item_data_id_fk FOREIGN KEY (io_item_data_id)
    REFERENCES basic_dnd.io_item_data (io_item_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_item_data_types_lookup_object_type_id_fk FOREIGN KEY (object_type_id)
    REFERENCES basic_dnd.object_type (object_type_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: basic_dnd.io_item_data_modifiers_lookup
-- lookup table for io_item_datas and their associated modifierss.

DROP TABLE IF EXISTS basic_dnd.io_item_data_modifiers_lookup CASCADE;

CREATE TABLE basic_dnd.io_item_data_modifiers_lookup
(
  io_item_data_id smallint NOT NULL,
  key character varying(40) NOT NULL,
  value character varying(40) NOT NULL,
  CONSTRAINT io_item_data_modifiers_lookup_io_item_data_id_key_pk PRIMARY KEY (io_item_data_id, key),
  CONSTRAINT io_item_data_modifiers_lookup_key_fk FOREIGN KEY (key)
    REFERENCES basic_dnd.equipment_element_type (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_item_data_modifiers_lookup_value_fk FOREIGN KEY (value)
    REFERENCES basic_dnd.equipment_item_modifier (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: basic_dnd.script_action_type
-- TODO add table description

DROP TABLE IF EXISTS basic_dnd.script_action_type CASCADE;

CREATE SEQUENCE basic_dnd.script_action_type_id_seq MINVALUE 0;

CREATE TABLE basic_dnd.script_action_type
(
  script_action_type_id smallint DEFAULT nextval('basic_dnd.script_action_type_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  CONSTRAINT script_action_type_script_action_type_id_pk PRIMARY KEY (script_action_type_id),
  CONSTRAINT script_action_type_code_un UNIQUE (code)
);

-- Table: basic_dnd.script_action
-- TODO add table description

DROP TABLE IF EXISTS basic_dnd.script_action CASCADE;

CREATE SEQUENCE basic_dnd.script_action_id_seq MINVALUE 0;

CREATE TABLE basic_dnd.script_action
(
  script_action_id smallint DEFAULT nextval('basic_dnd.script_action_id_seq') NOT NULL,
  name character varying(40) NOT NULL,
  type character varying(40) NOT NULL,
  CONSTRAINT script_action_script_action_id_pk PRIMARY KEY (script_action_id),
  CONSTRAINT script_action_name_un UNIQUE (name),
  CONSTRAINT script_action_type_fk FOREIGN KEY (type)
    REFERENCES basic_dnd.script_action_type (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: basic_dnd.script_bundle
-- TODO add table description

DROP TABLE IF EXISTS basic_dnd.script_bundle CASCADE;

CREATE SEQUENCE basic_dnd.script_bundle_id_seq MINVALUE 0;

CREATE TABLE basic_dnd.script_bundle
(
  script_bundle_id smallint DEFAULT nextval('basic_dnd.script_bundle_id_seq') NOT NULL,
  name character varying(50) NOT NULL,
  CONSTRAINT script_bundle_script_bundle_id_pk PRIMARY KEY (script_bundle_id),
  CONSTRAINT script_bundle_name_un UNIQUE (name)
);

-- Table: basic_dnd.script_bundle_scripts_lookup
-- lookup table for script_bundles and their associated scriptss.

DROP TABLE IF EXISTS basic_dnd.script_bundle_scripts_lookup CASCADE;

CREATE TABLE basic_dnd.script_bundle_scripts_lookup
(
  script_bundle_id smallint NOT NULL,
  script_action_id smallint NOT NULL,
  CONSTRAINT script_bundle_scripts_lookup_script_bundle_id_script_action_id_pk PRIMARY KEY (script_bundle_id, script_action_id),
  CONSTRAINT script_bundle_scripts_lookup_script_bundle_id_fk FOREIGN KEY (script_bundle_id)
    REFERENCES basic_dnd.script_bundle (script_bundle_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT script_bundle_scripts_lookup_script_action_id_fk FOREIGN KEY (script_action_id)
    REFERENCES basic_dnd.script_action (script_action_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: basic_dnd.io_pc_data
-- TODO add table description

DROP TABLE IF EXISTS basic_dnd.io_pc_data CASCADE;

CREATE SEQUENCE basic_dnd.io_pc_data_id_seq MINVALUE 0;

CREATE TABLE basic_dnd.io_pc_data
(
  io_pc_data_id smallint DEFAULT nextval('basic_dnd.io_pc_data_id_seq') NOT NULL,
  bags smallint NOT NULL,
  flags bigint,
  gender smallint NOT NULL,
  gold decimal NOT NULL,
  interface_flags smallint NOT NULL,
  internal_script text,
  level smallint NOT NULL,
  xp bigint NOT NULL,
  CONSTRAINT io_pc_data_io_pc_data_id_pk PRIMARY KEY (io_pc_data_id),
  CONSTRAINT io_pc_data_gender_fk FOREIGN KEY (gender)
    REFERENCES basic_dnd.gender (gender_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: basic_dnd.io_pc_data_equipped_items_lookup
-- lookup table for io_pc_datas and their associated equippedItems.

DROP TABLE IF EXISTS basic_dnd.io_pc_data_equipped_items_lookup CASCADE;

CREATE TABLE basic_dnd.io_pc_data_equipped_items_lookup
(
  io_pc_data_id smallint NOT NULL,
  equipped_items smallint NOT NULL,
  CONSTRAINT io_pc_data_equipped_items_lookup_io_pc_data_id_equipped_items_pk PRIMARY KEY (io_pc_data_id, equipped_items),
  CONSTRAINT io_pc_data_equipped_items_lookup_io_pc_data_id_fk FOREIGN KEY (io_pc_data_id)
    REFERENCES basic_dnd.io_pc_data (io_pc_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: basic_dnd.io_pc_data_groups_lookup
-- lookup table for io_pc_datas and their associated groupss.

DROP TABLE IF EXISTS basic_dnd.io_pc_data_groups_lookup CASCADE;

CREATE TABLE basic_dnd.io_pc_data_groups_lookup
(
  io_pc_data_id smallint NOT NULL,
  group_id smallint NOT NULL,
  CONSTRAINT io_pc_data_groups_lookup_io_pc_data_id_group_id_pk PRIMARY KEY (io_pc_data_id, group_id),
  CONSTRAINT io_pc_data_groups_lookup_io_pc_data_id_fk FOREIGN KEY (io_pc_data_id)
    REFERENCES basic_dnd.io_pc_data (io_pc_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_groups_lookup_group_id_fk FOREIGN KEY (group_id)
    REFERENCES basic_dnd.group (group_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: basic_dnd.io_pc_data_keyring_lookup
-- lookup table for io_pc_datas and their associated keyring.

DROP TABLE IF EXISTS basic_dnd.io_pc_data_keyring_lookup CASCADE;

CREATE TABLE basic_dnd.io_pc_data_keyring_lookup
(
  io_pc_data_id smallint NOT NULL,
  keyring character varying(40) NOT NULL,
  CONSTRAINT io_pc_data_keyring_lookup_io_pc_data_id_keyring_pk PRIMARY KEY (io_pc_data_id, keyring),
  CONSTRAINT io_pc_data_keyring_lookup_io_pc_data_id_fk FOREIGN KEY (io_pc_data_id)
    REFERENCES basic_dnd.io_pc_data (io_pc_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: basic_dnd.io_pc_data_name_lookup
-- lookup table for io_pc_datas and their associated name.

DROP TABLE IF EXISTS basic_dnd.io_pc_data_name_lookup CASCADE;

CREATE TABLE basic_dnd.io_pc_data_name_lookup
(
  io_pc_data_id smallint NOT NULL,
  name character varying(40) NOT NULL,
  CONSTRAINT io_pc_data_name_lookup_io_pc_data_id_name_pk PRIMARY KEY (io_pc_data_id, name),
  CONSTRAINT io_pc_data_name_lookup_io_pc_data_id_fk FOREIGN KEY (io_pc_data_id)
    REFERENCES basic_dnd.io_pc_data (io_pc_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: basic_dnd.io_pc_data_attributes_lookup
-- lookup table for io_pc_datas and their associated attributess.

DROP TABLE IF EXISTS basic_dnd.io_pc_data_attributes_lookup CASCADE;

CREATE TABLE basic_dnd.io_pc_data_attributes_lookup
(
  io_pc_data_id smallint NOT NULL,
  key character varying(3) NOT NULL,
  value smallint NOT NULL,
  CONSTRAINT io_pc_data_attributes_lookup_io_pc_data_id_key_pk PRIMARY KEY (io_pc_data_id, key),
  CONSTRAINT io_pc_data_attributes_lookup_key_fk FOREIGN KEY (key)
    REFERENCES basic_dnd.attribute (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: basic_dnd.io_pc_data_scripted_events_lookup
-- lookup table for io_pc_datas and their associated scripted_eventss.

DROP TABLE IF EXISTS basic_dnd.io_pc_data_scripted_events_lookup CASCADE;

CREATE TABLE basic_dnd.io_pc_data_scripted_events_lookup
(
  io_pc_data_id smallint NOT NULL,
  key character varying(40) NOT NULL,
  value character varying(50) NOT NULL,
  CONSTRAINT io_pc_data_scripted_events_lookup_io_pc_data_id_key_pk PRIMARY KEY (io_pc_data_id, key),
  CONSTRAINT io_pc_data_scripted_events_lookup_key_fk FOREIGN KEY (key)
    REFERENCES basic_dnd.event (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_scripted_events_lookup_value_fk FOREIGN KEY (value)
    REFERENCES basic_dnd.script_bundle (name) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

