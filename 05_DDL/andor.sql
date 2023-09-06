/*
AND/OR in DBMS ->
The AND and OR operators are used with the where clause for 
precise filtraytion of data from the database tables by combining more THAN
one condition along with select update & delete queries

AND clause->
Defination-> The AND result true only when all the conjuction
of t7he conditions specified after the where clause are satisfied
SELECT column1, column2,...
FROM table_name
WHERE condition1 AND condition2 AND condition3......
Q) Display the records of those employees who are working as
a manager and getting salary greter than 2500/-
*/
SELECT JOB,ENAME,SAL FROM EMP WHERE JOB='MANAGER' AND SAL>2500;
/*
OR Clause ->
Defination-> Among multiple CONDITION specified in where clause the transaction
is PERFORMED if any of the condition becomes true
eg-
SELECT column1, column2,....
FROM table_name
WHERE condition1 OR condition2 OR condition3
Q) Display details of all analyst & managers
*/
SELECT JOB,ENAME,SAL FROM EMP WHERE JOB='MANAGER' OR JOB='ANALYST';

/*
Combining AND and OR->
Q) Display the details of employee having a salary greater
than 1500/- or if he is manager which is exclusivly from 10th dept
and 30th department.
*/
SELECT * FROM EMP WHERE (SAL>1500 OR JOB='MANAGER') AND (DEPTNO=10 OR DEPTNO=30);

