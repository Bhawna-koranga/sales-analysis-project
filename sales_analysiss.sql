create database sales_analysis_DB;
use sales_analysis_DB;
select database();
create table cleaned_sales_analysis_dataset ( 
      order_Id varchar(20),
      order_date date,
      customer_name varchar(100),
      product varchar(100),
      category varchar(50),
      region varchar(50),
      ouantity int,
      unit_price decimal(12,2),
      sales decimal(12,2),
      profit decimal(12,2),
      payment_method varchar(50)
      );
select * from cleaned_sales_analysis_dataset limit 5;
select count(*) as total_records
from cleaned_sales_analysis_dataset;
      
select
	sum(sales)as total_sales,
	sum(profit)as total_profit,
	sum(quantity)as total_quantity,
	avg(sales)as average_sales
from cleaned_sales_analysis_dataset;
     
     
select
	category,
    sum(sales)as total_sales		
from cleaned_sales_analysis_dataset
group by category
order by total_sales desc;    
select
     region,
     sum(sales) as total_sales
from cleaned_sales_analysis_dataset
group by region
order by total_sales desc;

select
     product,
     sum(quantity) as total_quantity
from cleaned_sales_analysis_dataset
group by product
order by total_quantity desc
limit 5;

select
     month(order_date) as sales_month
from cleaned_sales_analysis_dataset
group by month(order_date)
order by sales_month;
 
select
       (product) as total_profit
from cleaned_sales_analaysis_dataset
group by product
order by total_product desc
limit 1;

select * from cleaned_sales_analysis_dataset
order by sales desc
limit 1;

select * from cleaned_sales_analysis_dataset
order by sales asc
limit 1;      