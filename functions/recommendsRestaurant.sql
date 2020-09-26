CREATE OR REPLACE FUNCTION recommendsRestaurant (
    user_id               integer,
    page_size            integer,
    accepts_meal_voucher boolean,
    tp_restaurant_id     integer,
    order_time           integer,
    distance             integer,
    tp_order_id          integer,
    sit_place            boolean
)
RETURNS TABLE (
    id               integer,
    name             varchar,
    tp_restaurant    varchar
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
            calcsimilarity(
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
        tp_restaurant := restaurant.tp_restaurant;
        RETURN NEXT;
	END LOOP;
END; $$