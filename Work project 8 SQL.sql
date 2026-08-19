SELECT TOP 3 Location , SUM(Cost) AS Total_cost
FROM [Work project 8]
GROUP BY Location
ORDER BY Total_cost DESC



SELECT Clicks , Impressions , Cost
 ,CASE
    WHEN Cost>= 230 THEN 'High cost'
    WHEN Cost<200   THEN 'Medium cost'
    ELSE  'Low cost' END AS Cost_Category
    FROM [Work project 8]




    SELECT Location , SUM(Impressions) AS 'Total_impression'
    FROM [Work project 8]
    GROUP BY Location
    ORDER BY Total_impression DESC



SELECT Cost , Sale_Amount, Ad_ID ,
CASE 
     WHEN Cost > 200 AND  Sale_Amount <1300 THEN 'high_cost/Low_return'
     WHEN Cost <200  AND Sale_Amount >1300 THEN 'Low_cost/high_return'
     ELSE 'Moderate_performence' END AS Cost_Efficiency
     FROM [Work project 8]



SELECT TOP 3 Location , SUM(ROAS) AS total_ROAS
FROM [Work project 8]
GROUP BY Location
ORDER BY total_ROAS DESC



SELECT Ad_ID, Clicks , Impressions ,
CASE
    WHEN Clicks >=180 AND Impressions>=4200 THEN 'Attractive Ad'
    WHEN Clicks <180  AND Impressions<4200 THEN 'Average Ad'
    ELSE 'Low Ad appeal' END AS Engagment_Categoray
    FROM [Work project 8] 



 SELECT TOP 1 Ad_ID , Profit
    FROM [Work project 8]
    WHERE Profit > ( SELECT AVG(Profit)
    FROM [Work project 8] ); 
 
    
  
SELECT TOP 3 SUM(Clicks) AS Total_clicks  , Location  
FROM [Work project 8]
GROUP BY Location
ORDER BY Total_clicks DESC

