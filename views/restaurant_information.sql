CREATE OR REPLACE VIEW restaurant_information AS
    SELECT
           res.id       as id,
           res.name     as name,
           tp_res.name  as tp_restaurant
    FROM
        restaurant res, tp_restaurant tp_res
    WHERE
        res.tp_restaurant_id = tp_res.id