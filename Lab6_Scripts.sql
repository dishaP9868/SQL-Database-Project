/* Script to build tables for FLIX2YOU .. current schema before revision */
/* Gary Heberling May 2, 2012                                            */
/* For IST210 world campus Penn State University                         */

/* This script will create 7 tables of the FLIX2YOU database 
   along with primary and foreign keys                                   */

/* Modifications to script:
   (1) reversed order of drop table financial_transactions and account; 1/3/13 by glh
                                                                         */


/* Drop tables that may already exist                                    */
/* The following code is commented out
   and is available for your use if you
   need to drop all the tables

DROP TABLE movie_cast;
DROP TABLE financial_transactions;
DROP TABLE accounts;
DROP TABLE customer_rentals;
DROP TABLE movies;
DROP TABLE genre_codes;
DROP TABLE format_types;
DROP TABLE video_stores;
DROP TABLE condition_codes;
DROP TABLE actors;
DROP TABLE customers;
DROP TABLE rental_status_codes;
DROP TABLE transaction_types;
DROP TABLE payment_methods;

*/


/* create tables 

/* genre_codes */
CREATE TABLE genre_codes(
	genre_code int IDENTITY(1,1) NOT NULL,
	genre_code_description varchar(32) NOT NULL);
/* format_types */
CREATE TABLE format_types(
	format_type_code int IDENTITY(1,1) NOT NULL,
	format_type_description varchar(32) NOT NULL);
/* video_stores */
CREATE TABLE video_stores(
	store_id int IDENTITY(1,1) NOT NULL,
	store_name varchar(32) NOT NULL,
	store_address varchar(128) NOT NULL,
	store_city varchar(32) NOT NULL,
	store_state varchar(2) NOT NULL,
	store_zip varchar(12) NOT NULL,
	store_email varchar(128) NOT NULL,
	other_store_details varchar(512) NOT NULL);
/* condition_code */
CREATE TABLE condition_codes(
	condition_code int IDENTITY(1,1) NOT NULL,
	condition_code_description varchar(32) NOT NULL);
/* actors */
CREATE TABLE actors(
	actor_id int IDENTITY(1,1) NOT NULL,
	actor_gender char(1) NOT NULL,
	actor_first_name varchar(32) NOT NULL,
	actor_last_name varchar(32) NOT NULL,
	other_actor_details varchar(512) NOT NULL);
/* movies */
CREATE TABLE movies(
	movie_id int IDENTITY(1,1) NOT NULL,
	condition_code int NOT NULL,
	format_type_code int NOT NULL,
	genre_type_code int NOT NULL,
	store_id int NOT NULL,
	release_year int NOT NULL,
	movie_title varchar(128) NOT NULL,
	movie_description varchar(1024) NOT NULL,
	number_in_stock int NOT NULL,
	rental_or_sale_or_both tinyint NOT NULL,
	rental_daily_rate money NOT NULL,
	sales_price money NOT NULL);
/* movie_cast */
CREATE TABLE movie_cast(
	movie_id int NOT NULL,
	actor_id int NOT NULL);
*/
/* customer_rentals */
create table customer_rentals(
	item_rental_id int IDENTITY(1,1) Not Null,
	customer_id int not null,
	movie_id int not null,
	rental_status_code int not null,
	rental_date_out date not null,
	rental_date_returned date not null,
	rental_amount_due money not null,
	other_rental_details varchar(512) not null);

create table financial_transactions(
	transaction_id int IDENTITY(1,1) unique not null,
	account_id int not null,
	item_rental_id int not null,
	previous_transaction_id int unique not null, 
	transaction_type_code int not null,
	transaction_date date not null,
	transaction_amount money not null,
	transaction_comment varchar(512) not null);

create table rental_status_codes(
	rental_status_code int IDENTITY(1,1) not null,
	rental_status_description varchar(512) not null);

create table transaction_types(
	transaction_type_code int IDENTITY(1,1) not null,
	transaction_type_descriptions varchar(512));

create table customers(
	customer_id int IDENTITY(1,1) not null,
	member_yn varchar(5) not null,
	membership_number int not null,
	date_became_member date not null,
	customer_first_name varchar(32) not null,
	customer_last_name varchar(32) not null,
	customer_address varchar(128) not null,
	customer_phone int not null,
	customer_email varchar(32) not null,
	customer_dob date not null);

