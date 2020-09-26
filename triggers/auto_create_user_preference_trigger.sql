CREATE TRIGGER auto_create_user_preference_trigger AFTER INSERT ON "user"
    FOR EACH ROW EXECUTE PROCEDURE auto_create_user_preference();