DO $$
BEGIN
	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_team_country'
	)
	BEGIN
		ALTER TABLE
			game.team
		ADD CONSTRAINT
			fk_team_country
		FOREIGN KEY (country_id)
		REFERENCES game.country (id);
	END;
END;
$$;
