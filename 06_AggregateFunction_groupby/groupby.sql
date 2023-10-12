/*
The SQL GROUP BY Statement
The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of customers in each country".

The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.
Suppose we have a table student having 3 columns Name,Subject,Marks NOW we will use group by to answer below questions
1. Find maximam mark in every subject
*/
SELECT subject, MAX(marks) FROM student GROUP BY subject;

/*
Q) Find sum of marks of the students having sum more then 150
*/

SELECT Name, SUM(marks) AS msum FROM student GROUP BY name HAVING SUM(marks)>150;

/*
***Q) Differnce between WHERE & HAVING CLAUSE
HAVING->
SELECT Name, SUM(marks) AS msum FROM student GROUP BY name HAVING SUM(marks)>150;
WHERE->
SELECT Name,MAX(marks) FROM student WHERE Name='PQR' OR Name='BCD' GROUP BY Name;
Differnce->
1.Having clause filter AGGREGATED row other hand WHERE clause filter UNAGGREGATED Row
2.Having Clause can be used with SELECT & GROUP BY where as WHERE CLAUSE can be used wuth SELECT, INSERT, UPDATE, DELETE & MORE
3. AGGREGATE functions can be  used in having clause other hand can't be use except some some cases
*/
/*
Suppose we have a employee table 
Q) Display number of employees working in each department

*/
SELECT deptno,count(*)
from EMP
group by deptno;
/*
Display number of employees in each job
*/
select job,count(*) FROM emp group by job;
/*
Display the hightest paid & lowest paid salaries in each department
*/
SELECT max(sal),min(sal),deptno
from EMP
group by deptno;

/*
Display departments which are having more than 3 employees

*/
SELECT count(*),deptno from emp group by deptno having count count(*)>3; 
/*
Display number of analysts working in the company
*/
 SELECT job,count(*) FROM emp GROUP BY job having job='Analysts';
/*
Diplay total salary of the each dept having more then 9000 salary 
*/ 
SELECT SUM(salary),deptno FROM emp GROUP BY deptno HAVING sum(salary)>9000;
/*
Display the hiring year and number of employees hired in that year is more than one
*/
SELECT to_char(hiredate,'YYYY') "YEAR",count(*) FROM emp group by to_char(hiredate,'YYYY');  