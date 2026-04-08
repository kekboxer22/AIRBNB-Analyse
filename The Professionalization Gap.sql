SELECT 
    city, 
    room_type,
    ROUND(AVG(price)::numeric, 2) AS avg_price,
    ROUND(SUM(number_of_reviews)::numeric / COUNT(*), 2) AS occupancy_proxy,
    ROUND((AVG(price) * (SUM(number_of_reviews)::numeric / COUNT(*)))::numeric, 2) AS revenue_index
FROM airbnb_final
GROUP BY city, room_type
HAVING COUNT(*) > 5
ORDER BY revenue_index DESC

Data Insight "The Professionalization Gap"
The data reveals a significant disparity between Entire homes/apartments and other room types.
    While the global count for apartments is massive ($98,333$), the high concentration in specific cities like London or Rome suggests a "professional host" dominance.
    These cities act as primary hubs, where a single room type dictates the market's liquidity and pricing power,
    moving Airbnb away from its original "shared room" concept toward a standardized short-term rental industry
