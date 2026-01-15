-- SQL Filtering and Sorting 
-- Working with given dummy data

-- Creating New Database
Create Database company_db2;
-- Selecting the database
Use company_db2;

-- Creating a Table named Employees
Create Table employees (
emp_id int,
employee_name Varchar(50),
department varchar(50),
city varchar(30),
salary int,
hire_date date);

-- Inserting Value into Employees Table
Insert into employees (emp_id, employee_name, department, city, salary, hire_date)
Values (101,'Rahul Mehta','Sales','Delhi',55000,'2020-04-12'),
 (102,'Priya Sharma','HR','Mumbai',62000,'2019-09-25'),
  (103,'Aman Singh','IT','Bengaluru',72000,'2021-03-10'),
   (104,'Neha Patel','Sales','Delhi',48000,'2022-01-14'),
    (105,'Karan Joshi','Marketing','Pune',45000,'2018-07-22'),
     (106,'Divya Nair','IT','Chennai',81000,'2019-12-11'),
      (107,'Raj Kumar','HR','Delhi',60000,'2020-05-28'),
       (108,'Simran Kaur','Finance','Mumbai',58000,'2021-08-03'),
        (109,'Arjun Reddy','IT','Hydrabad',70000,'2022-02-18'),
         (110,'Anjali Das','Sales','Kolkata',51000,'2023-01-15');
       
       Select * From employees;
       
-- 1- Show employees working in either the 'IT' or 'HR' department
Select * From employees 
Where department in ('IT','HR');       

-- 2- Retrieve employees whose department is in 'Sales','IT',or'Finance'
Select * From employees
Where department in ('Sales','IT','Finance');

-- 3- Display employees whose salary is between rs.50000 and rs.70000.
Select * From employees
Where salary Between 50000 and 70000;

-- 4- List employees whose names start with letter 'A'.
Select * From employees
Where employee_name Like 'A%';

-- 5- Find employees whose name contain the substring 'an'.
Select * From employees
Where employee_name Like '%an%';

-- 6- Show employees who are from 'Delhi' or 'Mumbai' and earn more than rs.55000.
Select * From employees
Where city in ('Delhi','Mumbai')
And salary > 55000;

-- 7- Display all emnployees except those from the 'HR' department.
Select * From employees
Where department != 'HR';

-- 8- Get all employees hired between 2019 and 2022 ordered by Hire Date (Oldest first).
Select * From employees
Where hire_date Between '2019-01-01' And '2022-12-31'
Order by hire_date Asc;