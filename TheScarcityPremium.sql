```sql
SELECT 
    city, 
    room_type,
    COUNT(*) AS listings_count,
    SUM(number_of_reviews) AS total_reviews_in_city,
    ROUND(SUM(number_of_reviews)::numeric / COUNT(*), 2) AS review_intensity,
    SUM(COUNT(*)) OVER(PARTITION BY room_type) AS global_type_count
FROM airbnb_final af
GROUP BY city, room_type
ORDER BY review_intensity DESC;


## **"The Scarcity Premium""**
The data shows an inverse correlation between supply volume and review intensity. 
In markets like **Amsterdam**, strict regulations and limited supply for specific categories (Hotels and Private Rooms)
create a "bottleneck effect," where a tiny number of listings absorb a massive amount of traveler demand.
Meanwhile, the saturated **Entire home/apt** markets in Rome and Barcelona show steady but significantly lower individual listing performance,
indicating that high supply naturally dilutes the "per-listing" activity level.
