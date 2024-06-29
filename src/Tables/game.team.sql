CREATE TABLE IF NOT EXISTS game.team (
	id bigserial not null,
	name character varying,
	code character varying,
	logo_link character varying,
	country_id smallint,
	source_id bigint,
	PRIMARY KEY(id)
);

CREATE INDEX ix_team__source_id ON game.team (source_id);