create table accounts(
	account_id int IDENTITY(1,1) not null,
	customer_id int not null,
	payment_method_code int not null,
	account_name varchar(32) not null,
	account_details varchar(512) not null);

create table payment_methods(
	payment_method_code int identity(1,1) not null,
	payment_method_description varchar(512) not null);

/* create primary keys with ALTER TABLE statement 
ALTER TABLE genre_codes ADD CONSTRAINT pk_genre_codes PRIMARY KEY (genre_code);
ALTER TABLE format_types ADD CONSTRAINT pk_format_types PRIMARY KEY (format_type_code);
ALTER TABLE video_stores ADD CONSTRAINT pk_video_stores PRIMARY KEY (store_id);
ALTER TABLE condition_codes ADD CONSTRAINT pk_condition_codes PRIMARY KEY (condition_code);
ALTER TABLE actors ADD CONSTRAINT pk_actors PRIMARY KEY (actor_id);
ALTER TABLE movies ADD CONSTRAINT pk_movies PRIMARY KEY (movie_id);
ALTER TABLE movie_cast ADD CONSTRAINT pk_movie_cast PRIMARY KEY (movie_id, actor_id); */
/*  end of primary key creation */

/* create primary keys with ALTER TABLE statement */
alter table customer_rentals add constraint pk_customer_rentals primary KEY (item_rental_id);
alter table financial_transactions add constraint pk_financial_transactions primary key (transaction_id);
alter table rental_status_codes add constraint pk_rental_status_codes primary key (rental_status_code);
alter table transaction_types add constraint pk_transaction_types primary key (transaction_type_code);
alter table customers add constraint pk_customers primary key (customer_id);
alter table accounts add constraint pk_accounts primary key (account_id);
alter table payment_methods add constraint pk_payment_methods primary key (payment_method_code);

/* create foreign keys */
alter table customer_rentals add constraint fk_customer_rentals foreign KEY (customer_id)
references customers (customer_id);
alter table customer_rentals add constraint fk_customer_rentals_movie foreign KEY (movie_id)
references movies (movie_id);
alter table customer_rentals add constraint fk_customer_rentals_status foreign KEY (rental_status_code)
references rental_status_codes (rental_status_code);
alter table financial_transactions add constraint fk_financial_transactions foreign key (account_id)
references accounts (account_id);
alter table financial_transactions add constraint fk_financial_transactions_item foreign key (item_rental_id)
references customer_rentals (item_rental_id);
alter table financial_transactions add constraint fk_financial_transactions_previous foreign key (previous_transaction_id)
references financial_transactions (previous_transaction_id);
alter table financial_transactions add constraint fk_financial_transactions_type foreign key (transaction_type_code)
references transaction_types (transaction_type_code);
alter table accounts add constraint fk_accounts foreign key (customer_id)
references customers (customer_id);
alter table accounts add constraint fk_accounts_payment_method foreign key (payment_method_code)
references payment_methods (payment_method_code);




/*
/* create foreign keys */
ALTER TABLE movie_cast ADD  CONSTRAINT fk_Movie_cast_actors FOREIGN KEY(actor_id)
REFERENCES actors (actor_id);
ALTER TABLE movie_cast ADD  CONSTRAINT fk_movie_cast_movies FOREIGN KEY(movie_id)
REFERENCES movies (movie_id);
ALTER TABLE movies ADD  CONSTRAINT fk_movies_condition_codes FOREIGN KEY(condition_code)
REFERENCES condition_codes (condition_code);
ALTER TABLE movies ADD  CONSTRAINT fk_movies_format_types FOREIGN KEY(format_type_code)
REFERENCES format_types (format_type_code);
ALTER TABLE movies ADD  CONSTRAINT fk_movies_genre_codes FOREIGN KEY(genre_type_code)
REFERENCES genre_codes (genre_code);
ALTER TABLE movies ADD  CONSTRAINT fk_movies_video_Stores FOREIGN KEY(store_id)
REFERENCES video_Stores (store_id);

*/
/* END OF SCRIPT */
