CREATE TABLE IF NOT EXISTS game.season (
	league_id int not null,
	year smallint not null,
	start_date date not null,
	end_date date not null,
	current boolean not null,
	PRIMARY KEY(league_id, year)
);
