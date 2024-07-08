CREATE TABLE IF NOT EXISTS game.team_statistic (
	id bigserial not null,
	team_id bigint not null,
	league_id int not null,
	year smallint not null,
	week date not null,
	statistic_id bigint not null,
	PRIMARY KEY (id)
);

CREATE INDEX IF NOT EXISTS ix_team_statistic__team_id ON game.team_statistic (team_id, year);
CREATE INDEX IF NOT EXISTS ix_team_statistic__league_id ON game.team_statistic (league_id, year);
