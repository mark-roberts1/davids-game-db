CREATE TABLE IF NOT EXISTS game.user (
	id bigserial not null,
	identity_provider_id smallint not null,
	external_id character varying not null,
	name character varying not null,
	avatar character varying not null,
	PRIMARY KEY(id)
);

CREATE INDEX IF NOT EXISTS ix_user__identity_provider_id__external_id ON game.user (identity_provider_id, external_id);
