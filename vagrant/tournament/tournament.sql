-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

DROP DATABASE IF EXISTS tournament;
CREATE DATABASE tournament;
\c tournament


CREATE TABLE Players (
	ID SERIAL PRIMARY KEY,
	name VARCHAR NOT NULL
);

CREATE TABLE Matches (
	ID SERIAL PRIMARY KEY,
	winner INT REFERENCES Players(ID),
	loser INT REFERENCES Players(ID),
	result INT
);