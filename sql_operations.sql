show tables;

select 10 + 15;

select 100 % 10;

create table employee(
employee_ID int not null primary key auto_increment,
employee_name varchar(255),
salary int,
allowance int
);

select * from employee;

insert into employee (employee_name, salary, allowance)
	values ('Alex', 25000, 1000);
    
insert into employee (employee_name, salary, allowance)
	values ('John', 55000, 1000);
    
insert into employee (employee_name, salary, allowance)
	values ('James', 52000, 1000);
    
insert into employee (employee_name, salary, allowance)
	values ('Sam', 30000, 1000); 
    
insert into employee (employee_name, salary, allowance)
	values ('Alex', 24000, 1000); 
    
insert into employee (employee_name, salary, allowance)
	values ('Sam', 24000, 1000);  
	
    
select * from employee;  

select salary + allowance from employee;

select * from employee where salary + allowance = 25000;

alter table employee add tax int;  

select * from employee;

update employee set tax = 1000 where employee_ID = 1;

update employee set tax = 2000 where employee_ID = 2;

update employee set tax = 2000 where employee_ID = 3;

update employee set tax = 1000 where employee_ID = 4;

update employee set tax = 3000 where employee_ID = 5;

update employee set tax = 4000 where employee_ID = 6;

select * from employee;

select salary - tax from employee;
 
select * from employee where salary - tax = 50000;

select * from employee where tax * 2 = 4000;

select allowance / salary * 100 from employee;

select * from employee where allowance / salary * 100 >= 5;

delete from employee where employee_ID = 9;

delete from employee where employee_ID = 10;

select * from employee;

insert into employee (employee_name, salary, allowance, tax)
	values ('John', 55000, 3000, 2000); 
    
insert into employee (employee_name, salary, allowance, tax)
	values ('James', 52000, 3000, 2000);
    
select * from employee where allowance / salary * 100 >= 5;

alter table employee add hours int;

select * from employee;

update employee set hours = 10 where employee_ID = 1;

update employee set hours = 11 where employee_ID = 2;

update employee set hours = 7 where employee_ID = 3;

update employee set hours = 11 where employee_ID = 4;

select * from employee;

select hours % 2 from employee;

select * from employee where hours % 2 = 0;

select salary + 5000 from employee;

select salary - 5000 from employee;

select salary + 2 from employee;

select salary + 12 from employee;

select employee_ID % 2 from employee;

select * from employee where salary = 18000;

select * from employee; 

insert into employee (employee_name, salary, allowance, tax, hours)
	values ('Kinza', 18000, 3000, 2000, 15); 
    
insert into employee (employee_name, salary, allowance, tax, hours)
	values ('Rabia', 18000, 3000, 2000, 18);
    
select * from employee where salary = 18000;

select * from employee where salary < 24000;

select 'Kinza sheikh is so so much cute and chocolaty' as 'Kinza Amjad';

select * from employee where salary <= 24000;

select * from employee where salary > 24000;

select * from employee where salary >= 24000;

select * from employee where salary <> 24000;

select * from employee where salary != 24000;

select * from employee where employee_ID = 1;

select * from employee where employee_name = 'James';

select * from employee where salary <> 24000;

select * from employee where salary > 50000;

select * from employee where tax >= 1000; 

select * from employee where allowance < 2500;

select * from employee where hours <= 10; 

select * from students;

create table student_tbl(
ID int not null primary key auto_increment,
first_name varchar(255),
last_name varchar(255),
nationaliy varchar(255) 
); 

select * from student_tbl;

alter table student_tbl change nationaliy nationality varchar(255);

insert into student_tbl (first_name, last_name, nationality)
	values ('Jerry', 'Martin', 'Australia');
    
insert into student_tbl (first_name, last_name, nationality)
	values ('Ryan', 'Egan', 'China');
    
insert into student_tbl (first_name, last_name, nationality)
	values ('Heather', 'Dawson', 'UK');    
    
insert into student_tbl (first_name, last_name, nationality)
	values ('John', 'Murphy', 'UK');

insert into student_tbl (first_name, last_name, nationality)
	values ('Sandra', 'Hauge', 'US'); 

select * from student_tbl;

select ID, first_name, last_name, nationality from student_tbl 
	order by nationality asc;
    
 select ID, first_name, last_name, nationality from student_tbl 
	order by nationality desc;   
 
 alter table student_tbl add date_of_birth date;
 
 select * from student_tbl;
 
update student_tbl set date_of_birth = '1999-9-19'  where ID = 1;
 
update student_tbl set date_of_birth = '1991-03-12'  where ID = 2;
  
update student_tbl set date_of_birth = '2005-12-30'  where ID = 3;
   
update student_tbl set date_of_birth = '2000-11-17'  where ID = 4;
    
update student_tbl set date_of_birth = '1997-08-10'  where ID = 5;

select * from student_tbl;

select first_name, last_name, date_of_birth, nationality
	from student_tbl order by nationality asc,
		date_of_birth desc;
        
select * from employee;

select * from employee order by employee_ID desc;

select * from employee order by employee_name;

select * from employee order by employee_name desc;

alter table student_tbl add faculty varchar(255);

select * from student_tbl;

update student_tbl set faculty = 'Engineering' where ID = 1;

update student_tbl set faculty = 'Computer Science' where ID = 2;

update student_tbl set faculty = 'Arts' where ID = 3;

update student_tbl set faculty = 'Science' where ID = 4;

update student_tbl set faculty = 'Engineering' where ID = 5;

select * from student_tbl;

insert into student_tbl (first_name, last_name, nationality, date_of_birth, faculty)
	values ('Price', 'Charles', 'UK', '1995-02-17', 'Engineering');

insert into student_tbl (first_name, last_name, nationality, date_of_birth, faculty)
	values ('Angelo', 'Mathews', 'SRI LANKA', '1993-01-02', 'Engineering'); 
        
select * from student_tbl; 

select * from student_tbl where faculty = 'Engineering';

select * from student_tbl where date_of_birth between '1995-01-01' and '2000-01-01';

select * from student_tbl where faculty like '%Sc%';
   
select * from student_tbl where nationality in('US', 'UK');

select * from student_tbl;

select distinct faculty, nationality from student_tbl;

select distinct nationality from student_tbl;

select count(distinct faculty) from student_tbl;




   