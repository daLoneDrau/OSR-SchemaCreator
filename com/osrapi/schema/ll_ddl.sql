-- Schema: ll
DROP SCHEMA IF EXISTS ll CASCADE;
CREATE SCHEMA ll;

-- Table: ll.attribute
-- TODO add table description

DROP TABLE IF EXISTS ll.attribute CASCADE;

CREATE SEQUENCE ll.attribute_id_seq MINVALUE 0;

CREATE TABLE ll.attribute
(
  attribute_id smallint DEFAULT nextval('ll.attribute_id_seq') NOT NULL,
  code character varying(3) NOT NULL,
  description text NOT NULL,
  name character varying(40) NOT NULL,
  CONSTRAINT attribute_attribute_id_pk PRIMARY KEY (attribute_id),
  CONSTRAINT attribute_code_un UNIQUE (code),
  CONSTRAINT attribute_description_un UNIQUE (description),
  CONSTRAINT attribute_name_un UNIQUE (name)
);

-- Table: ll.currency
-- TODO add table description

DROP TABLE IF EXISTS ll.currency CASCADE;

CREATE SEQUENCE ll.currency_id_seq MINVALUE 0;

CREATE TABLE ll.currency
(
  currency_id smallint DEFAULT nextval('ll.currency_id_seq') NOT NULL,
  code character varying(2) NOT NULL,
  name character varying(14) NOT NULL,
  sort_order smallint NOT NULL,
  CONSTRAINT currency_currency_id_pk PRIMARY KEY (currency_id),
  CONSTRAINT currency_code_un UNIQUE (code),
  CONSTRAINT currency_name_un UNIQUE (name),
  CONSTRAINT currency_sort_order_un UNIQUE (sort_order)
);

-- Table: ll.currency_exchange_rates_lookup
-- lookup table for currencys and their associated exchange_ratess.

DROP TABLE IF EXISTS ll.currency_exchange_rates_lookup CASCADE;

