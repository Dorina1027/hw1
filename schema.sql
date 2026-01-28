DROP TABLE IF EXISTS studio;
DROP TABLE IF EXISTS movie;
DROP TABLE IF EXISTS actor;
DROP TABLE IF EXISTS role;
DROP TABLE IF EXISTS agent;



CREATE TABLE studio (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE movie (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    year_released TEXT,
    MPAA_rating TEXT,
    studio_id INTEGER
);

CREATE TABLE actor (
   id INTEGER PRIMARY KEY AUTOINCREMENT,
   first_name TEXT,
   last_name TEXT,
   agent_id INTEGER 
);

CREATE TABLE agent (
   id INTEGER PRIMARY KEY AUTOINCREMENT,
   first_name TEXT,
   last_name TEXT
);

CREATE TABLE role (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    movie_id INTEGER,
    actor_id INTEGER,
    character_name TEXT
);