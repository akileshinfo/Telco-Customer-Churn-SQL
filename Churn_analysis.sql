select churn,count(customerid) as churned_customers from customer_churn
group by churn;

select round(sum(case when churn='Yes' then 1 else 0 end)*100/count(customerid)) as churn_rate from customer_churn;

select distinct gender,count(churn) as high from customer_churn
where churn='yes'
group by gender
order by high desc;

select distinct seniorcitizen,count(churn) as churn_count from customer_churn
where churn='yes'
group by seniorcitizen
order by churn_count desc;