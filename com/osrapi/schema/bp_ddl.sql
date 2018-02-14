-- Schema: bp
DROP SCHEMA IF EXISTS bp CASCADE;
CREATE SCHEMA bp;

-- Table: bp.damage_type
-- TODO add table description

DROP TABLE IF EXISTS bp.damage_type CASCADE;

CREATE SEQUENCE bp.damage_type_id_seq MINVALUE 0;

CREATE TABLE bp.damage_type
(
  damage_type_id smallint DEFAULT nextval('bp.damage_type_id_seq') NOT NULL,
  flag integer NOT NULL,
  name character varying(40) NOT NULL,
  CONSTRAINT damage_type_damage_type_id_pk PRIMARY KEY (damage_type_id),
  CONSTRAINT damage_type_name_un UNIQUE (name)
);

-- Table: bp.equipment_element_type
-- TODO add table description

DROP TABLE IF EXISTS bp.equipment_element_type CASCADE;

CREATE SEQUENCE bp.equipment_element_type_id_seq MINVALUE 0;

CREATE TABLE bp.equipment_element_type
(
  equipment_element_type_id smallint DEFAULT nextval('bp.equipment_element_type_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  value smallint NOT NULL,
  CONSTRAINT equipment_element_type_equipment_element_type_id_pk PRIMARY KEY (equipment_element_type_id),
  CONSTRAINT equipment_element_type_code_un UNIQUE (code),
  CONSTRAINT equipment_element_type_value_un UNIQUE (value)
);

-- Table: bp.attribute
-- TODO add table description

DROP TABLE IF EXISTS bp.attribute CASCADE;

CREATE SEQUENCE bp.attribute_id_seq MINVALUE 0;

CREATE TABLE bp.attribute
(
  attribute_id smallint DEFAULT nextval('bp.attribute_id_seq') NOT NULL,
  code character varying(3) NOT NULL,
  description text NOT NULL,
  element smallint NOT NULL,
  name character varying(40) NOT NULL,
  CONSTRAINT attribute_attribute_id_pk PRIMARY KEY (attribute_id),
  CONSTRAINT attribute_code_un UNIQUE (code),
  CONSTRAINT attribute_description_un UNIQUE (description),
  CONSTRAINT attribute_element_fk FOREIGN KEY (element)
    REFERENCES bp.equipment_element_type (equipment_element_type_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT attribute_name_un UNIQUE (name)
);

-- Table: bp.equipment_item_modifier
-- TODO add table description

DROP TABLE IF EXISTS bp.equipment_item_modifier CASCADE;

CREATE SEQUENCE bp.equipment_item_modifier_id_seq MINVALUE 0;

CREATE TABLE bp.equipment_item_modifier
(
  equipment_item_modifier_id smallint DEFAULT nextval('bp.equipment_item_modifier_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  percent boolean NOT NULL,
  special smallint,
  value decimal NOT NULL,
  CONSTRAINT equipment_item_modifier_equipment_item_modifier_id_pk PRIMARY KEY (equipment_item_modifier_id),
  CONSTRAINT equipment_item_modifier_code_un UNIQUE (code)
);

-- Table: bp.equipment_slot
-- TODO add table description

DROP TABLE IF EXISTS bp.equipment_slot CASCADE;

CREATE SEQUENCE bp.equipment_slot_id_seq MINVALUE 0;

CREATE TABLE bp.equipment_slot
(
  equipment_slot_id smallint DEFAULT nextval('bp.equipment_slot_id_seq') NOT NULL,
  name character varying(40) NOT NULL,
  val smallint NOT NULL,
  CONSTRAINT equipment_slot_equipment_slot_id_pk PRIMARY KEY (equipment_slot_id),
  CONSTRAINT equipment_slot_name_un UNIQUE (name)
);

-- Table: bp.gender
-- TODO add table description

DROP TABLE IF EXISTS bp.gender CASCADE;

CREATE SEQUENCE bp.gender_id_seq MINVALUE 0;

CREATE TABLE bp.gender
(
  gender_id smallint DEFAULT nextval('bp.gender_id_seq') NOT NULL,
  description text NOT NULL,
  name character varying(10) NOT NULL,
  CONSTRAINT gender_gender_id_pk PRIMARY KEY (gender_id),
  CONSTRAINT gender_description_un UNIQUE (description),
  CONSTRAINT gender_name_un UNIQUE (name)
);

-- Table: bp.group
-- TODO add table description

DROP TABLE IF EXISTS bp.group CASCADE;

CREATE SEQUENCE bp.group_id_seq MINVALUE 0;

CREATE TABLE bp.group
(
  group_id smallint DEFAULT nextval('bp.group_id_seq') NOT NULL,
  name character varying(255) NOT NULL,
  CONSTRAINT group_group_id_pk PRIMARY KEY (group_id),
  CONSTRAINT group_name_un UNIQUE (name)
);

-- Table: bp.object_type
-- TODO add table description

DROP TABLE IF EXISTS bp.object_type CASCADE;

CREATE SEQUENCE bp.object_type_id_seq MINVALUE 0;

CREATE TABLE bp.object_type
(
  object_type_id smallint DEFAULT nextval('bp.object_type_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  flag smallint NOT NULL,
  CONSTRAINT object_type_object_type_id_pk PRIMARY KEY (object_type_id),
  CONSTRAINT object_type_code_un UNIQUE (code),
  CONSTRAINT object_type_flag_un UNIQUE (flag)
);

-- Table: bp.io_item_data
-- TODO add table description

DROP TABLE IF EXISTS bp.io_item_data CASCADE;

CREATE SEQUENCE bp.io_item_data_id_seq MINVALUE 0;

CREATE TABLE bp.io_item_data
(
  io_item_data_id smallint DEFAULT nextval('bp.io_item_data_id_seq') NOT NULL,
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
  weight decimal NOT NULL,
  CONSTRAINT io_item_data_io_item_data_id_pk PRIMARY KEY (io_item_data_id)
);

-- Table: bp.io_item_data_groups_lookup
-- lookup table for io_item_datas and their associated groupss.

DROP TABLE IF EXISTS bp.io_item_data_groups_lookup CASCADE;

CREATE TABLE bp.io_item_data_groups_lookup
(
  io_item_data_id smallint NOT NULL,
  group_id smallint NOT NULL,
  CONSTRAINT io_item_data_groups_lookup_io_item_data_id_group_id_pk PRIMARY KEY (io_item_data_id, group_id),
  CONSTRAINT io_item_data_groups_lookup_io_item_data_id_fk FOREIGN KEY (io_item_data_id)
    REFERENCES bp.io_item_data (io_item_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_item_data_groups_lookup_group_id_fk FOREIGN KEY (group_id)
    REFERENCES bp.group (group_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: bp.io_item_data_types_lookup
-- lookup table for io_item_datas and their associated typess.

DROP TABLE IF EXISTS bp.io_item_data_types_lookup CASCADE;

CREATE TABLE bp.io_item_data_types_lookup
(
  io_item_data_id smallint NOT NULL,
  object_type_id smallint NOT NULL,
  CONSTRAINT io_item_data_types_lookup_io_item_data_id_object_type_id_pk PRIMARY KEY (io_item_data_id, object_type_id),
  CONSTRAINT io_item_data_types_lookup_io_item_data_id_fk FOREIGN KEY (io_item_data_id)
    REFERENCES bp.io_item_data (io_item_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_item_data_types_lookup_object_type_id_fk FOREIGN KEY (object_type_id)
    REFERENCES bp.object_type (object_type_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: bp.io_item_data_modifiers_lookup
-- lookup table for io_item_datas and their associated modifierss.

DROP TABLE IF EXISTS bp.io_item_data_modifiers_lookup CASCADE;

CREATE TABLE bp.io_item_data_modifiers_lookup
(
  io_item_data_id smallint NOT NULL,
  key character varying(40) NOT NULL,
  value character varying(40) NOT NULL,
  CONSTRAINT io_item_data_modifiers_lookup_io_item_data_id_key_pk PRIMARY KEY (io_item_data_id, key),
  CONSTRAINT io_item_data_modifiers_lookup_key_fk FOREIGN KEY (key)
    REFERENCES bp.equipment_element_type (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_item_data_modifiers_lookup_value_fk FOREIGN KEY (value)
    REFERENCES bp.equipment_item_modifier (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: bp.io_pc_data
-- TODO add table description

DROP TABLE IF EXISTS bp.io_pc_data CASCADE;

CREATE SEQUENCE bp.io_pc_data_id_seq MINVALUE 0;

CREATE TABLE bp.io_pc_data
(
  io_pc_data_id smallint DEFAULT nextval('bp.io_pc_data_id_seq') NOT NULL,
  bags smallint NOT NULL,
  gender smallint NOT NULL,
  gold decimal NOT NULL,
  interface_flags smallint NOT NULL,
  level smallint NOT NULL,
  name character varying(40) NOT NULL,
  xp smallint NOT NULL,
  CONSTRAINT io_pc_data_io_pc_data_id_pk PRIMARY KEY (io_pc_data_id),
  CONSTRAINT io_pc_data_gender_fk FOREIGN KEY (gender)
    REFERENCES bp.gender (gender_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: bp.io_pc_data_keyring_lookup
-- lookup table for io_pc_datas and their associated keyring.

DROP TABLE IF EXISTS bp.io_pc_data_keyring_lookup CASCADE;

CREATE TABLE bp.io_pc_data_keyring_lookup
(
  io_pc_data_id smallint NOT NULL,
  keyring character varying(40) NOT NULL,
  CONSTRAINT io_pc_data_keyring_lookup_io_pc_data_id_keyring_pk PRIMARY KEY (io_pc_data_id, keyring),
  CONSTRAINT io_pc_data_keyring_lookup_io_pc_data_id_fk FOREIGN KEY (io_pc_data_id)
    REFERENCES bp.io_pc_data (io_pc_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: bp.io_pc_data_attributes_lookup
-- lookup table for io_pc_datas and their associated attributess.

DROP TABLE IF EXISTS bp.io_pc_data_attributes_lookup CASCADE;

CREATE TABLE bp.io_pc_data_attributes_lookup
(
  io_pc_data_id smallint NOT NULL,
  key character varying(3) NOT NULL,
  value smallint NOT NULL,
  CONSTRAINT io_pc_data_attributes_lookup_io_pc_data_id_key_pk PRIMARY KEY (io_pc_data_id, key),
  CONSTRAINT io_pc_data_attributes_lookup_key_fk FOREIGN KEY (key)
    REFERENCES bp.attribute (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: bp.io_pc_data_equipped_items_lookup
-- lookup table for io_pc_datas and their associated equipped_itemss.

DROP TABLE IF EXISTS bp.io_pc_data_equipped_items_lookup CASCADE;

CREATE TABLE bp.io_pc_data_equipped_items_lookup
(
  io_pc_data_id smallint NOT NULL,
  key character varying(40) NOT NULL,
  value smallint NOT NULL,
  CONSTRAINT io_pc_data_equipped_items_lookup_io_pc_data_id_key_pk PRIMARY KEY (io_pc_data_id, key),
  CONSTRAINT io_pc_data_equipped_items_lookup_key_fk FOREIGN KEY (key)
    REFERENCES bp.equipment_slot (name) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_equipped_items_lookup_value_fk FOREIGN KEY (value)
    REFERENCES bp.io_item_data (io_item_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: bp.script_action_type
-- TODO add table description

DROP TABLE IF EXISTS bp.script_action_type CASCADE;

CREATE SEQUENCE bp.script_action_type_id_seq MINVALUE 0;

CREATE TABLE bp.script_action_type
(
  script_action_type_id smallint DEFAULT nextval('bp.script_action_type_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  CONSTRAINT script_action_type_script_action_type_id_pk PRIMARY KEY (script_action_type_id),
  CONSTRAINT script_action_type_code_un UNIQUE (code)
);

-- Table: bp.script_action
-- TODO add table description

DROP TABLE IF EXISTS bp.script_action CASCADE;

CREATE SEQUENCE bp.script_action_id_seq MINVALUE 0;

CREATE TABLE bp.script_action
(
  script_action_id smallint DEFAULT nextval('bp.script_action_id_seq') NOT NULL,
  name character varying(40) NOT NULL,
  type character varying(40) NOT NULL,
  CONSTRAINT script_action_script_action_id_pk PRIMARY KEY (script_action_id),
  CONSTRAINT script_action_name_un UNIQUE (name),
  CONSTRAINT script_action_type_fk FOREIGN KEY (type)
    REFERENCES bp.script_action_type (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: bp.script_bundle
-- TODO add table description

DROP TABLE IF EXISTS bp.script_bundle CASCADE;

CREATE SEQUENCE bp.script_bundle_id_seq MINVALUE 0;

CREATE TABLE bp.script_bundle
(
  script_bundle_id smallint DEFAULT nextval('bp.script_bundle_id_seq') NOT NULL,
  name character varying(50) NOT NULL,
  CONSTRAINT script_bundle_script_bundle_id_pk PRIMARY KEY (script_bundle_id),
  CONSTRAINT script_bundle_name_un UNIQUE (name)
);

-- Table: bp.script_bundle_scripts_lookup
-- lookup table for script_bundles and their associated scriptss.

DROP TABLE IF EXISTS bp.script_bundle_scripts_lookup CASCADE;

CREATE TABLE bp.script_bundle_scripts_lookup
(
  script_bundle_id smallint NOT NULL,
  script_action_id smallint NOT NULL,
  CONSTRAINT script_bundle_scripts_lookup_script_bundle_id_script_action_id_pk PRIMARY KEY (script_bundle_id, script_action_id),
  CONSTRAINT script_bundle_scripts_lookup_script_bundle_id_fk FOREIGN KEY (script_bundle_id)
    REFERENCES bp.script_bundle (script_bundle_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT script_bundle_scripts_lookup_script_action_id_fk FOREIGN KEY (script_action_id)
    REFERENCES bp.script_action (script_action_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

