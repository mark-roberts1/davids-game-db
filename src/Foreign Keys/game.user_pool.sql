DO $$
BEGIN
	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_user_pool_user'
	)
	BEGIN
		ALTER TABLE
			game.user_pool
		ADD CONSTRAINT
			fk_user_pool_user
		FOREIGN KEY (user_id)
		REFERENCES game.user (id);
	END;

	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_user_pool_pool'
	)
	BEGIN
		ALTER TABLE
			game.user_pool
		ADD CONSTRAINT
			fk_user_pool_pool
		FOREIGN KEY (pool_id)
		REFERENCES game.pool (id);
	END;
END;
$$;
