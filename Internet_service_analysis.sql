select distinct InternetService,count(churn) as high from customer_churn
where churn='yes'
group by InternetService
order by high desc;