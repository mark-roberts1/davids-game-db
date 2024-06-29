DO $$
BEGIN
	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_list_list'
	)
	BEGIN
		ALTER TABLE
			game.list
		ADD CONSTRAINT
			fk_list_list
		FOREIGN KEY (previous_list_id)
		REFERENCES game.list (id);
	END;

	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_list_user_pool'
	)
	BEGIN
		ALTER TABLE
			game.list
		ADD CONSTRAINT
			fk_list_user_pool
		FOREIGN KEY (user_pool_id)
		REFERENCES game.user_pool (id);
	END;
END;
$$;
