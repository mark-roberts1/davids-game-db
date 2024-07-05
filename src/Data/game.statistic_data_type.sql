
INSERT INTO game.statistic_data_type (id, name)
VALUES
	(1, 'decimal'),
	(2, 'integer'),
	(3, 'string'),
	(4, 'boolean')
ON CONFLICT DO NOTHING;
