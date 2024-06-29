DO $$
BEGIN
	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_team_venue_team'
	)
	BEGIN
		ALTER TABLE
			game.team_venue
		ADD CONSTRAINT
			fk_team_venue_team
		FOREIGN KEY (team_id)
		REFERENCES game.team (id);
	END;

	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_team_venue_venue'
	)
	BEGIN
		ALTER TABLE
			game.team_venue
		ADD CONSTRAINT
			fk_team_venue_venue
		FOREIGN KEY (venue_id)
		REFERENCES game.venue (id);
	END;
END;
$$;
