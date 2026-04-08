SELECT 
    city, 
    room_type,
    COUNT(*) AS listings_count,
    ROUND(AVG(price), 2) AS avg_price,
    ROUND(SUM(number_of_reviews)::numeric / COUNT(*), 2) AS review_intensity,
    ROUND((AVG(price) * (SUM(number_of_reviews)::numeric / COUNT(*)))::numeric, 2) AS estimated_revenue_index
FROM airbnb_final af
GROUP BY city, room_type
HAVING COUNT(*) > 5
ORDER BY estimated_revenue_index DESC

 "The Revenue Duality 
Your analysis reveals two distinct paths to high revenue in the short-term rental market.
  The **Luxury Path** (seen in Bangkok) relies on high margins per stay, even if the assets aren't constantly occupied.
  The **"Efficiency Path"** (seen in Amsterdam) relies on extreme volume and turnover. Interestingly, 
  "Shared rooms" in almost every city sit at the bottom of the index, proving that while they might be "active," they are the least 
  economically efficient use of space compared to professionalized hotel rooms or entire apartments
