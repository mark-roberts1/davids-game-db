DO $$
BEGIN
	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_statistic_statistic_type'
	) THEN
		ALTER TABLE
			game.statistic
		ADD CONSTRAINT
			fk_statistic_statistic_type
		FOREIGN KEY (statistic_type_id)
		REFERENCES game.statistic_type (id)
		ON DELETE CASCADE;
	END IF;

	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_statistic_statistic_data_type'
	) THEN
		ALTER TABLE
			game.statistic
		ADD CONSTRAINT
			fk_statistic_statistic_data_type
		FOREIGN KEY (statistic_data_type_id)
		REFERENCES game.statistic_data_type (id)
		ON DELETE CASCADE;
	END IF;
END;
$$;
