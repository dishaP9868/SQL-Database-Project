---drop table financial_transactions 
---change the data type of following columns: previous transactions type to null 
---set constrain to null 

--drop table customers
--drop table accounts
---change column membership_number to data type varchar(5), customer_phone to varchar(12)

--drop table customer_rentals
--- change date data type to varchar(10) and rental_amount_due to varchar(10)
--- all rest of the attribute except Pk need to be set to mull 

--- change transaction_date to datetime ; transaction_amount to numeric(8,2) formate will be 4.56 
--- customer_rentals table's attribute rental_date_out = datetime, rental_date_returned = datetime, rental_amount_due = numeric(8,2) 
--- Change customer_phone attribute's data type to char(12) & date_became_member and customer_dob to datetime the formate '03-JAN-2017'
--set identity_insert financial_transactions ON

--set identity_insert financial_transactions OFF
--INSERT INTO financial_transactions VALUES (1, 1, NULL, 1, '7/10/2017', 4.56,
--'Smith rented Superbad and paid with cash');

--- transaction_date varchar(10), null

--alter table financial_transactions drop column transaction_date;

--drop table financial_transactions;
--drop table accounts;
--drop table customer_rentals;