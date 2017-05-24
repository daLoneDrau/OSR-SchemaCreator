-- Schema: ff
DROP SCHEMA IF EXISTS ff CASCADE;
CREATE SCHEMA ff;

-- Table: ff.command
-- TODO add table description

DROP TABLE IF EXISTS ff.command CASCADE;

CREATE SEQUENCE ff.command_id_seq MINVALUE 0;

CREATE TABLE ff.command
(
  command_id smallint DEFAULT nextval('ff.command_id_seq') NOT NULL,
  name text NOT NULL,
  sort_order smallint NOT NULL,
  CONSTRAINT command_command_id_pk PRIMARY KEY (command_id)
);

-- Table: ff.damage_type
-- TODO add table description

DROP TABLE IF EXISTS ff.damage_type CASCADE;

CREATE SEQUENCE ff.damage_type_id_seq MINVALUE 0;

CREATE TABLE ff.damage_type
(
  damage_type_id smallint DEFAULT nextval('ff.damage_type_id_seq') NOT NULL,
  flag integer NOT NULL,
  name character varying(40) NOT NULL,
  CONSTRAINT damage_type_damage_type_id_pk PRIMARY KEY (damage_type_id),
  CONSTRAINT damage_type_name_un UNIQUE (name)
);

-- Table: ff.die
-- TODO add table description

DROP TABLE IF EXISTS ff.die CASCADE;

CREATE SEQUENCE ff.die_id_seq MINVALUE 0;

CREATE TABLE ff.die
(
  die_id smallint DEFAULT nextval('ff.die_id_seq') NOT NULL,
  code character varying(4) NOT NULL,
  value smallint NOT NULL,
  CONSTRAINT die_die_id_pk PRIMARY KEY (die_id),
  CONSTRAINT die_code_un UNIQUE (code),
  CONSTRAINT die_value_un UNIQUE (value)
);

-- Table: ff.dice
-- TODO add table description

DROP TABLE IF EXISTS ff.dice CASCADE;

CREATE SEQUENCE ff.dice_id_seq MINVALUE 0;

