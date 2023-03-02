--select ord_number, line_number, prod_number
--from MSC_Order_detail
--where ship_quantity is null

--select empl_first_name, empl_last_name, job_code 
--from MSC_Employee
--where empl_number = 220

--select *
--from MSC_product_detail
--where qty_in_stock between 200 and 300
--order by qty_in_stock desc 

--select cust_number
--from MSC_Customer
--where cust_state = 'FL'

--select min(commission_percent) as Minimum_commission, max(commission_percent) as maximum_commission, avg(commission_percent) as AVG_commission
--from MSC_Product_master

select empl_number, empl_first_name, empl_last_name
from MSC_Employee
where empl_last_name like '%C%'
