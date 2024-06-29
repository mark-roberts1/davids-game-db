DO $$
BEGIN
	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_pool_league'
	)
	BEGIN
		ALTER TABLE
			game.pool
		ADD CONSTRAINT
			fk_pool_league
		FOREIGN KEY (league_id)
		REFERENCES game.pool (id);
	END;
END;
$$;
