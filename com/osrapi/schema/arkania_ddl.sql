-- Schema: arkania
DROP SCHEMA IF EXISTS arkania CASCADE;
CREATE SCHEMA arkania;

-- Table: arkania.attribute
-- TODO add table description

DROP TABLE IF EXISTS arkania.attribute CASCADE;

CREATE SEQUENCE arkania.attribute_id_seq MINVALUE 0;

CREATE TABLE arkania.attribute
(
  attribute_id smallint DEFAULT nextval('arkania.attribute_id_seq') NOT NULL,
  code character varying(2) NOT NULL,
  description text NOT NULL,
  is_flaw boolean NOT NULL,
  name character varying(15) NOT NULL,
  CONSTRAINT attribute_attribute_id_pk PRIMARY KEY (attribute_id),
  CONSTRAINT attribute_code_un UNIQUE (code),
  CONSTRAINT attribute_description_un UNIQUE (description),
  CONSTRAINT attribute_name_un UNIQUE (name)
);

-- Table: arkania.hero
-- TODO add table description

DROP TABLE IF EXISTS arkania.hero CASCADE;

CREATE SEQUENCE arkania.hero_id_seq MINVALUE 0;

CREATE TABLE arkania.hero
(
  hero_id smallint DEFAULT nextval('arkania.hero_id_seq') NOT NULL,
  acrophobia decimal NOT NULL,
  agility decimal NOT NULL,
  avarice decimal NOT NULL,
  birth_day smallint NOT NULL,
  birth_moon smallint NOT NULL,
  charisma decimal NOT NULL,
  claustrophobia decimal NOT NULL,
  courage decimal NOT NULL,
  curiousity decimal NOT NULL,
  dexterity decimal NOT NULL,
  intuition decimal NOT NULL,
  necrophobia decimal NOT NULL,
  strength decimal NOT NULL,
  superstition decimal NOT NULL,
  violent_temper decimal NOT NULL,
  wisdom decimal NOT NULL,
  CONSTRAINT hero_hero_id_pk PRIMARY KEY (hero_id)
);

