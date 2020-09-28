CREATE OR REPLACE VIEW user_preference_data AS
    SELECT
           user_id              as "userId",
           order_time_weight    as "orderTimeWeight",
           order_time_tolerance as "orderTimeTolerance",
           distance_weight      as "distanceWeight",
           distance_tolerance   as "distanceTolerance"
    FROM
        user_preference