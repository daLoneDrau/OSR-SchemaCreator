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

