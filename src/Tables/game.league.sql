CREATE TABLE IF NOT EXISTS game.league (
	id serial not null,
	name character varying not null,
	type smallint not null,
	logo_link character varying,
	country_id smallint,
	source_id bigint,
	PRIMARY KEY (id)
);

CREATE INDEX ix_league__source_id ON game.league (source_id);