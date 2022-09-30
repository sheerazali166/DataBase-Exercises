select * from mysql.user;

create database bookstore2_db;

create database bookstore;

show databases;

drop database bookstore;

use bookstore2_db;

create table customer(
costomerName varchar(100),
phoneNumber INT
);

create table students(
student_id int not null primary key,
name varchar(100),
email varchar(100)
);

select * from students;

alter table students add (age INT,
 country varchar(50),
 nationality varchar(255));
 
 select * from students;
 
 alter table students drop column nationality;
 
 select * from students;
 
 describe students;
 
 alter table students modify country varchar(100);
 
 describe students;
 
 create table players(
 ID int not null primary key,
 name varchar(100),
 age int,
 start_date date
 );
 
 select * from players;
 
 insert into players (ID, name, age, start_date)
 values (1, 'Kinza Sheikh', 25, '2022-9-20');
 
 select * from players;
 
insert into players (ID, name, age, start_date)
 values (2, 'Rabia Sheikh', 26, '2021-10-22');
 
insert into players (ID, name, age, start_date)
 values (3, 'Aiza Anwar', 27, '2020-2-9');
 
 select * from players;
 
 select name from players;
 
 alter table players add level int;
 
 select * from players;
 
 update players set level = 3 where ID = 1;
 
 update players set level = 4 where ID = 2;
 
 update players set level = 6 where ID = 3;

 select * from players; 

select Id, name, age, level from players; 

alter table players add country varchar(100);

select * from players;

update players set country = 'England' where ID = 1;

select * from players;

update players set country = 'Pakistan' where ID = 2;

update players set country = 'Japan' where ID = 3;

select * from players;

show tables;

create table country(
countryName varchar(100)
);

select * from country;

insert into country (countryName) select country from players;

select * from players;

select * from country;

update players set name = 'Rabia Amjad', age = 20 where ID = 2;

select * from student;

create table chocolaty_kinza_sheikh(
ID int not null primary key  auto_increment,
Name varchar(100)
);

select * from chocolaty_kinza_sheikh;

insert into chocolaty_kinza_sheikh (Name) values ('Kinza');

insert into chocolaty_kinza_sheikh (Name) values ('Rabia');

insert into chocolaty_kinza_sheikh (Name) values ('Aiza');

select * from chocolaty_kinza_sheikh;

delete from chocolaty_kinza_sheikh where ID = 3;

select * from chocolaty_kinza_sheikh;

drop table chocolaty_kinza_sheikh;

select * from chocolaty_kinza_sheikh;


 
 
 
 



