CREATE TABLE IF NOT EXISTS game.team_venue (
	team_id bigint not null,
	venue_id bigint not null,
	PRIMARY KEY (team_id, venue_id)
);
