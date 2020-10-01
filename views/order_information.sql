CREATE OR REPLACE VIEW order_information AS
    SELECT
        o.id            AS "id",
        o.user_id       AS "userId",
        r.id            AS "restaurantId",
        row_to_json(m)  AS "meal"
    FROM "order" o, restaurant_information r, meal m
    WHERE o.meal_id = m.id AND o.restaurant_id = r.id;