CREATE TABLE ll.currency_exchange_rates_lookup
(
  currency_id smallint NOT NULL,
  key character varying(2) NOT NULL,
  value decimal NOT NULL,
  CONSTRAINT currency_exchange_rates_lookup_currency_id_key_pk PRIMARY KEY (currency_id, key),
  CONSTRAINT currency_exchange_rates_lookup_key_fk FOREIGN KEY (key)
    REFERENCES ll.currency (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT currency_exchange_rates_lookup_value_fk FOREIGN KEY (value)
    REFERENCES ll.float (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ll.die
-- TODO add table description

DROP TABLE IF EXISTS ll.die CASCADE;

CREATE SEQUENCE ll.die_id_seq MINVALUE 0;

CREATE TABLE ll.die
(
  die_id smallint DEFAULT nextval('ll.die_id_seq') NOT NULL,
  code character varying(4) NOT NULL,
  value smallint NOT NULL,
  CONSTRAINT die_die_id_pk PRIMARY KEY (die_id),
  CONSTRAINT die_code_un UNIQUE (code),
  CONSTRAINT die_value_un UNIQUE (value)
);

-- Table: ll.dice
-- TODO add table description

DROP TABLE IF EXISTS ll.dice CASCADE;

CREATE SEQUENCE ll.dice_id_seq MINVALUE 0;

CREATE TABLE ll.dice
(
  dice_id smallint DEFAULT nextval('ll.dice_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  die smallint NOT NULL,
  number smallint NOT NULL,
  plus smallint,
  CONSTRAINT dice_dice_id_pk PRIMARY KEY (dice_id),
  CONSTRAINT dice_code_un UNIQUE (code),
  CONSTRAINT dice_die_fk FOREIGN KEY (die)
    REFERENCES ll.die (die_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ll.equipment_element_type
-- TODO add table description

DROP TABLE IF EXISTS ll.equipment_element_type CASCADE;

CREATE SEQUENCE ll.equipment_element_type_id_seq MINVALUE 0;

CREATE TABLE ll.equipment_element_type
(
  equipment_element_type_id smallint DEFAULT nextval('ll.equipment_element_type_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  value smallint NOT NULL,
  CONSTRAINT equipment_element_type_equipment_element_type_id_pk PRIMARY KEY (equipment_element_type_id),
  CONSTRAINT equipment_element_type_code_un UNIQUE (code),
  CONSTRAINT equipment_element_type_value_un UNIQUE (value)
);

-- Table: ll.equipment_item_modifier
-- TODO add table description

DROP TABLE IF EXISTS ll.equipment_item_modifier CASCADE;

CREATE SEQUENCE ll.equipment_item_modifier_id_seq MINVALUE 0;

CREATE TABLE ll.equipment_item_modifier
(
  equipment_item_modifier_id smallint DEFAULT nextval('ll.equipment_item_modifier_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  percent boolean NOT NULL,
  special smallint,
  value decimal NOT NULL,
  CONSTRAINT equipment_item_modifier_equipment_item_modifier_id_pk PRIMARY KEY (equipment_item_modifier_id),
  CONSTRAINT equipment_item_modifier_code_un UNIQUE (code)
);

-- Table: ll.event
-- TODO add table description

DROP TABLE IF EXISTS ll.event CASCADE;

CREATE SEQUENCE ll.event_id_seq MINVALUE 0;

CREATE TABLE ll.event
(
  event_id smallint DEFAULT nextval('ll.event_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  CONSTRAINT event_event_id_pk PRIMARY KEY (event_id),
  CONSTRAINT event_code_un UNIQUE (code)
);

-- Table: ll.gender
-- TODO add table description

DROP TABLE IF EXISTS ll.gender CASCADE;

CREATE SEQUENCE ll.gender_id_seq MINVALUE 0;

CREATE TABLE ll.gender
(
  gender_id smallint DEFAULT nextval('ll.gender_id_seq') NOT NULL,
  description text NOT NULL,
  name character varying(10) NOT NULL,
  CONSTRAINT gender_gender_id_pk PRIMARY KEY (gender_id),
  CONSTRAINT gender_description_un UNIQUE (description),
  CONSTRAINT gender_name_un UNIQUE (name)
);

-- Table: ll.group
-- TODO add table description

DROP TABLE IF EXISTS ll.group CASCADE;

CREATE SEQUENCE ll.group_id_seq MINVALUE 0;

CREATE TABLE ll.group
(
  group_id smallint DEFAULT nextval('ll.group_id_seq') NOT NULL,
  name character varying(255) NOT NULL,
  CONSTRAINT group_group_id_pk PRIMARY KEY (group_id),
  CONSTRAINT group_name_un UNIQUE (name)
);

-- Table: ll.object_type
-- TODO add table description

DROP TABLE IF EXISTS ll.object_type CASCADE;

CREATE SEQUENCE ll.object_type_id_seq MINVALUE 0;

CREATE TABLE ll.object_type
(
  object_type_id smallint DEFAULT nextval('ll.object_type_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  flag smallint NOT NULL,
  CONSTRAINT object_type_object_type_id_pk PRIMARY KEY (object_type_id),
  CONSTRAINT object_type_code_un UNIQUE (code),
  CONSTRAINT object_type_flag_un UNIQUE (flag)
);

-- Table: ll.io_item_data
-- TODO add table description

DROP TABLE IF EXISTS ll.io_item_data CASCADE;

CREATE SEQUENCE ll.io_item_data_id_seq MINVALUE 0;

CREATE TABLE ll.io_item_data
(
  io_item_data_id smallint DEFAULT nextval('ll.io_item_data_id_seq') NOT NULL,
  count smallint,
  damages smallint,
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
  CONSTRAINT io_item_data_io_item_data_id_pk PRIMARY KEY (io_item_data_id),
  CONSTRAINT io_item_data_damages_fk FOREIGN KEY (damages)
    REFERENCES ll.dice (dice_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ll.io_item_data_groups_lookup
-- lookup table for io_item_datas and their associated groupss.

DROP TABLE IF EXISTS ll.io_item_data_groups_lookup CASCADE;

CREATE TABLE ll.io_item_data_groups_lookup
(
  io_item_data_id smallint NOT NULL,
  group_id smallint NOT NULL,
  CONSTRAINT io_item_data_groups_lookup_io_item_data_id_group_id_pk PRIMARY KEY (io_item_data_id, group_id),
  CONSTRAINT io_item_data_groups_lookup_io_item_data_id_fk FOREIGN KEY (io_item_data_id)
    REFERENCES ll.io_item_data (io_item_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_item_data_groups_lookup_group_id_fk FOREIGN KEY (group_id)
    REFERENCES ll.group (group_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ll.io_item_data_types_lookup
-- lookup table for io_item_datas and their associated typess.

DROP TABLE IF EXISTS ll.io_item_data_types_lookup CASCADE;

CREATE TABLE ll.io_item_data_types_lookup
(
  io_item_data_id smallint NOT NULL,
  object_type_id smallint NOT NULL,
  CONSTRAINT io_item_data_types_lookup_io_item_data_id_object_type_id_pk PRIMARY KEY (io_item_data_id, object_type_id),
  CONSTRAINT io_item_data_types_lookup_io_item_data_id_fk FOREIGN KEY (io_item_data_id)
    REFERENCES ll.io_item_data (io_item_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_item_data_types_lookup_object_type_id_fk FOREIGN KEY (object_type_id)
    REFERENCES ll.object_type (object_type_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ll.io_item_data_modifiers_lookup
-- lookup table for io_item_datas and their associated modifierss.

DROP TABLE IF EXISTS ll.io_item_data_modifiers_lookup CASCADE;

CREATE TABLE ll.io_item_data_modifiers_lookup
(
  io_item_data_id smallint NOT NULL,
  key character varying(40) NOT NULL,
  value character varying(40) NOT NULL,
  CONSTRAINT io_item_data_modifiers_lookup_io_item_data_id_key_pk PRIMARY KEY (io_item_data_id, key),
  CONSTRAINT io_item_data_modifiers_lookup_key_fk FOREIGN KEY (key)
    REFERENCES ll.equipment_element_type (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_item_data_modifiers_lookup_value_fk FOREIGN KEY (value)
    REFERENCES ll.equipment_item_modifier (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ll.script_action_type
-- TODO add table description

DROP TABLE IF EXISTS ll.script_action_type CASCADE;

CREATE SEQUENCE ll.script_action_type_id_seq MINVALUE 0;

CREATE TABLE ll.script_action_type
(
  script_action_type_id smallint DEFAULT nextval('ll.script_action_type_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  CONSTRAINT script_action_type_script_action_type_id_pk PRIMARY KEY (script_action_type_id),
  CONSTRAINT script_action_type_code_un UNIQUE (code)
);

-- Table: ll.script_action
-- TODO add table description

DROP TABLE IF EXISTS ll.script_action CASCADE;

CREATE SEQUENCE ll.script_action_id_seq MINVALUE 0;

CREATE TABLE ll.script_action
(
  script_action_id smallint DEFAULT nextval('ll.script_action_id_seq') NOT NULL,
  name character varying(40) NOT NULL,
  type character varying(40) NOT NULL,
  CONSTRAINT script_action_script_action_id_pk PRIMARY KEY (script_action_id),
  CONSTRAINT script_action_name_un UNIQUE (name),
  CONSTRAINT script_action_type_fk FOREIGN KEY (type)
    REFERENCES ll.script_action_type (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ll.script_bundle
-- TODO add table description

DROP TABLE IF EXISTS ll.script_bundle CASCADE;

CREATE SEQUENCE ll.script_bundle_id_seq MINVALUE 0;

CREATE TABLE ll.script_bundle
(
  script_bundle_id smallint DEFAULT nextval('ll.script_bundle_id_seq') NOT NULL,
  name character varying(50) NOT NULL,
  CONSTRAINT script_bundle_script_bundle_id_pk PRIMARY KEY (script_bundle_id),
  CONSTRAINT script_bundle_name_un UNIQUE (name)
);

-- Table: ll.script_bundle_scripts_lookup
-- lookup table for script_bundles and their associated scriptss.

DROP TABLE IF EXISTS ll.script_bundle_scripts_lookup CASCADE;

CREATE TABLE ll.script_bundle_scripts_lookup
(
  script_bundle_id smallint NOT NULL,
  script_action_id smallint NOT NULL,
  CONSTRAINT script_bundle_scripts_lookup_script_bundle_id_script_action_id_pk PRIMARY KEY (script_bundle_id, script_action_id),
  CONSTRAINT script_bundle_scripts_lookup_script_bundle_id_fk FOREIGN KEY (script_bundle_id)
    REFERENCES ll.script_bundle (script_bundle_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT script_bundle_scripts_lookup_script_action_id_fk FOREIGN KEY (script_action_id)
    REFERENCES ll.script_action (script_action_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ll.io_npc_data
-- TODO add table description

DROP TABLE IF EXISTS ll.io_npc_data CASCADE;

CREATE SEQUENCE ll.io_npc_data_id_seq MINVALUE 0;

CREATE TABLE ll.io_npc_data
(
  io_npc_data_id smallint DEFAULT nextval('ll.io_npc_data_id_seq') NOT NULL,
  behavior bigint,
  behavior_param decimal,
  climb_count decimal,
  collid_state bigint,
  collid_time bigint,
  critical decimal,
  cut boolean,
  cuts smallint,
  damages decimal,
  gender smallint NOT NULL,
  internal_script text,
  level smallint NOT NULL,
  life decimal,
  mana decimal,
  maxlife decimal,
  maxmana decimal,
  module text,
  name character varying(50) NOT NULL,
  npc_flags bigint,
  title character varying(50) NOT NULL,
  weapon text NOT NULL,
  xpvalue smallint,
  CONSTRAINT io_npc_data_io_npc_data_id_pk PRIMARY KEY (io_npc_data_id),
  CONSTRAINT io_npc_data_gender_fk FOREIGN KEY (gender)
    REFERENCES ll.gender (gender_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_npc_data_weapon_fk FOREIGN KEY (weapon)
    REFERENCES ll.io_item_data (name) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ll.io_npc_data_attributes_lookup
-- lookup table for io_npc_datas and their associated attributess.

DROP TABLE IF EXISTS ll.io_npc_data_attributes_lookup CASCADE;

CREATE TABLE ll.io_npc_data_attributes_lookup
(
  io_npc_data_id smallint NOT NULL,
  key character varying(3) NOT NULL,
  value smallint NOT NULL,
  CONSTRAINT io_npc_data_attributes_lookup_io_npc_data_id_key_pk PRIMARY KEY (io_npc_data_id, key),
  CONSTRAINT io_npc_data_attributes_lookup_key_fk FOREIGN KEY (key)
    REFERENCES ll.attribute (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ll.io_npc_data_scripted_events_lookup
-- lookup table for io_npc_datas and their associated scripted_eventss.

DROP TABLE IF EXISTS ll.io_npc_data_scripted_events_lookup CASCADE;

CREATE TABLE ll.io_npc_data_scripted_events_lookup
(
  io_npc_data_id smallint NOT NULL,
  key character varying(20) NOT NULL,
  value character varying(50) NOT NULL,
  CONSTRAINT io_npc_data_scripted_events_lookup_io_npc_data_id_key_pk PRIMARY KEY (io_npc_data_id, key),
  CONSTRAINT io_npc_data_scripted_events_lookup_key_fk FOREIGN KEY (key)
    REFERENCES ll.event (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_npc_data_scripted_events_lookup_value_fk FOREIGN KEY (value)
    REFERENCES ll.script_bundle (name) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ll.io_pc_data
-- TODO add table description

DROP TABLE IF EXISTS ll.io_pc_data CASCADE;

CREATE SEQUENCE ll.io_pc_data_id_seq MINVALUE 0;

CREATE TABLE ll.io_pc_data
(
  io_pc_data_id smallint DEFAULT nextval('ll.io_pc_data_id_seq') NOT NULL,
  bags smallint NOT NULL,
  flags bigint,
  gender smallint NOT NULL,
  gold decimal NOT NULL,
  interface_flags smallint,
  internal_script text,
  level smallint NOT NULL,
  module text,
  name character varying(40) NOT NULL,
  xp bigint NOT NULL,
  CONSTRAINT io_pc_data_io_pc_data_id_pk PRIMARY KEY (io_pc_data_id),
  CONSTRAINT io_pc_data_gender_fk FOREIGN KEY (gender)
    REFERENCES ll.gender (gender_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ll.io_pc_data_equipped_items_lookup
-- lookup table for io_pc_datas and their associated equippedItems.

DROP TABLE IF EXISTS ll.io_pc_data_equipped_items_lookup CASCADE;

CREATE TABLE ll.io_pc_data_equipped_items_lookup
(
  io_pc_data_id smallint NOT NULL,
  equipped_items smallint NOT NULL,
  CONSTRAINT io_pc_data_equipped_items_lookup_io_pc_data_id_equipped_items_pk PRIMARY KEY (io_pc_data_id, equipped_items),
  CONSTRAINT io_pc_data_equipped_items_lookup_io_pc_data_id_fk FOREIGN KEY (io_pc_data_id)
    REFERENCES ll.io_pc_data (io_pc_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ll.io_pc_data_groups_lookup
-- lookup table for io_pc_datas and their associated groupss.

DROP TABLE IF EXISTS ll.io_pc_data_groups_lookup CASCADE;

CREATE TABLE ll.io_pc_data_groups_lookup
(
  io_pc_data_id smallint NOT NULL,
  group_id smallint NOT NULL,
  CONSTRAINT io_pc_data_groups_lookup_io_pc_data_id_group_id_pk PRIMARY KEY (io_pc_data_id, group_id),
  CONSTRAINT io_pc_data_groups_lookup_io_pc_data_id_fk FOREIGN KEY (io_pc_data_id)
    REFERENCES ll.io_pc_data (io_pc_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_groups_lookup_group_id_fk FOREIGN KEY (group_id)
    REFERENCES ll.group (group_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ll.io_pc_data_keyring_lookup
-- lookup table for io_pc_datas and their associated keyring.

DROP TABLE IF EXISTS ll.io_pc_data_keyring_lookup CASCADE;

CREATE TABLE ll.io_pc_data_keyring_lookup
(
  io_pc_data_id smallint NOT NULL,
  keyring character varying(40) NOT NULL,
  CONSTRAINT io_pc_data_keyring_lookup_io_pc_data_id_keyring_pk PRIMARY KEY (io_pc_data_id, keyring),
  CONSTRAINT io_pc_data_keyring_lookup_io_pc_data_id_fk FOREIGN KEY (io_pc_data_id)
    REFERENCES ll.io_pc_data (io_pc_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ll.io_pc_data_attributes_lookup
-- lookup table for io_pc_datas and their associated attributess.

DROP TABLE IF EXISTS ll.io_pc_data_attributes_lookup CASCADE;

CREATE TABLE ll.io_pc_data_attributes_lookup
(
  io_pc_data_id smallint NOT NULL,
  key character varying(3) NOT NULL,
  value smallint NOT NULL,
  CONSTRAINT io_pc_data_attributes_lookup_io_pc_data_id_key_pk PRIMARY KEY (io_pc_data_id, key),
  CONSTRAINT io_pc_data_attributes_lookup_key_fk FOREIGN KEY (key)
    REFERENCES ll.attribute (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ll.io_pc_data_scripted_events_lookup
-- lookup table for io_pc_datas and their associated scripted_eventss.

DROP TABLE IF EXISTS ll.io_pc_data_scripted_events_lookup CASCADE;

CREATE TABLE ll.io_pc_data_scripted_events_lookup
(
  io_pc_data_id smallint NOT NULL,
  key character varying(40) NOT NULL,
  value character varying(50) NOT NULL,
  CONSTRAINT io_pc_data_scripted_events_lookup_io_pc_data_id_key_pk PRIMARY KEY (io_pc_data_id, key),
  CONSTRAINT io_pc_data_scripted_events_lookup_key_fk FOREIGN KEY (key)
    REFERENCES ll.event (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_scripted_events_lookup_value_fk FOREIGN KEY (value)
    REFERENCES ll.script_bundle (name) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

