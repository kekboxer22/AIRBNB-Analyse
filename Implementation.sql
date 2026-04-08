SELECT 
    city, 
    room_type,
    ROUND(AVG(price)::numeric, 2) AS avg_price,
    ROUND(SUM(number_of_reviews)::numeric / COUNT(*), 2) AS occupancy_proxy,
    ROUND((AVG(price) * (SUM(number_of_reviews)::numeric / COUNT(*)))::numeric, 2) AS revenue_index
FROM airbnb_final
GROUP BY city, room_type
HAVING COUNT(*) > 5
ORDER BY revenue_index DESC;