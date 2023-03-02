--select MSC_Customer.cust_name, MSC_Customer.cust_city, MSC_Customer.salesman_number, MSC_Employee.empl_last_name
--from MSC_Customer, MSC_Employee
--where MSC_Customer.salesman_number = MSC_Employee.empl_number AND MSC_Customer.cust_state = 'NY'

--3. 
--select MSC_Product_detail.prod_number, MSC_Product_master.prod_description, MSC_Product_master.sale_price, MSC_Vendor.vend_number, MSC_Product_detail.qty_in_stock
--from MSC_Product_detail, MSC_Product_master, MSC_Vendor
--where MSC_Product_detail.prod_number = MSC_Product_master.prod_number AND MSC_Product_detail.vend_number = MSC_Vendor.vend_number AND qty_in_stock < 400
--order by qty_in_stock 

---4.
select MSC_Customer.cust_number as Customer_No, MSC_Customer.cust_name as CustomerName, count(MSC_Order.ord_number) as TotalOrder
from MSC_Customer, MSC_Order
where MSC_Customer.cust_number = MSC_Order.cust_number and MSC_Customer.cust_state = 'PA'
group by MSC_Customer.cust_number, cust_name



---- 5. 
--select vend_number, vend_name, vend_street + ' ' + vend_city + ' ' + vend_state + ' ' + vend_zip as Vendor_Address
--from MSC_Vendor


