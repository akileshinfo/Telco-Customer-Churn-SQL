select customerid,monthlycharges from customer_churn
where monthlycharges > (select avg(monthlycharges) from customer_churn)
order by monthlycharges desc;

SELECT
CASE
WHEN MonthlyCharges < 35 THEN 'Low'
WHEN MonthlyCharges BETWEEN 35 AND 70 THEN 'Medium'
ELSE 'High'
END AS Charge_Category,
COUNT(*) AS Customer_Count
FROM customer_churn
GROUP BY Charge_Category;