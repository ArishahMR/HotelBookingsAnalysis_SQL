# Hotel Bookings Analysis Using Only SQL (SQL Project)
This project analyzes hotel booking data using SQL to uncover key business insights such as booking trends, cancellation impacts, and revenue performance. The analysis highlights actionable findings for improving business strategies, showcasing practical SQL skills for data manipulation and reporting.


## Dataset Used
<a href="https://www.kaggle.com/datasets/jessemostipak/hotel-booking-demand/data">Kaggle Hotel Booking Demand by Jesse Mostipak</a>


## Tools Used
- Excel: Cleaning NA values
- PostgreSQL: Querying 


## Key Questions
1. Booking Trends: Which hotel type receives the most bookings annually?
2. What percentage of bookings are cancelled, and which market segment has the highest cancellation rate?
3. Which hotel type generates the highest average daily rate (ADR), and how much revenue is potentially lost due to cancellations?

#### Answer/Insights: Question 1
![Question 1](https://github.com/user-attachments/assets/c6f64ba9-eb8f-4974-8af0-12f9dfc1db4f)
- City Hotel consistently outperforms Resort Hotel in annual bookings for all years (2015–2017).
- The highest number of annual bookings for City Hotel occurred in 2016, with 38,140 bookings.
- Resort Hotel bookings peaked in the same year, with 18,567—less than half of City Hotel's bookings.

#### Answer/Insights: Question 2
![Question 2](https://github.com/user-attachments/assets/098ea738-6c25-42d6-97fd-655b618266cf)
- Groups have the highest cancellation rate at 61.06%, followed by Online Travel Agencies (OTAs) with 36.72%.
- Segments such as Direct and Corporate have significantly lower cancellation rates (15.34% and 18.73%, respectively).
- An outlier is the Undefined segment, with 100% cancellations, likely indicating erroneous or incomplete data.

#### Answer/Insights: Question 3
![Question 3](https://github.com/user-attachments/assets/88155d64-f13f-45b4-b93d-a06a9909d7a5)
- City Hotels have a higher average daily rate (105.30) than Resort Hotels (94.95).
- Revenue Loss: <br>
a) City Hotels lose 41.73% of their total revenue to cancellations, significantly higher than Resort Hotels (27.76%). <br>
b) Average daily revenue loss due to cancellations is higher for City Hotels (0.40%) compared to Resort Hotels (0.29%).
