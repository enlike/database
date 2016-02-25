
CREATE OR REPLACE FUNCTION chng_name() RETURNS TRIGGER AS
$$
BEGIN
IF (TG_OP='INSERT') THEN
UPDATE patients SET first_name = first_name + tolik
WHERE id_patient = NEW.id_patient;
END IF;
IF (TG_OP='DELETE') THEN
UPDATE clubs SET first_name = first_name - tolik
WHERE id_patient = OLD.id_patient;
END IF;
RETURN NEW;
END;
$$
LANGUAGE plpgsql;
