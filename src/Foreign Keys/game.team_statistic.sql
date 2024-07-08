DO $$
BEGIN
	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_team_statistic_team'
	) THEN
		ALTER TABLE
			game.team_statistic
		ADD CONSTRAINT
			fk_team_statistic_team
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
			constraint_name = 'fk_team_statistic_statistic'
	) THEN
		ALTER TABLE
			game.team_statistic
		ADD CONSTRAINT
			fk_team_statistic_statistic
		FOREIGN KEY (statistic_id)
		REFERENCES game.statistic (id)
		ON DELETE CASCADE;
	END IF;

	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_team_statistic_league'
	) THEN
		ALTER TABLE
			game.team_statistic
		ADD CONSTRAINT
			fk_team_statistic_league
		FOREIGN KEY (league_id)
		REFERENCES game.league (id)
		ON DELETE CASCADE;
	END IF;

	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_team_statistic_season'
	) THEN
		ALTER TABLE
			game.team_statistic
		ADD CONSTRAINT
			fk_team_statistic_season
		FOREIGN KEY (league_id, year)
		REFERENCES game.season (league_id, year)
		ON DELETE CASCADE;
	END IF;
END;
$$;
