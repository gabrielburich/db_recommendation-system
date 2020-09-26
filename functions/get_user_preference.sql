CREATE OR REPLACE FUNCTION get_user_preference (
    puser_id             INTEGER,
    preference           VARCHAR
)
RETURNS NUMERIC AS $value$
DECLARE
    value NUMERIC;
    sql_select VARCHAR;
BEGIN
    sql_select := 'select ' || preference || ' from user_preference where user_id = ' || puser_id;
    EXECUTE sql_select INTO value;
    RETURN value;
END;
$value$ LANGUAGE plpgsql