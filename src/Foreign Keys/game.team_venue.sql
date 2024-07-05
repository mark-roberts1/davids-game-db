DO $$
BEGIN
	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_team_venue_team'
	) THEN
		ALTER TABLE
			game.team_venue
		ADD CONSTRAINT
			fk_team_venue_team
		FOREIGN KEY (team_id)
		REFERENCES game.team (id)
		ON DELETE CASCADE;
	END IF;

	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_team_venue_venue'
	) THEN
		ALTER TABLE
			game.team_venue
		ADD CONSTRAINT
			fk_team_venue_venue
		FOREIGN KEY (venue_id)
		REFERENCES game.venue (id)
		ON DELETE CASCADE;
	END IF;
END;
$$;
