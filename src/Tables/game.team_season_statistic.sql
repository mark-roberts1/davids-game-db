CREATE TABLE IF NOT EXISTS game.team_season_statistic (
	team_id bigint not null,
	season character varying not null,
	statistic_id bigint not null,
	PRIMARY KEY (team_id, season, statistic_id)
);