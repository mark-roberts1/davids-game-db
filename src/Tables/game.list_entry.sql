CREATE TABLE IF NOT EXISTS game.list_entry (
	id bigserial not null,
	list_id bigint not null,
	team_id bigint not null,
	PRIMARY KEY (id)
);

CREATE INDEX ix_list_entry__list_id ON game.list_entry (list_id);
CREATE INDEX ix_list_entry__team_id ON game.list_entry (team_id);
