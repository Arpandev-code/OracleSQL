
/* Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.*/
SELECT first_name as WORKER_NAME FROM Worker;

/*Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.*/
SELECT UPPER(firstname) FROM worker;

/*Write an SQL query to fetch unique values of DEPARTMENT from Worker table.*/
SELECT distinct department FROM worker;
/*Using Groupby*/
SELECT DEPENDENT FROM worker group by department;

/* Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.*/
SELECT SUBSTR(FIRST_NAME, 1, 3) AS FIRST_THREE_CHARACTERS
FROM Worker;

/*Write an SQL query to find the position of the alphabet (‘b’) in the first name column ‘Amitabh’ from Worker table.*/
SELECT INSTR('Amitabh', 'b') AS POSITION_OF_B FROM worker WHERE first_name="Amitabh";

/*Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.*/
SELECT RTRIM(FIRST_NAME) AS TRIMMED_FIRST_NAME
FROM Worker;

/*Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.*/
SELECT LTRIM(DEPARTMENT) AS TRIMMED_FIRST_NAME
FROM Worker;

/*Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.*/
SELECT DISTINCT DEPARTMENT,LENGTH(DEPENDENT) FROM worker;

/*Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.*/
SELECT REPLACE(FIRST_NAME,'a','A') FROM worker;

/*Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME.*/
SELECT CONCAT(first_name,' ',last_name) AS FULL_NAME FROM worker;

/*Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.*/
SELECT * FROM worker ORDER BY first_name;

/*Write an SQL query to print all Worker details from the Worker table order by 
-- FIRST_NAME Ascending and DEPARTMENT Descending.*/
SELECT * FROM worker ORDER BY FIRST_NAME, DEPARTMENT DESC;


/*Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.*/
SELECT * FROM worker where first_name NOT IN('vipul','Satish');

/*Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.*/
SELECT * FROM worker where first_name NOT IN('vipul','Satish');

/*Write an SQL query to print details of Workers with DEPARTMENT name as “Admin*”.*/
SELECT * FROM worker WHERE department like 'Admin%';

/*Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.*/
SELECT * FROM worker WHERE first_name like '%a%';

/*Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.*/
SELECT * FROM worker WHERE first_name like '%a';

/*Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.*/
SELECT * FROM worker WHERE first_name like '______h';

/*Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000*/
SELECT * FROM worker WHERE salary BETWEEN 100000 AND 500000;

/*Write an SQL query to print details of the Workers who have joined in Feb’2014.*/
SELECT * FROM worker WHERE TO_CHAR(JOIN_DATE,'MOM-YYYY'='FEB-2014');

/*Write an SQL query to fetch the count of employees working in the department ‘Admin’.*/
SELECT department, count(*) as Emp_Count FROM worker WHERE DEPENDENT='Admin';

/*Write an SQL query to fetch worker full names with salaries >= 50000 and <= 100000*/
SELECT CONCAT('first_name','','last_name') from worker where salaries BETWEEN 50000 AND 100000;

/*Write an SQL query to fetch the no. of workers for each department in the descending order.*/
SELECT DEPARTMENT,COUNT(*) AS NO_OF_WORKER GROUP BY DEPARTMENT ORDER BY NO_OF_WORKER DESC;

/*Write an SQL query to print details of the Workers who are also Managers.*/
SELECT * FROM worker as w INNER JOIN title as t w.worker_id=t.worker_ref_id where t.work_title='Managers';

/*Write an SQL query to fetch number (more than 1) of same titles in the ORG of different types.*/
SELECT worker_title,COUNT(*) FROM title GROUP BY worker_title HAVING count(*)>1;

/*Write an SQL query to show only odd rows from a table.*/
SELECT * FROM worker where MOD(worker_id, 2) !=0;
/*OR*/
SELECT * FROM worker where MOD(worker_id, 2) <> 0;

/*Write an SQL query to show only even rows from a table.*/
SELECT * FROM worker where MOD(worker_id, 2) =0;

/*Write an SQL query to clone a new table from another table.*/
CREATE TABLE new_table LIKE worker;
INSERT INTO new_table SELECT * FROM worker;

/*Write an SQL query to fetch intersecting records of two tables.*/











