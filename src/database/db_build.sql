BEGIN;

DROP TABLE IF EXISTS people, lunch, bookings;

CREATE TABLE IF NOT EXISTS people (
  id    SERIAL   PRIMARY KEY,
  first_name   TINYTEXT     NOT NULL,
  last_name    TINYTEXT     NOT NULL,
  organisation TEXT,
  student BOOLEAN
)

CREATE TABLE IF NOT EXISTS bookings (
  id   SERIAL   PRIMARY KEY,
  lunch_id     INTEGER REFERENCES lunch (lunch_id) NOT NULL,
  people_id    INTEGER REFERENCES people (people_id) NOT NULL,
  paid BOOLEAN
)

CREATE TABLE IF NOT EXISTS lunch (
  id   SERIAL   PRIMARY KEY,
  cuisine    TEXT     NOT NULL,
  dates      DATE     NOT NULL
)

INSERT INTO lunch (cuisine, dates) VALUES('Ethopian', '2018-12-12');
INSERT INTO lunch (cuisine, dates) VALUES('Turkish', '2018-12-19');
INSERT INTO lunch (cuisine, dates) VALUES('Lebanese', '2018-12-26');

COMMIT;
