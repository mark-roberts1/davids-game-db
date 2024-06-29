CREATE TABLE IF NOT EXISTS game.statistic (
	id bigserial not null,
	type smallint not null,
	value bytea not null,
	PRIMARY KEY (id)
);
