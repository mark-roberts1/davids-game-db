CREATE TABLE IF NOT EXISTS game.pool (
	id bigserial not null,
	name character varying not null,
	league_id integer,
	season character varying not null,
	discord_server_id character varying,
	join_code character varying not null,
	PRIMARY KEY(id)
);

CREATE INDEX IF NOT EXISTS ix_pool__discord_server_id ON game.pool (discord_server_id);