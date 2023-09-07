/*
WHERE IN SQL->
Sometime a user is interested in flitering data and retriving only specific data that
meet certain conditions and requirements,which can be done by where clause which performs data filtering
SELECT col1,col2,..... FROM table_name WHERE [condition];
*/
/*
Display the records of those employees whose designation is MANAGER
*/
SELECT * FROM emp WHERE job='MANAGER';
/*
Using Operators
1. Display the record of all employees other than managers
2. Display records of all employees whose salary between 1000/- to 2000/-
*/
SELECT * FROM emp WHERE job!='MANAGERS';
SELECT * FROM emp WHERE sal BETWEEN 1000 and 2000;

