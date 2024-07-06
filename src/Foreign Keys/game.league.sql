DO $$
BEGIN
	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_league_country'
	) THEN
		ALTER TABLE
			game.league
		ADD CONSTRAINT
			fk_league_country
		FOREIGN KEY (country_id)
		REFERENCES game.country (id)
		ON DELETE CASCADE;
	END IF;

	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_league_league_type'
	) THEN
		ALTER TABLE
			game.league
		ADD CONSTRAINT
			fk_league_league_type
		FOREIGN KEY (league_type_id)
		REFERENCES game.league_type (id)
		ON DELETE CASCADE;
	END IF;
END;
$$;
