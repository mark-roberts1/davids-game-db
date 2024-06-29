DO $$
BEGIN
	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_user_pool_user'
	) THEN
		ALTER TABLE
			game.user_pool
		ADD CONSTRAINT
			fk_user_pool_user
		FOREIGN KEY (user_id)
		REFERENCES game.user (id);
	END IF;

	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_user_pool_pool'
	) THEN
		ALTER TABLE
			game.user_pool
		ADD CONSTRAINT
			fk_user_pool_pool
		FOREIGN KEY (pool_id)
		REFERENCES game.pool (id);
	END IF;
END;
$$;
