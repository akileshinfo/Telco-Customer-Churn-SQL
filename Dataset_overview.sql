select count(*) as total_customers from customer_churn;

select * from customer_churn
limit 10;

select customerid,count(customerid) as duplicates from customer_churn
group by customerid
having duplicates > 1;

SELECT
SUM(customerID IS NULL) AS CustomerID_Null,
SUM(gender IS NULL) AS Gender_Null,
SUM(TotalCharges IS NULL OR TotalCharges='') AS TotalCharges_Null,
SUM(MonthlyCharges IS NULL) AS MonthlyCharges_Null,
SUM(Churn IS NULL) AS Churn_Null
FROM customer_churn;

select round(avg(tenure)) as average_tenure from customer_churn;