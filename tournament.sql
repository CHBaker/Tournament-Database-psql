DROP DATABASE IF EXISTS tournament;

CREATE DATABASE tournament;
\c tournament;

DROP TABLE IF EXISTS player_rec;

CREATE TABLE player_rec(
id SERIAL PRIMARY KEY,
name TEXT UNIQUE
);

DROP TABLE IF EXISTS match_rec;

CREATE TABLE match_rec(
win_id SERIAL REFERENCES player_rec(id),
name TEXT REFERENCES player_rec(name),
wins INTEGER DEFAULT 0,
matches INTEGER DEFAULT 0
);