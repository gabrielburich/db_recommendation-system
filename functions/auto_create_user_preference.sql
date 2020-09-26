CREATE FUNCTION auto_create_user_preference()
RETURNS trigger AS $emp_stamp$
BEGIN
    -- Using default values
    INSERT INTO user_preference (user_id) values (NEW.id);
    RETURN NEW;
END;
$emp_stamp$ LANGUAGE plpgsql