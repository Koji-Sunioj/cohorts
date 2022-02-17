create database Wolt;

create table Wolt.First_Purchases
(
	first_purchase_date date,
    user_id int,
    purchase_id varchar(15),
    venue_id varchar(11),
	product_line varchar(13),
    
    primary key(user_id)
);

create table Wolt.Purchases
(
	first_purchase_date date,
    user_id int,
    purchase_id varchar(15),
    venue_id varchar(11),
	product_line varchar(13), 
    
    primary key(purchase_id)
    
);

