DO $$
BEGIN
	IF NOT EXISTS (
		SELECT
			constraint_name
		FROM
			information_schema.referential_constraints
		WHERE
			constraint_name = 'fk_venue_surface_type'
	) THEN
		ALTER TABLE
			game.venue
		ADD CONSTRAINT
			fk_venue_surface_type
		FOREIGN KEY (surface_type_id)
		REFERENCES game.surface_type (id)
		ON DELETE CASCADE;
	END IF;
END;
$$;
