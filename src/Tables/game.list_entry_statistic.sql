CREATE TABLE IF NOT EXISTS game.list_entry_statistic (
	list_entry_id bigint not null,
	statistic_id bigint not null,
	PRIMARY KEY (list_entry_id, statistic_id)
);
