select distinct paymentmethod,count(paymentmethod) as most_used from customer_churn
group by paymentmethod
order by most_used desc;

select distinct paymentmethod,count(churn) as highest_churn from customer_churn
where churn='yes'
group by paymentmethod
order by highest_churn desc;