CREATE TABLE ff.dice
(
  dice_id smallint DEFAULT nextval('ff.dice_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  die smallint NOT NULL,
  number smallint NOT NULL,
  plus smallint,
  CONSTRAINT dice_dice_id_pk PRIMARY KEY (dice_id),
  CONSTRAINT dice_code_un UNIQUE (code),
  CONSTRAINT dice_die_fk FOREIGN KEY (die)
    REFERENCES ff.die (die_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ff.direction
-- TODO add table description

DROP TABLE IF EXISTS ff.direction CASCADE;

CREATE SEQUENCE ff.direction_id_seq MINVALUE 0;

CREATE TABLE ff.direction
(
  direction_id smallint DEFAULT nextval('ff.direction_id_seq') NOT NULL,
  code character varying(5) NOT NULL,
  value smallint NOT NULL,
  CONSTRAINT direction_direction_id_pk PRIMARY KEY (direction_id),
  CONSTRAINT direction_code_un UNIQUE (code),
  CONSTRAINT direction_value_un UNIQUE (value)
);

-- Table: ff.equipment_element_type
-- TODO add table description

DROP TABLE IF EXISTS ff.equipment_element_type CASCADE;

CREATE SEQUENCE ff.equipment_element_type_id_seq MINVALUE 0;

CREATE TABLE ff.equipment_element_type
(
  equipment_element_type_id smallint DEFAULT nextval('ff.equipment_element_type_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  value smallint NOT NULL,
  CONSTRAINT equipment_element_type_equipment_element_type_id_pk PRIMARY KEY (equipment_element_type_id),
  CONSTRAINT equipment_element_type_code_un UNIQUE (code),
  CONSTRAINT equipment_element_type_value_un UNIQUE (value)
);

-- Table: ff.attribute
-- TODO add table description

DROP TABLE IF EXISTS ff.attribute CASCADE;

CREATE SEQUENCE ff.attribute_id_seq MINVALUE 0;

CREATE TABLE ff.attribute
(
  attribute_id smallint DEFAULT nextval('ff.attribute_id_seq') NOT NULL,
  code character varying(3) NOT NULL,
  description text NOT NULL,
  element smallint NOT NULL,
  name character varying(40) NOT NULL,
  CONSTRAINT attribute_attribute_id_pk PRIMARY KEY (attribute_id),
  CONSTRAINT attribute_code_un UNIQUE (code),
  CONSTRAINT attribute_description_un UNIQUE (description),
  CONSTRAINT attribute_element_fk FOREIGN KEY (element)
    REFERENCES ff.equipment_element_type (equipment_element_type_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT attribute_name_un UNIQUE (name)
);

-- Table: ff.equipment_item_modifier
-- TODO add table description

DROP TABLE IF EXISTS ff.equipment_item_modifier CASCADE;

CREATE SEQUENCE ff.equipment_item_modifier_id_seq MINVALUE 0;

CREATE TABLE ff.equipment_item_modifier
(
  equipment_item_modifier_id smallint DEFAULT nextval('ff.equipment_item_modifier_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  percent boolean NOT NULL,
  special smallint,
  value decimal NOT NULL,
  CONSTRAINT equipment_item_modifier_equipment_item_modifier_id_pk PRIMARY KEY (equipment_item_modifier_id),
  CONSTRAINT equipment_item_modifier_code_un UNIQUE (code)
);

-- Table: ff.equipment_slot
-- TODO add table description

DROP TABLE IF EXISTS ff.equipment_slot CASCADE;

CREATE SEQUENCE ff.equipment_slot_id_seq MINVALUE 0;

CREATE TABLE ff.equipment_slot
(
  equipment_slot_id smallint DEFAULT nextval('ff.equipment_slot_id_seq') NOT NULL,
  name character varying(40) NOT NULL,
  value smallint NOT NULL,
  CONSTRAINT equipment_slot_equipment_slot_id_pk PRIMARY KEY (equipment_slot_id),
  CONSTRAINT equipment_slot_name_un UNIQUE (name)
);

-- Table: ff.event
-- TODO add table description

DROP TABLE IF EXISTS ff.event CASCADE;

CREATE SEQUENCE ff.event_id_seq MINVALUE 0;

CREATE TABLE ff.event
(
  event_id smallint DEFAULT nextval('ff.event_id_seq') NOT NULL,
  code character varying(20) NOT NULL,
  CONSTRAINT event_event_id_pk PRIMARY KEY (event_id),
  CONSTRAINT event_code_un UNIQUE (code)
);

-- Table: ff.gender
-- TODO add table description

DROP TABLE IF EXISTS ff.gender CASCADE;

CREATE SEQUENCE ff.gender_id_seq MINVALUE 0;

CREATE TABLE ff.gender
(
  gender_id smallint DEFAULT nextval('ff.gender_id_seq') NOT NULL,
  description text NOT NULL,
  name character varying(10) NOT NULL,
  CONSTRAINT gender_gender_id_pk PRIMARY KEY (gender_id),
  CONSTRAINT gender_description_un UNIQUE (description),
  CONSTRAINT gender_name_un UNIQUE (name)
);

-- Table: ff.group
-- TODO add table description

DROP TABLE IF EXISTS ff.group CASCADE;

CREATE SEQUENCE ff.group_id_seq MINVALUE 0;

CREATE TABLE ff.group
(
  group_id smallint DEFAULT nextval('ff.group_id_seq') NOT NULL,
  name character varying(255) NOT NULL,
  CONSTRAINT group_group_id_pk PRIMARY KEY (group_id),
  CONSTRAINT group_name_un UNIQUE (name)
);

-- Table: ff.map_tile
-- TODO add table description

DROP TABLE IF EXISTS ff.map_tile CASCADE;

CREATE SEQUENCE ff.map_tile_id_seq MINVALUE 0;

CREATE TABLE ff.map_tile
(
  map_tile_id smallint DEFAULT nextval('ff.map_tile_id_seq') NOT NULL,
  name character varying(200) NOT NULL,
  code_number smallint NOT NULL,
  CONSTRAINT map_tile_map_tile_id_pk PRIMARY KEY (map_tile_id),
  CONSTRAINT map_tile_code_number_un UNIQUE (code_number)
);

-- Table: ff.map_cell
-- TODO add table description

DROP TABLE IF EXISTS ff.map_cell CASCADE;

CREATE SEQUENCE ff.map_cell_id_seq MINVALUE 0;

CREATE TABLE ff.map_cell
(
  map_cell_id smallint DEFAULT nextval('ff.map_cell_id_seq') NOT NULL,
  name text NOT NULL,
  x smallint NOT NULL,
  y smallint NOT NULL,
  tile smallint NOT NULL,
  CONSTRAINT map_cell_map_cell_id_pk PRIMARY KEY (map_cell_id),
  CONSTRAINT map_cell_name_x_y_un UNIQUE (name, x, y),
  CONSTRAINT map_cell_tile_fk FOREIGN KEY (tile)
    REFERENCES ff.map_tile (map_tile_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ff.map_level
-- TODO add table description

DROP TABLE IF EXISTS ff.map_level CASCADE;

CREATE SEQUENCE ff.map_level_id_seq MINVALUE 0;

CREATE TABLE ff.map_level
(
  map_level_id smallint DEFAULT nextval('ff.map_level_id_seq') NOT NULL,
  name character varying(200) NOT NULL,
  CONSTRAINT map_level_map_level_id_pk PRIMARY KEY (map_level_id),
  CONSTRAINT map_level_name_un UNIQUE (name)
);

-- Table: ff.map_level_cells_lookup
-- lookup table for map_levels and their associated cellss.

DROP TABLE IF EXISTS ff.map_level_cells_lookup CASCADE;

CREATE TABLE ff.map_level_cells_lookup
(
  map_level_id smallint NOT NULL,
  map_cell_id smallint NOT NULL,
  CONSTRAINT map_level_cells_lookup_map_level_id_map_cell_id_pk PRIMARY KEY (map_level_id, map_cell_id),
  CONSTRAINT map_level_cells_lookup_map_level_id_fk FOREIGN KEY (map_level_id)
    REFERENCES ff.map_level (map_level_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT map_level_cells_lookup_map_cell_id_fk FOREIGN KEY (map_cell_id)
    REFERENCES ff.map_cell (map_cell_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ff.object_type
-- TODO add table description

DROP TABLE IF EXISTS ff.object_type CASCADE;

CREATE SEQUENCE ff.object_type_id_seq MINVALUE 0;

CREATE TABLE ff.object_type
(
  object_type_id smallint DEFAULT nextval('ff.object_type_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  flag smallint NOT NULL,
  CONSTRAINT object_type_object_type_id_pk PRIMARY KEY (object_type_id),
  CONSTRAINT object_type_code_un UNIQUE (code),
  CONSTRAINT object_type_flag_un UNIQUE (flag)
);

-- Table: ff.io_item_data
-- TODO add table description

DROP TABLE IF EXISTS ff.io_item_data CASCADE;

CREATE SEQUENCE ff.io_item_data_id_seq MINVALUE 0;

CREATE TABLE ff.io_item_data
(
  io_item_data_id smallint DEFAULT nextval('ff.io_item_data_id_seq') NOT NULL,
  count smallint,
  description text NOT NULL,
  food_value smallint,
  internal_script character varying(255) NOT NULL,
  internal_script_js character varying(255) NOT NULL,
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

-- Table: ff.io_item_data_groups_lookup
-- lookup table for io_item_datas and their associated groupss.

DROP TABLE IF EXISTS ff.io_item_data_groups_lookup CASCADE;

CREATE TABLE ff.io_item_data_groups_lookup
(
  io_item_data_id smallint NOT NULL,
  group_id smallint NOT NULL,
  CONSTRAINT io_item_data_groups_lookup_io_item_data_id_group_id_pk PRIMARY KEY (io_item_data_id, group_id),
  CONSTRAINT io_item_data_groups_lookup_io_item_data_id_fk FOREIGN KEY (io_item_data_id)
    REFERENCES ff.io_item_data (io_item_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_item_data_groups_lookup_group_id_fk FOREIGN KEY (group_id)
    REFERENCES ff.group (group_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ff.io_item_data_types_lookup
-- lookup table for io_item_datas and their associated typess.

DROP TABLE IF EXISTS ff.io_item_data_types_lookup CASCADE;

CREATE TABLE ff.io_item_data_types_lookup
(
  io_item_data_id smallint NOT NULL,
  object_type_id smallint NOT NULL,
  CONSTRAINT io_item_data_types_lookup_io_item_data_id_object_type_id_pk PRIMARY KEY (io_item_data_id, object_type_id),
  CONSTRAINT io_item_data_types_lookup_io_item_data_id_fk FOREIGN KEY (io_item_data_id)
    REFERENCES ff.io_item_data (io_item_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_item_data_types_lookup_object_type_id_fk FOREIGN KEY (object_type_id)
    REFERENCES ff.object_type (object_type_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ff.io_item_data_modifiers_lookup
-- lookup table for io_item_datas and their associated modifierss.

DROP TABLE IF EXISTS ff.io_item_data_modifiers_lookup CASCADE;

CREATE TABLE ff.io_item_data_modifiers_lookup
(
  io_item_data_id smallint NOT NULL,
  key character varying(40) NOT NULL,
  value character varying(40) NOT NULL,
  CONSTRAINT io_item_data_modifiers_lookup_io_item_data_id_key_pk PRIMARY KEY (io_item_data_id, key),
  CONSTRAINT io_item_data_modifiers_lookup_key_fk FOREIGN KEY (key)
    REFERENCES ff.equipment_element_type (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_item_data_modifiers_lookup_value_fk FOREIGN KEY (value)
    REFERENCES ff.equipment_item_modifier (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ff.io_pc_data
-- TODO add table description

DROP TABLE IF EXISTS ff.io_pc_data CASCADE;

CREATE SEQUENCE ff.io_pc_data_id_seq MINVALUE 0;

CREATE TABLE ff.io_pc_data
(
  io_pc_data_id smallint DEFAULT nextval('ff.io_pc_data_id_seq') NOT NULL,
  bags smallint NOT NULL,
  gender smallint NOT NULL,
  gold decimal NOT NULL,
  interface_flags smallint NOT NULL,
  level smallint NOT NULL,
  name character varying(40) NOT NULL,
  xp smallint NOT NULL,
  CONSTRAINT io_pc_data_io_pc_data_id_pk PRIMARY KEY (io_pc_data_id),
  CONSTRAINT io_pc_data_gender_fk FOREIGN KEY (gender)
    REFERENCES ff.gender (gender_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ff.io_pc_data_keyring_lookup
-- lookup table for io_pc_datas and their associated keyring.

DROP TABLE IF EXISTS ff.io_pc_data_keyring_lookup CASCADE;

CREATE TABLE ff.io_pc_data_keyring_lookup
(
  io_pc_data_id smallint NOT NULL,
  keyring character varying(40) NOT NULL,
  CONSTRAINT io_pc_data_keyring_lookup_io_pc_data_id_keyring_pk PRIMARY KEY (io_pc_data_id, keyring),
  CONSTRAINT io_pc_data_keyring_lookup_io_pc_data_id_fk FOREIGN KEY (io_pc_data_id)
    REFERENCES ff.io_pc_data (io_pc_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ff.io_pc_data_attributes_lookup
-- lookup table for io_pc_datas and their associated attributess.

DROP TABLE IF EXISTS ff.io_pc_data_attributes_lookup CASCADE;

CREATE TABLE ff.io_pc_data_attributes_lookup
(
  io_pc_data_id smallint NOT NULL,
  key character varying(3) NOT NULL,
  value smallint NOT NULL,
  CONSTRAINT io_pc_data_attributes_lookup_io_pc_data_id_key_pk PRIMARY KEY (io_pc_data_id, key),
  CONSTRAINT io_pc_data_attributes_lookup_key_fk FOREIGN KEY (key)
    REFERENCES ff.attribute (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ff.io_pc_data_equipped_items_lookup
-- lookup table for io_pc_datas and their associated equipped_itemss.

DROP TABLE IF EXISTS ff.io_pc_data_equipped_items_lookup CASCADE;

CREATE TABLE ff.io_pc_data_equipped_items_lookup
(
  io_pc_data_id smallint NOT NULL,
  key character varying(40) NOT NULL,
  value smallint NOT NULL,
  CONSTRAINT io_pc_data_equipped_items_lookup_io_pc_data_id_key_pk PRIMARY KEY (io_pc_data_id, key),
  CONSTRAINT io_pc_data_equipped_items_lookup_key_fk FOREIGN KEY (key)
    REFERENCES ff.equipment_slot (name) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_pc_data_equipped_items_lookup_value_fk FOREIGN KEY (value)
    REFERENCES ff.io_item_data (io_item_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ff.room
-- TODO add table description

DROP TABLE IF EXISTS ff.room CASCADE;

CREATE SEQUENCE ff.room_id_seq MINVALUE 0;

CREATE TABLE ff.room
(
  room_id smallint DEFAULT nextval('ff.room_id_seq') NOT NULL,
  code character varying(3) NOT NULL,
  CONSTRAINT room_room_id_pk PRIMARY KEY (room_id),
  CONSTRAINT room_code_un UNIQUE (code)
);

-- Table: ff.room_commands_lookup
-- lookup table for rooms and their associated commandss.

DROP TABLE IF EXISTS ff.room_commands_lookup CASCADE;

CREATE TABLE ff.room_commands_lookup
(
  room_id smallint NOT NULL,
  command_id smallint NOT NULL,
  CONSTRAINT room_commands_lookup_room_id_command_id_pk PRIMARY KEY (room_id, command_id),
  CONSTRAINT room_commands_lookup_room_id_fk FOREIGN KEY (room_id)
    REFERENCES ff.room (room_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT room_commands_lookup_command_id_fk FOREIGN KEY (command_id)
    REFERENCES ff.command (command_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ff.script_action_type
-- TODO add table description

DROP TABLE IF EXISTS ff.script_action_type CASCADE;

CREATE SEQUENCE ff.script_action_type_id_seq MINVALUE 0;

CREATE TABLE ff.script_action_type
(
  script_action_type_id smallint DEFAULT nextval('ff.script_action_type_id_seq') NOT NULL,
  code character varying(40) NOT NULL,
  CONSTRAINT script_action_type_script_action_type_id_pk PRIMARY KEY (script_action_type_id),
  CONSTRAINT script_action_type_code_un UNIQUE (code)
);

-- Table: ff.terrain
-- TODO add table description

DROP TABLE IF EXISTS ff.terrain CASCADE;

CREATE SEQUENCE ff.terrain_id_seq MINVALUE 0;

CREATE TABLE ff.terrain
(
  terrain_id smallint DEFAULT nextval('ff.terrain_id_seq') NOT NULL,
  name character varying(30) NOT NULL,
  CONSTRAINT terrain_terrain_id_pk PRIMARY KEY (terrain_id),
  CONSTRAINT terrain_name_un UNIQUE (name)
);

-- Table: ff.physical_graph_node
-- TODO add table description

DROP TABLE IF EXISTS ff.physical_graph_node CASCADE;

CREATE SEQUENCE ff.physical_graph_node_id_seq MINVALUE 0;

CREATE TABLE ff.physical_graph_node
(
  physical_graph_node_id smallint DEFAULT nextval('ff.physical_graph_node_id_seq') NOT NULL,
  is_main_node boolean,
  room_number smallint NOT NULL,
  terrain smallint NOT NULL,
  x smallint NOT NULL,
  y smallint NOT NULL,
  CONSTRAINT physical_graph_node_physical_graph_node_id_pk PRIMARY KEY (physical_graph_node_id),
  CONSTRAINT physical_graph_node_terrain_fk FOREIGN KEY (terrain)
    REFERENCES ff.terrain (terrain_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ff.text
-- TODO add table description

DROP TABLE IF EXISTS ff.text CASCADE;

CREATE SEQUENCE ff.text_id_seq MINVALUE 0;

CREATE TABLE ff.text
(
  text_id smallint DEFAULT nextval('ff.text_id_seq') NOT NULL,
  name character varying(255) NOT NULL,
  text text NOT NULL,
  CONSTRAINT text_text_id_pk PRIMARY KEY (text_id),
  CONSTRAINT text_name_un UNIQUE (name),
  CONSTRAINT text_text_un UNIQUE (text)
);

-- Table: ff.script_action
-- TODO add table description

DROP TABLE IF EXISTS ff.script_action CASCADE;

CREATE SEQUENCE ff.script_action_id_seq MINVALUE 0;

CREATE TABLE ff.script_action
(
  script_action_id smallint DEFAULT nextval('ff.script_action_id_seq') NOT NULL,
  name character varying(40) NOT NULL,
  type character varying(40) NOT NULL,
  origin character varying(3),
  direction character varying(5),
  destination character varying(3),
  num_die_rolled smallint,
  is_die_roll boolean,
  attribute character varying(2),
  amount smallint,
  text_name character varying(255),
  room_code character varying(3),
  door_name character varying(20),
  error boolean,
  mob_code character varying(30),
  pass_scripts character varying(50),
  fail_scripts character varying(50),
  CONSTRAINT script_action_script_action_id_pk PRIMARY KEY (script_action_id),
  CONSTRAINT script_action_name_un UNIQUE (name),
  CONSTRAINT script_action_type_fk FOREIGN KEY (type)
    REFERENCES ff.script_action_type (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT script_action_direction_fk FOREIGN KEY (direction)
    REFERENCES ff.direction (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT script_action_text_name_fk FOREIGN KEY (text_name)
    REFERENCES ff.text (name) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ff.script_action_mobs_lookup
-- lookup table for script_actions and their associated mobs.

DROP TABLE IF EXISTS ff.script_action_mobs_lookup CASCADE;

CREATE TABLE ff.script_action_mobs_lookup
(
  script_action_id smallint NOT NULL,
  mobs character varying(20) NOT NULL,
  CONSTRAINT script_action_mobs_lookup_script_action_id_mobs_pk PRIMARY KEY (script_action_id, mobs),
  CONSTRAINT script_action_mobs_lookup_script_action_id_fk FOREIGN KEY (script_action_id)
    REFERENCES ff.script_action (script_action_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ff.script_bundle
-- TODO add table description

DROP TABLE IF EXISTS ff.script_bundle CASCADE;

CREATE SEQUENCE ff.script_bundle_id_seq MINVALUE 0;

CREATE TABLE ff.script_bundle
(
  script_bundle_id smallint DEFAULT nextval('ff.script_bundle_id_seq') NOT NULL,
  name character varying(50) NOT NULL,
  CONSTRAINT script_bundle_script_bundle_id_pk PRIMARY KEY (script_bundle_id),
  CONSTRAINT script_bundle_name_un UNIQUE (name)
);

-- Table: ff.script_bundle_scripts_lookup
-- lookup table for script_bundles and their associated scriptss.

DROP TABLE IF EXISTS ff.script_bundle_scripts_lookup CASCADE;

CREATE TABLE ff.script_bundle_scripts_lookup
(
  script_bundle_id smallint NOT NULL,
  script_action_id smallint NOT NULL,
  CONSTRAINT script_bundle_scripts_lookup_script_bundle_id_script_action_id_pk PRIMARY KEY (script_bundle_id, script_action_id),
  CONSTRAINT script_bundle_scripts_lookup_script_bundle_id_fk FOREIGN KEY (script_bundle_id)
    REFERENCES ff.script_bundle (script_bundle_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT script_bundle_scripts_lookup_script_action_id_fk FOREIGN KEY (script_action_id)
    REFERENCES ff.script_action (script_action_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ff.door
-- TODO add table description

DROP TABLE IF EXISTS ff.door CASCADE;

CREATE SEQUENCE ff.door_id_seq MINVALUE 0;

CREATE TABLE ff.door
(
  door_id smallint DEFAULT nextval('ff.door_id_seq') NOT NULL,
  attribute_test character varying(2),
  direction character varying(5) NOT NULL,
  leads_to character varying(3),
  locked boolean NOT NULL,
  name character varying(20) NOT NULL,
  num_dice_roll smallint,
  title character varying(40) NOT NULL,
  CONSTRAINT door_door_id_pk PRIMARY KEY (door_id),
  CONSTRAINT door_direction_fk FOREIGN KEY (direction)
    REFERENCES ff.direction (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT door_name_un UNIQUE (name)
);

-- Table: ff.door_scripted_events_lookup
-- lookup table for doors and their associated scripted_eventss.

DROP TABLE IF EXISTS ff.door_scripted_events_lookup CASCADE;

CREATE TABLE ff.door_scripted_events_lookup
(
  door_id smallint NOT NULL,
  key character varying(20) NOT NULL,
  value character varying(50) NOT NULL,
  CONSTRAINT door_scripted_events_lookup_door_id_key_pk PRIMARY KEY (door_id, key),
  CONSTRAINT door_scripted_events_lookup_key_fk FOREIGN KEY (key)
    REFERENCES ff.event (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT door_scripted_events_lookup_value_fk FOREIGN KEY (value)
    REFERENCES ff.script_bundle (name) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ff.io_npc_data
-- TODO add table description

DROP TABLE IF EXISTS ff.io_npc_data CASCADE;

CREATE SEQUENCE ff.io_npc_data_id_seq MINVALUE 0;

CREATE TABLE ff.io_npc_data
(
  io_npc_data_id smallint DEFAULT nextval('ff.io_npc_data_id_seq') NOT NULL,
  behavior bigint,
  behavior_param decimal,
  climb_count decimal,
  collid_state bigint,
  collid_time bigint,
  critical decimal,
  cut boolean,
  cuts smallint,
  damages decimal,
  gender smallint,
  internal_script character varying(255) NOT NULL,
  internal_script_js character varying(255) NOT NULL,
  life decimal,
  mana decimal,
  maxlife decimal,
  maxmana decimal,
  name character varying(50) NOT NULL,
  npc_flags bigint,
  title character varying(50) NOT NULL,
  weapon text,
  xpvalue smallint,
  CONSTRAINT io_npc_data_io_npc_data_id_pk PRIMARY KEY (io_npc_data_id),
  CONSTRAINT io_npc_data_gender_fk FOREIGN KEY (gender)
    REFERENCES ff.gender (gender_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_npc_data_weapon_fk FOREIGN KEY (weapon)
    REFERENCES ff.io_item_data (name) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ff.io_npc_data_groups_lookup
-- lookup table for io_npc_datas and their associated groupss.

DROP TABLE IF EXISTS ff.io_npc_data_groups_lookup CASCADE;

CREATE TABLE ff.io_npc_data_groups_lookup
(
  io_npc_data_id smallint NOT NULL,
  group_id smallint NOT NULL,
  CONSTRAINT io_npc_data_groups_lookup_io_npc_data_id_group_id_pk PRIMARY KEY (io_npc_data_id, group_id),
  CONSTRAINT io_npc_data_groups_lookup_io_npc_data_id_fk FOREIGN KEY (io_npc_data_id)
    REFERENCES ff.io_npc_data (io_npc_data_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_npc_data_groups_lookup_group_id_fk FOREIGN KEY (group_id)
    REFERENCES ff.group (group_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ff.io_npc_data_attributes_lookup
-- lookup table for io_npc_datas and their associated attributess.

DROP TABLE IF EXISTS ff.io_npc_data_attributes_lookup CASCADE;

CREATE TABLE ff.io_npc_data_attributes_lookup
(
  io_npc_data_id smallint NOT NULL,
  key character varying(3) NOT NULL,
  value smallint NOT NULL,
  CONSTRAINT io_npc_data_attributes_lookup_io_npc_data_id_key_pk PRIMARY KEY (io_npc_data_id, key),
  CONSTRAINT io_npc_data_attributes_lookup_key_fk FOREIGN KEY (key)
    REFERENCES ff.attribute (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ff.io_npc_data_scripted_events_lookup
-- lookup table for io_npc_datas and their associated scripted_eventss.

DROP TABLE IF EXISTS ff.io_npc_data_scripted_events_lookup CASCADE;

CREATE TABLE ff.io_npc_data_scripted_events_lookup
(
  io_npc_data_id smallint NOT NULL,
  key character varying(20) NOT NULL,
  value character varying(50) NOT NULL,
  CONSTRAINT io_npc_data_scripted_events_lookup_io_npc_data_id_key_pk PRIMARY KEY (io_npc_data_id, key),
  CONSTRAINT io_npc_data_scripted_events_lookup_key_fk FOREIGN KEY (key)
    REFERENCES ff.event (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT io_npc_data_scripted_events_lookup_value_fk FOREIGN KEY (value)
    REFERENCES ff.script_bundle (name) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ff.room_bkup
-- TODO add table description

DROP TABLE IF EXISTS ff.room_bkup CASCADE;

CREATE SEQUENCE ff.room_bkup_id_seq MINVALUE 0;

CREATE TABLE ff.room_bkup
(
  room_bkup_id smallint DEFAULT nextval('ff.room_bkup_id_seq') NOT NULL,
  code character varying(3) NOT NULL,
  text smallint NOT NULL,
  CONSTRAINT room_bkup_room_bkup_id_pk PRIMARY KEY (room_bkup_id),
  CONSTRAINT room_bkup_code_un UNIQUE (code),
  CONSTRAINT room_bkup_text_fk FOREIGN KEY (text)
    REFERENCES ff.text (text_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ff.room_bkup_doors_lookup
-- lookup table for room_bkups and their associated doorss.

DROP TABLE IF EXISTS ff.room_bkup_doors_lookup CASCADE;

CREATE TABLE ff.room_bkup_doors_lookup
(
  room_bkup_id smallint NOT NULL,
  door_id smallint NOT NULL,
  CONSTRAINT room_bkup_doors_lookup_room_bkup_id_door_id_pk PRIMARY KEY (room_bkup_id, door_id),
  CONSTRAINT room_bkup_doors_lookup_room_bkup_id_fk FOREIGN KEY (room_bkup_id)
    REFERENCES ff.room_bkup (room_bkup_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT room_bkup_doors_lookup_door_id_fk FOREIGN KEY (door_id)
    REFERENCES ff.door (door_id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ff.room_bkup_exits_lookup
-- lookup table for room_bkups and their associated exitss.

DROP TABLE IF EXISTS ff.room_bkup_exits_lookup CASCADE;

CREATE TABLE ff.room_bkup_exits_lookup
(
  room_bkup_id smallint NOT NULL,
  key character varying(5) NOT NULL,
  value character varying(3) NOT NULL,
  CONSTRAINT room_bkup_exits_lookup_room_bkup_id_key_pk PRIMARY KEY (room_bkup_id, key),
  CONSTRAINT room_bkup_exits_lookup_key_fk FOREIGN KEY (key)
    REFERENCES ff.direction (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT room_bkup_exits_lookup_value_fk FOREIGN KEY (value)
    REFERENCES ff.room (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Table: ff.room_bkup_scripted_events_lookup
-- lookup table for room_bkups and their associated scripted_eventss.

DROP TABLE IF EXISTS ff.room_bkup_scripted_events_lookup CASCADE;

CREATE TABLE ff.room_bkup_scripted_events_lookup
(
  room_bkup_id smallint NOT NULL,
  key character varying(20) NOT NULL,
  value character varying(50) NOT NULL,
  CONSTRAINT room_bkup_scripted_events_lookup_room_bkup_id_key_pk PRIMARY KEY (room_bkup_id, key),
  CONSTRAINT room_bkup_scripted_events_lookup_key_fk FOREIGN KEY (key)
    REFERENCES ff.event (code) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT room_bkup_scripted_events_lookup_value_fk FOREIGN KEY (value)
    REFERENCES ff.script_bundle (name) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
);

