CREATE OR REPLACE FUNCTION recommendsRestaurant (
    page_index           integer,
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
LANGUAGE plpgsql
AS $$
DECLARE
    -- variables
BEGIN
    id := 1;
    name := 'test';
    tp_restaurant := 'food';
    return next;
END; $$