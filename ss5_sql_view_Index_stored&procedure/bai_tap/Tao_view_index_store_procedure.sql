create database demo;

use demo;

create table Products(
	id int auto_increment,
    product_code varchar(20),
    product_name varchar(50),
    product_price double,
    product_amount int,
    product_description varchar(50),
    product_status bit,
    primary key(id)
);

insert into Products(product_code, product_name, product_price, product_amount, product_description, product_status)
values("IP1","Iphone1",5000000,9,"Good",1),("IP2","Iphone2",200000,11,"Good",0),("IP3","Iphone3",12000000,12,"Good",1);

create index idx_product_code on Products(product_code);
create index idx_name_price on Products(product_name, product_price);

explain select* from Products where	product_code = "IP1";
explain select* from Products where	product_name = "Iphone1";
explain select* from Products where	product_price = "200000";

create view view_product as
select product_code, product_name, product_price, product_status
from Products;

select * from view_product;

create or replace view view_product as
select product_code, product_name 
from Products;

select * from view_product;

drop view view_product;





