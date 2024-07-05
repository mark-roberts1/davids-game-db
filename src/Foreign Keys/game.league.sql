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
END;
$$;
