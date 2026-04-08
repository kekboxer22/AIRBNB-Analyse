Airbnb Market Analytics: Investment & Revenue Insights

 Project Overview
This project analyzes the global Airbnb market to identify the most efficient investment strategies. 
By processing raw data from cities like Amsterdam, Rome, and Bangkok, we identified how supply, demand, and pricing interact to create "revenue machines."

Tech Stack
Database: PostgreSQL

Data Processing: Python (Pandas)

Visualization: Matplotlib, Seaborn 

SQL Mastery: Window Functions (PARTITION BY), Aggregations, Data Type Casting.

Key Metrics Defined
To make the analysis professional, we used specific formulas:

Review Intensity: SUM(number_of_reviews) / COUNT(*)

Purpose: A proxy for occupancy and listing popularity.
Estimated Revenue Index: AVG(price) * Review Intensity
Purpose: Comparing market efficiency across different cities and room types.

Core Analytical Query
The following query highlights the logic used to calculate market efficiency by blending pricing and demand (reviews) into a single performance metric:

<img width="1015" height="360" alt="image" src="https://github.com/user-attachments/assets/c63bd289-5e49-4551-b6b0-547beac575e9" />
<img width="677" height="354" alt="image" src="https://github.com/user-attachments/assets/88463633-ee4b-4b1d-8e1a-20922ed199df" />

Key Data Insights
The Efficiency Path (Amsterdam): Private rooms in Amsterdam outperform luxury segments in other cities.
With a massive occupancy_proxy of 195.49, these units act as "cash cows" due to high turnover and market scarcity.
The Luxury Duality (Bangkok): Bangkok shows a "High Margin" model where luxury hotel rooms maintain high profitability through premium pricing ($1,775+)
even with lower review intensity.

Professionalization Trend: Data shows a heavy shift towards "Entire home/apt" listings in Rome and London
indicating a market dominated by professional property managers rather than casual hosts.

Conclusion for Investors
For maximum capital efficiency, the Micro-Unit Model (Private rooms in high-demand
regulated hubs like Amsterdam) provides the most stable and highest Revenue Index compared to traditional luxury assets.


