
INSERT INTO game.identity_provider (id, name)
VALUES
	(1, 'Discord')
ON CONFLICT DO NOTHING;
