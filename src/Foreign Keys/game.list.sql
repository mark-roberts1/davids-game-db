DO $$
BEGIN
	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_list_list'
	) THEN
		ALTER TABLE
			game.list
		ADD CONSTRAINT
			fk_list_list
		FOREIGN KEY (previous_list_id)
		REFERENCES game.list (id)
		ON DELETE CASCADE;
	END IF;

	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_list_user_pool'
	) THEN
		ALTER TABLE
			game.list
		ADD CONSTRAINT
			fk_list_user_pool
		FOREIGN KEY (user_pool_id)
		REFERENCES game.user_pool (id)
		ON DELETE CASCADE;
	END IF;
END;
$$;
