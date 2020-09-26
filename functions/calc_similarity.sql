CREATE OR REPLACE FUNCTION calc_similarity (
    puser_id             integer,
    accepts_meal_voucher boolean,
    tp_restaurant_id     integer,
    order_time           integer,
    distance             integer,
    tp_order_id          integer,
    sit_place            boolean
)
RETURNS TABLE (
    id               integer,
    similarity       decimal
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
        IF order_time + (SELECT order_time_tolerance FROM user_preference WHERE user_id = puser_id) <= last_case.order_time THEN
            similarity := similarity + 0.4;
        END IF;

        -- Distance plus tolerance is less than or equal to the distance of the last case
        IF distance + (SELECT distance_tolerance FROM user_preference WHERE user_id = puser_id) <= last_case.distance THEN
            similarity := similarity + 0.9;
        END IF;

        -- Restaurant Type
        similarity := similarity + (SELECT value FROM tp_restaurant_similarity WHERE a_id = tp_restaurant_id AND b_id = last_case.tp_restaurant_id) * 0.9;

        RETURN NEXT;
	END LOOP;
END; $$