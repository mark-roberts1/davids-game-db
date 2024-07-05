CREATE TABLE IF NOT EXISTS game.statistic (
	id bigserial not null,
	statistic_type_id smallint not null,
	value character varying not null,
	statistic_data_type_id smallint not null,
	PRIMARY KEY (id)
);
