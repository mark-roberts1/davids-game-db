DO $$
BEGIN
	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_team_season_league_team'
	) THEN
		ALTER TABLE
			game.team_season_league
		ADD CONSTRAINT
			fk_team_season_league_team
		FOREIGN KEY (team_id)
		REFERENCES game.team (id);
	END IF;

	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_team_season_league_league'
	) THEN
		ALTER TABLE
			game.team_season_league
		ADD CONSTRAINT
			fk_team_season_league_league
		FOREIGN KEY (league_id)
		REFERENCES game.league (id);
	END IF;
END;
$$;
