CREATE TABLE IF NOT EXISTS game.user_pool (
	id bigserial not null,
	pool_id bigint not null,
	user_id bigint not null,
	attributes bigint not null,
	PRIMARY KEY (id)
);

CREATE UNIQUE INDEX ix_user_pool__pool_id__user_id ON game.user_pool (pool_id, user_id);
