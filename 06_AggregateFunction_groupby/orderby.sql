/*
The Order by clause is used to arrange the fetched DATA
from the database table in ascending or descending order of DATA
values based on one or more columns.
For Example:
1. Store record of employees in incressing order of salaries
2. Student details as per incressing order of marks or attendance
3. Employee details based on seniority level
*/
/*
questions->
1. Display the names,salaries of all employees based on decressing order of their salaries
Note: if you don't mention the DESC by defult it will be in incressing order
*/
SELECT ename,sal FROM emp ORDER BY sal DESC;
/*
Display the department number and employee name as per incressing order of department number
*/
SELECT ename,deptno FROM emp ORDER BY deptno;

/*
Display the all the details of employees as per incresing OF
i)department number ii)names iii) hiredate
*/
SELECT * FROM emp ORDER BY deptno;
SELECT * FROM emp ORDER BY ename;
SELECT * FROM emp ORDER BY hiredate;
/*
Sorting according to more than one COLUMN->
Display the deatails of employees based on incressing order\
of the departments and in each deprtment salary should be further arranged in highest to lowest ORDER;
*/
select * from emp order by deptno,sal;
/*
here ordering done in squence first it will sort the deptno then internaly it will sort the salary belongs to the deptno
suppose: there are 3 dept of number 10, 2 of 20 deptno so first it will sort the dept no 10 then 20. then internaly it will sort the 10th dept's according to the incressing order.
*/  

/*
USing where clause in ORDER BY->
Display the names,salary,jobs of employees who are working as manager in highest to lowest order
*/
SELECT ename,sal,job FROM emp WHERE JOB="manager" ORDER BY sal DESC;

/*
Specifying column number in order by->
Insead of column names, you can also use the position number of
columns are specified in the select statement
*/
SELECT * FROM emp ORDER BY 8,6;

/*
Sorting data based on expressions->
Display the names,job,anniual salary and hiredate of all employees based
on descressing order of their annual salary.
*/
SELECT ename,job,sal,hiredate,sal*12 as annsal from emp order by annsal DESC;