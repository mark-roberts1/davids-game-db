DO $$
BEGIN
	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_season_league'
	) THEN
		ALTER TABLE
			game.season
		ADD CONSTRAINT
			fk_season_league
		FOREIGN KEY (league_id)
		REFERENCES game.league (id)
		ON DELETE CASCADE;
	END IF;
END;
$$;
