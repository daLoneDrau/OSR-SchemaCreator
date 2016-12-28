-- Schema: avalon
DROP SCHEMA IF EXISTS avalon CASCADE;
CREATE SCHEMA avalon;

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
  spell_name character varying(10) NOT NULL,
  title character varying(40) NOT NULL,
  CONSTRAINT magic_type_magic_type_id_pk PRIMARY KEY (magic_type_id),
  CONSTRAINT magic_type_code_un UNIQUE (code),
  CONSTRAINT magic_type_spell_name_un UNIQUE (spell_name),
  CONSTRAINT magic_type_title_un UNIQUE (title)
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
  weight_class character varying(10) NOT NULL,
  CONSTRAINT vulnerability_vulnerability_id_pk PRIMARY KEY (vulnerability_id),
  CONSTRAINT vulnerability_code_un UNIQUE (code),
  CONSTRAINT vulnerability_harm_name_un UNIQUE (harm_name),
  CONSTRAINT vulnerability_weight_class_un UNIQUE (weight_class)
);

