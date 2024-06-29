DO $$
BEGIN
	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_list_entry_statistic_list_entry'
	) THEN
		ALTER TABLE
			game.list_entry_statistic
		ADD CONSTRAINT
			fk_list_entry_statistic_list_entry
		FOREIGN KEY (list_entry_id)
		REFERENCES game.list_entry (id);
	END IF;

	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_list_entry_statistic_statistic'
	) THEN
		ALTER TABLE
			game.list_entry_statistic
		ADD CONSTRAINT
			fk_list_entry_statistic_statistic
		FOREIGN KEY (statistic_id)
		REFERENCES game.statistic (id);
	END IF;
END;
$$;
