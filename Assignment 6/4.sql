-- Create a trigger on Room table. If the floor and availability in new record is empty
-- then raise application error and update the floor by 1 and availability “Yes”.

CREATE OR REPLACE FUNCTION q4() RETURNS TRIGGER AS $q4$
BEGIN
    IF NEW.floor1 is NULL AND new.availability IS NULL THEN
    raise notice 'RECORD EMPTY!';
        NEW.floor1=1;
        NEW.availability ='Yes';
    END IF;
    RETURN NEW;
END;
$q4$ LANGUAGE plpgsql;

CREATE TRIGGER q4 BEFORE INSERT ON room
    FOR EACH ROW EXECUTE FUNCTION q4();
