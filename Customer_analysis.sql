select gender,count(*) as Gender_wise from customer_churn
group by gender
order by gender_wise desc;

select seniorcitizen,count(*) as senior_citizens from customer_churn
group by seniorcitizen;

select partner,count(*) as total_customers from customer_churn
group by partner;