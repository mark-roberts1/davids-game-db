CREATE TABLE IF NOT EXISTS game.team_season_league (
	league_id integer not null,
	team_id bigint not null,
	season character varying not null,
	PRIMARY KEY (league_id, team_id, season)
);
