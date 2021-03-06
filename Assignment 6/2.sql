CREATE OR REPLACE FUNCTION q2() RETURNS TRIGGER AS $q2$
BEGIN
    IF NEW.emp_id NOT LIKE 'E%' THEN
        RAISE EXCEPTION 'INVALID EMPLOYEE ID';
    END IF;
    RETURN NEW;
END;
$q2$ LANGUAGE plpgsql;

CREATE TRIGGER q2 BEFORE INSERT ON nurse
    FOR EACH ROW EXECUTE FUNCTION q2();
