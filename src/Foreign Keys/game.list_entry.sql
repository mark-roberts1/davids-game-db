DO $$
BEGIN
	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_list_entry_list'
	)
	BEGIN
		ALTER TABLE
			game.list_entry
		ADD CONSTRAINT
			fk_list_entry_list
		FOREIGN KEY (list_id)
		REFERENCES game.list (id);
	END;

	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_list_entry_team'
	)
	BEGIN
		ALTER TABLE
			game.list_entry
		ADD CONSTRAINT
			fk_list_entry_team
		FOREIGN KEY (team_id)
		REFERENCES game.team (id);
	END;
END;
$$;
