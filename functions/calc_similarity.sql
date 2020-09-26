CREATE OR REPLACE FUNCTION calc_similarity (
    puser_id             INTEGER,
    accepts_meal_voucher BOOLEAN,
    tp_restaurant_id     INTEGER,
    order_time           INTEGER,
    distance             INTEGER,
    tp_order_id          INTEGER,
    sit_place            BOOLEAN
)
RETURNS TABLE (
    id               INTEGER,
    similarity       DECIMAL
)
LANGUAGE plpgsql AS $$
DECLARE
    last_case record;
BEGIN
    FOR last_case IN (SELECT * FROM last_cases ) LOOP
        id := last_case.restaurant_id;
        similarity := 0;

        -- Accepts Meal Voucher
        IF accepts_meal_voucher = last_case.accepts_meal_voucher THEN
            similarity := similarity + 0.8;
        END IF;

        -- Sit Place
        IF sit_place = last_case.sit_place THEN
            similarity := similarity + 0.6;
        END IF;

        -- Order Type
        IF tp_order_id = last_case.tp_order_id THEN
            similarity := similarity + 0.7;
        END IF;

        -- Order time plus tolerance is less than or equal to the time of the last case
        IF order_time + (SELECT get_user_preference(puser_id, 'order_time_tolerance')) <= last_case.order_time THEN
            similarity := similarity + (SELECT get_user_preference(puser_id, 'order_time_weight'));
        END IF;

        -- Distance plus tolerance is less than or equal to the distance of the last case
        IF distance + (SELECT get_user_preference(puser_id, 'distance_tolerance')) <= last_case.distance THEN
            similarity := similarity + (SELECT get_user_preference(puser_id, 'distance_weight'));
        END IF;

        -- Restaurant Type
        similarity := similarity + (SELECT value FROM tp_restaurant_similarity WHERE a_id = tp_restaurant_id AND b_id = last_case.tp_restaurant_id) * 0.9;

        RETURN NEXT;
	END LOOP;
END; $$