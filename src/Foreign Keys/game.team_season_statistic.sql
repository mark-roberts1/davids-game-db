DO $$
BEGIN
	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_team_season_statistic_team'
	) THEN
		ALTER TABLE
			game.team_season_statistic
		ADD CONSTRAINT
			fk_team_season_statistic_team
		FOREIGN KEY (team_id)
		REFERENCES game.team (id);
	END IF;

	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_team_season_statistic_statistic'
	) THEN
		ALTER TABLE
			game.team_season_statistic
		ADD CONSTRAINT
			fk_team_season_statistic_statistic
		FOREIGN KEY (statistic_id)
		REFERENCES game.statistic (id);
	END IF;
END;
$$;
