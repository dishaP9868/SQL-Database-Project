/* insert data into customers table -----> formate: insert into customers values (member_yn, membership num, date_became_member, customer_first */
insert into customers values ('AB',345,2005/08/25,'Harry','Smith', '1206 O’Neill Hwy, Dunmore, PA 18512','888-777-5342','Fast_harry@hotmail.com',1992/08/27);
insert into customers values ('BC',454,2005/06/03, 'Sally','Jones','436 7th Ave, Pittsburgh, PA 15219','555-333-4325','jones_sally@gmail.com',1998/05/18);
insert into customers values ('CD',465,2006/04/16,'Amy','Ryder','4172 William Penn Highway, Monroeville, PA 15146','666-999-6524','crazy_amy@yahoo.com',1993/06/21);
insert into customers values ('DE',653,2013/07/23,'Skip','Walker','503 Linden St.,  Scranton, PA 18503','555-777-9376','skipw@dundermifflin.com',1995/09/26);
insert into customers values ('EF',563,2008/06/15,'Nick','Murphy','205 S Main St, Zelienople, PA 16063','475-376-3864','nlm5@cmu.edu',1991/03/19);

/* insert data into customer_rentals table */
insert into customer_rentals values (1, 1, 5,	1,'8/3/2017','5.5','Smith rented Spiderman and it is active must pay amount due');
insert into customer_rentals values (2, 2, 2,	2, '7/6/2011','Jones has reserved Superbad to buy it later one');
insert into customer_rentals values (3, 3, 3,	3,'6/2/2017','18.87','Ryder has rented gone with the wind and the amount is overdue');
insert into customer_rentals values (4, 4, 4,	4,'5/1/2017','5/20/2017','4.61','Walker has rented Fahrenheit 9/11 and returned it.');
insert into customer_rentals values (5, 5, 1,	5,'7/10/2012','4.56','Murphy has rented good will hunting and status is active.');


/* insert data into financial transactions */
insert into financial_transactions values (1,1,1,1,'10-JUL-2017',4.56,'Smith rented Spiderman and paid with case');
insert into financial_transactions values (2,2,2,2,'5-JAN-2017',10,'Jones reserved Superbad and paid with Credit card');
insert into financial_transactions values (3,3,3,3,'6-FAB-2017',18.87,'Ryder bought gone with the wind and paid with Paypal');
insert into financial_transactions values (4,4,4,4,'14-JAN-2017',4.61,'Walker rented Fahrenheit 9/11 and paid with Check');
insert into financial_transactions values (5,5,5,5,'30-MAY-2017',1,'Murphy bought good will hunting and paid with Check');

/* insert data into accounts table    */
insert into accounts values(1,1,1,'Smith_Harry23','Smith Harry created account on purpose to rent DVD');
insert into accounts values(2,2,2,'Sally_Jones24','Sally Jones created account on purpose to rent DVD');
insert into accounts values(3,3,3,'Amy_Ryder65', 'Amy Ryder created account on purpose to rent DVD');
insert into accounts values(4,4,4,'Skip_Walker54','Skip Walker created account on purpose to rent DVD');
insert into accounts values(5,5,5,'Nick_Murphy76','Nick Murphy created account on purpose to rent DVD');

/* insert data into payment_methods */
insert into payment_methods values(1,'Smith Harry paid for DVD throgh credit card');
insert into payment_methods values(2,'Sally Jones paid for DVD through cash');
insert into payment_methods values(3,'Amy Ryder paid for DVD through debit card');
insert into payment_methods values(4,'Skip walker paid for DVD through credit card');
insert into payment_methods values(5,'Nick Murphy paid for DVD through cash');

/* insert data into rental_status_codes */
insert into rental_status_codes values(1,'Smith has active rental status');
insert into rental_status_codes values(2,'Sally has overdue rental status');
insert into rental_status_codes values(3,'Amy has active rental status');
insert into rental_status_codes values(4,'Skip has overdue rental status');
insert into rental_status_codes values(5,'Nick has active rental status');

/* insert data into transaction type  */
insert into transaction_types values(1,'transaction made online');
insert into transaction_types values(2,'transaction made on the store');
insert into transaction_types values(3,'transaction made online');
insert into transaction_types values(4,'transaction made on the store');
insert into transaction_types values(5,'transaction made online');

















