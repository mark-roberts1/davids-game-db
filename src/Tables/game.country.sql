CREATE TABLE IF NOT EXISTS game.country (
	id smallserial not null,
	name character varying not null,
	code character varying not null,
	flag_link character varying,
	PRIMARY KEY(id)
);

CREATE INDEX ix_country__name ON game.country (name);
