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
id SERIAL PRIMARY KEY,
winner INTEGER, FOREIGN KEY(winner)
                REFERENCES player_rec(id),

loser INTEGER, FOREIGN KEY(loser)
               REFERENCES player_rec(id)
);

DROP VIEW IF EXISTS standings_view;

CREATE VIEW standings_view AS
SELECT player_rec.id, player_rec.name,

            (SELECT COUNT(match_rec.winner)
             FROM match_rec
             WHERE player_rec.id = match_rec.winner)
             AS wins,

            (SELECT COUNT(match_rec.id)
             FROM match_rec
             WHERE player_rec.id = match_rec.winner
             OR player_rec.id = match_rec.loser)
            AS matches

FROM player_rec
ORDER BY wins,matches;