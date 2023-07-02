create database A76;
use A76;
-- How to create tables in the database
create table student (id int, name text, marks int);
-- How the view the table
select * from student;
-- How to insert values
insert into student values (1, 'shubh', 457);
insert into student values (2, 'aish', 340);

-- Creating a table //
CREATE TABLE movies (
    id INT NOT NULL,
    title TEXT,
    director TEXT,
    year INT,
    length_mins INT,
    PRIMARY KEY (id)
);

select * from movie_sales;


insert into movies values (1,'Toy story', 'John Lasseter',1995,81);
insert into movies values (2,'A Bugs life', 'John Lasseter',1998,95);
insert into movies values(3,'Toy story 2', 'John Lasseter',1999,93);
insert into movies values(4,'Monsters Inc', 'Pete doctor',2001,92);
insert into movies values (5,'Finding Nemo', 'Andrew Stanton',2003,107);
insert into movies values(7,'Cars', 'Andrew Stanton',2006,117);
insert into movies values(8,'Ratatouille', 'Pete doctor',2007,115);
insert into movies values(9,'WALL-E', 'Lee Unkrich',2008,104);
insert into movies values(10,'Up', 'John Lasseter',2009,101);
insert into movies values(11,'Toy story 3', 'Brenda Chapman',2010,103);
insert into movies values(12,'Cars 2', 'Dan Scanlon',2011,120);
insert into movies values(13,'Brave', 'John Lasseter',2012,102);
insert into movies values(14,'Monsters Univercity', 'John Lasseter',2013,110);
select * from movies;

-- Exercise 1
select title from movies;
select director from movies;
select title, director from movies;
select title, year from movies;
select * from movies;

-- Exercise 2
select title from movies where id =6;
select title , year from movies where year between 2000 and 2010;
select title , year from movies where year not between 2000 and 2010;
select title , year from movies where year < 2000 or year > 2010;
select title, year from movies where year < 2003;

-- Exercise 3
select title from movies where title like 'Toy story 2';
select title from movies where director ='John Lasseter';
select title from movies where director <>'John Lasseter';
select title from movies where title like 'WALL-E';

-- Exercise 4 
select distinct  director from movies order by director asc;
select title, year from movies order by year desc limit 4;
select title from movies order by title asc limit 4;
select title from movies order by title asc limit 5 offset 5;

-- Exercise 5   ### Inner join

select * from movies;             -- ID , title
select * from movie_sales;        -- ID. Domestic Sales, international Sales
SELECT 
    title, Domestic_sales, International_sales
FROM
    movies
        JOIN
    movie_sales ON movies.id = movie_sales.movie_id where international_sales > domestic_sales;
    
    SELECT 
    title, rating
FROM
    movies
        JOIN
    movie_sales ON movies.id = movie_sales.movie_id order by rating desc;
     
     use a76;
     select * from building_capacity;
     select * from employee_building;
     
     -- Exercise 7    ### Outer join
     select distinct building from employee_building;
     select * from building_capacity;
     select distinct building_name, role from building_capacity
     left join employee_building on building_name  = building;
     
     
     ######################################
     select * from employeetab;
     select * from employee_building;
     
     -- Exercise 8
     
     select distinct building_name from building_capacity left join
     employee_building on building_name = building where role is null;
       
	-- Queries with expression
    select * from movies;
    select * from movie_sales;
    select title, (domestic_sales + international_sales)/ 1000000 as combined_sales from 
    movies inner join movie_sales on id = movie_id;
     
     select title, rating*10 as rating_percent from
     movies inner join movie_sales on id = movie_id;
     
     select title, year from movies where year %2 =0;
     
     select * from employeetab;
     select dept,avg(salary) as Avg_Salary from employeetab group by dept;
     select avg(salary) as Avg_salary from employeetab;
     
     -- can you find a employee whose salary is greater than average salary
     -- sub query
     SELECT 
    name, salary
FROM
    employeetab
WHERE
    salary > (SELECT 
            AVG(salary)
        FROM
            employeetab);
     select dept,avg(salary), max(salary) from employeetab group by dept;
     
     -- Exercise 10 
     select name , max(years_employed) as year from 
     employee_building group by name order by year desc limit 1;
      
      