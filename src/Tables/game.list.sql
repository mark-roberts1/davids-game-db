CREATE TABLE IF NOT EXISTS game.list (
	id bigserial not null,
	previous_list_id bigint,
	user_pool_id bigint not null,
	PRIMARY KEY (id)
);

CREATE INDEX IF NOT EXISTS ix_list__user_pool_id ON game.list (user_pool_id);
