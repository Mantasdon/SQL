CREATE FUNCTION mado83.zaidejas_check()
  RETURNS trigger
  LANGUAGE plpgsql
  AS
$$
BEGIN
    IF NEW.Tautybe = 'Rusija' THEN
        RAISE EXCEPTION 'Dalyvavimas Rusijos tautieciams draudziamas';
    END IF;

    IF NEW.Taskai IS NULL THEN
      NEW.Taskai := 1;
    END IF;

    RETURN NEW;
END;
$$

CREATE TRIGGER zaidejas_check BEFORE INSERT OR UPDATE ON mado8357.Zaidejas
    FOR EACH ROW EXECUTE FUNCTION mado8357.zaidejas_check();



CREATE FUNCTION mado8357.steigia_check()
  RETURNS trigger
  LANGUAGE plpgsql
  AS
$$
BEGIN
    IF (NEW.Remejai IS NULL) AND (NEW.turnyrai IS NOT NULL)THEN
      RAISE EXCEPTION 'Turnyras negali vykti be remeju';
    END IF;

    RETURN NEW;
END;
$$

CREATE TRIGGER steigia_check BEFORE INSERT OR UPDATE ON mado8357.Steigia
    FOR EACH ROW EXECUTE FUNCTION mado8357.steigia_check();