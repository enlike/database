



CREATE OR REPLACE FUNCTION chng_dni_bolezni() RETURNS TRIGGER AS
$$
BEGIN
	IF (TG_OP = 'INSERT') THEN
		UPDATE reception SET treatment_dates = treatment_dates + 1
			WHERE id = NEW.director_id;
		RETURN NEW;
	ELSE
		UPDATE reception SET treatment_dates = treatment_dates - 1
			WHERE id = OLD.director_id;
		RETURN OLD;
	END IF;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER increment_dni_bolezni
AFTER INSERT OR DELETE
	ON 
	FOR EACH ROW
	EXECUTE PROCEDURE chng_dni_bolezni();


