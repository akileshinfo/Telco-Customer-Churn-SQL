--Check Total Records
select count(*) as total_records from customer_churn;

--Check Duplicate Customer IDs
select customerid,count(*) as duplicate from customer_churn
group by customerid
having duplicate > 1;

--Check NULL Values
select count(*) as duplicate from customer_churn
where customerid is null;
