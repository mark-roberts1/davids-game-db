CREATE TABLE IF NOT EXISTS game.venue (
	id bigserial not null,
	name character varying not null,
	capacity integer,
	surface_type_id smallint,
	image_link character varying,
	source_id bigint,
	PRIMARY KEY(id)
);

CREATE INDEX IF NOT EXISTS ix_venue__source_id ON game.venue (source_id);
