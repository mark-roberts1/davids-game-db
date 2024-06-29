DO $$
BEGIN
	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_user_identity_provider'
	)
	BEGIN
		ALTER TABLE
			game.user
		ADD CONSTRAINT
			fk_user_identity_provider
		FOREIGN KEY (identity_provider_id)
		REFERENCES game.identity_provider (id);
	END;
END;
$$;
