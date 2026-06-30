select distinct contract,count(customerid) as total_customers from customer_churn
group by contract
order by total_customers desc;

select distinct contract,count(churn) as high_churn from customer_churn
where churn='yes'
group by contract
order by high_churn desc;

select distinct contract,avg(monthlycharges) as average from customer_churn
group by contract;