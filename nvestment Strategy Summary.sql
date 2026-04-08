SELECT 
    city, 
    room_type,
    COUNT(*) AS total_listings,
    ROUND(AVG(price)::numeric, 2) AS avg_nightly_price,
    ROUND(SUM(number_of_reviews)::numeric / COUNT(*), 2) AS occupancy_proxy,
    ROUND((AVG(price) * (SUM(number_of_reviews)::numeric / COUNT(*)))::numeric, 2) AS revenue_index
FROM airbnb_final
WHERE city IN ('Amsterdam', 'Rome') 
  AND room_type = 'Private room'
GROUP BY city, room_type;

**
  "The Amsterdam Phenomenon:** With a `review_intensity` of **195.49**, private rooms in Amsterdam are the ultimate cash cows. 
The high turnover compensates for the lower price point compared to luxury villas, leading to a massive `revenue_index` of **32,690**.
**The Rome Stability:** Rome offers a safer, more voluminous market (**7,240** listings). 
It's the perfect secondary location for a "dense" rental strategy where the goal is consistent, year-round booking.
The Maintenance Trade-off:** High density equals high wear and tear. While the income is superior, the operational cost
  (utilities and repairs) will be significantly higher than in a single luxury unit.
