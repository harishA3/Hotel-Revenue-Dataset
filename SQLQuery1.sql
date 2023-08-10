WITH hotels AS(
SELECT * FROM dbo.['2018$']
union 
SELECT * FROM dbo.['2019$']
union
SELECT * FROM dbo.['2020$']
)

SELECT * FROM hotels
LEFT JOIN dbo.market_segment$
on hotels.market_segment = dbo.market_segment$.market_segment
LEFT JOIN dbo.meal_cost$
ON hotels.meal = dbo.meal_cost$.meal