
create database shopping_cart_db;

use shopping_cart_db;

create table customer(
customer_id int,
name varchar(100),
address varchar(255),
email varchar(100),
phone varchar(10),
primary key(customer_id)
);

create table product(
product_id int,
name varchar(100),
price numeric(8, 2),
description varchar(255),
primary key(product_id)
);

create table cart_order(
order_id int,
customer_id int,
product_id int,
quantity int,
order_date date,
status varchar(100),
primary key(order_id),
foreign key(customer_id) references customer(customer_id),
foreign key(product_id) references product(product_id) 
);


create database restaurant;

use restaurant;

CREATE TABLE tbl( 

    table_id INT, 

    location VARCHAR(255), 

    PRIMARY KEY (table_id) 

); 


CREATE TABLE waiter( 

    waiter_id INT, 

    name VARCHAR(150), 

    contact_no VARCHAR(10), 

    shift VARCHAR(10), 

    PRIMARY KEY (waiter_id) 

); 

CREATE TABLE table_order( 

    order_id INT, 

    date_time DATETIME, 

    table_id INT, 

    waiter_id INT, 

    PRIMARY KEY (order_id), 

    FOREIGN KEY (table_id) REFERENCES tbl(table_id), 

    FOREIGN KEY (waiter_id) REFERENCES waiter(waiter_id) 

);

CREATE TABLE customer( 

    customer_id INT, 

    name VARCHAR(100), 

    NIC_no VARCHAR(12), 

    contact_no VARCHAR(10), 

    PRIMARY KEY (customer_id) 

); 

CREATE TABLE reservation( 

    reservation_id INT, 

    date_time DATETIME, 

    no_of_pax INT, 

    order_id INT, 

    table_id INT, 

    customer_id INT, 

    PRIMARY KEY (reservation_id), 

    FOREIGN KEY (order_id) REFERENCES table_order(table_id), 

    FOREIGN KEY (table_id) REFERENCES tbl(table_id), 

    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) 

); 

CREATE TABLE menu( 

    menu_id INT, 

    description VARCHAR(255), 

    availability INT, 

    PRIMARY KEY (menu_id) 

);

CREATE TABLE menu_item( 

    menu_item_id INT, 

    description VARCHAR(255), 

    price FLOAT, 

    availability INT, 

    menu_id INT, 

    PRIMARY KEY (menu_item_id), 

    FOREIGN KEY (menu_id) REFERENCES menu(menu_id) 

);

CREATE TABLE order_menu_item( 

    order_id INT, 

    menu_item_id INT, 

    quantity INT, 

    PRIMARY KEY (order_id,menu_item_id), 

    FOREIGN KEY (order_id) REFERENCES table_order(order_id), 

    FOREIGN KEY (menu_item_id) REFERENCES menu_item(menu_item_id) 

); 

show tables;

show columns from customer;

show columns from table_order;

show columns from tbl;




