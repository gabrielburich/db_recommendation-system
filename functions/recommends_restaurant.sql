CREATE OR REPLACE FUNCTION recommends_restaurant (
    user_id              INTEGER,
    page_size            INTEGER,
    accepts_meal_voucher BOOLEAN,
    tp_restaurant_id     INTEGER,
    order_time           INTEGER,
    distance             INTEGER,
    tp_order_id          INTEGER,
    sit_place            BOOLEAN
)
RETURNS TABLE (
    id               INTEGER,
    name             VARCHAR,
    type             VARCHAR
)
LANGUAGE plpgsql AS $$
DECLARE
    result_calc RECORD;
    restaurant  RECORD;
BEGIN
    FOR result_calc IN (
        SELECT
               *
        FROM
            calc_similarity(
                user_id,
                accepts_meal_voucher,
                tp_restaurant_id,
                order_time,
                distance,
                tp_order_id,
                sit_place
            ) result
        ORDER BY result.similarity DESC
        LIMIT page_size
    ) LOOP
        SELECT * INTO restaurant FROM restaurant_information res WHERE res.id = result_calc.id;
        id := restaurant.id;
        name := restaurant.name;
        type := restaurant.tp_restaurant;
        RETURN NEXT;
	END LOOP;
END; $$