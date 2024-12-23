SELECT *
FROM hotel_bookings

-- Booking Trends: Which hotel type receives the most bookings annually?
SELECT 
	hotel,
	arrival_date_year,
	COUNT(*) AS total_bookings_annually
FROM hotel_bookings
GROUP BY hotel, arrival_date_year
ORDER BY arrival_date_year, total_bookings_annually DESC

-- What percentage of bookings are canceled, and which market segment has the highest cancellation rate?
SELECT
	market_segment,
	COUNT(*) AS total_bookings,
	SUM(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END) AS canceled_bookings,
	ROUND(SUM(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) AS cancellation_rate
FROM hotel_bookings
GROUP BY market_segment
ORDER BY cancellation_rate DESC

-- Which hotel type generates the highest average daily rate (ADR), and how much revenue is potentially lost due to cancellations?
SELECT
	hotel,
	COUNT(adr) AS total_adr,
	ROUND(AVG(adr),2) AS avg_adr,
	SUM(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END) AS total_canceled_bookings,
	ROUND(AVG(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END),2) AS avg_canceled_bookings,
	ROUND(AVG(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END) * 100.0 / AVG(adr),2) AS avg_adr_revenue_loss_percentage,
	ROUND(SUM(CASE WHEN is_canceled = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) AS total_revenue_loss_percentage
FROM hotel_bookings
GROUP BY hotel