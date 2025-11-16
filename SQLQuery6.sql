SELECT * FROM [dbo].[blinkit_data]

SELECT COUNT(*)AS No_OF_Items FROM blinkit_data

UPDATE blinkit_data
SET Item_Fat_Content=
CASE 
WHEN Item_Fat_Content IN ('LOW FAT') THEN 'Low Fat'
WHEN Item_Fat_Content ='reg' THEN 'Regular'
ELSE Item_Fat_Content
END

SELECT DISTINCT(Item_Fat_Content) From blinkit_data

SELECT CAST(SUM(Total_Sales)/1000000 AS DECIMAL(10,2)) AS Totals_Sales_Millions From blinkit_data Where Outlet_Establishment_Year=2022


SELECT Cast(AVG(Total_Sales)as Decimal(10,2)) AS Avg_Sales From blinkit_data

SELECT cast(AVG(Rating)as decimal(10,2)) AS Avg_Rating From blinkit_data

select Item_Fat_Content,
CAST(SUM(Total_Sales) as Decimal(10,2) )AS Total_Sales,
Cast(AVG(Total_Sales)as Decimal(10,2)) AS Avg_Sales,
COUNT(*)AS No_OF_Items,
cast(AVG(Rating)as decimal(10,2)) AS Avg_Rating
From blinkit_data GROUP BY Item_Fat_Content ORDER BY Total_Sales DESC