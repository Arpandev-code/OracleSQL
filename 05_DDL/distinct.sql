/*
DISTINCT in DBMS->
DISTINCT statement is used to return only unique values
present in a column or combination of columns.
SELECT DISTINCT column1,column2,
FROM table name;
*/
SELECT DISTINCT job FROM emp;


/*
So in case of more then 1 column if you use DISTINCT keyword THEN
row wise uniqueness is checked
*/

SELECT DISTINCT JOB,ENAME FROM EMP;

/*
***Q) Display Distinct value of a column without using distint keyword
*/
SELECT job,count(*) from EMP
GROUP BY JOB
having count(*)>1

/*
***Q) Does the DISTINCT clause consider NULL to be a unique 
value in SQL?
Ans- Yes,In the above SQL query, the DISTINCT clause treats NULL as a value in the  column of the table, which means that if there are two NULLs in the same column, they are interpreted as the same/duplicate value. Therefore, if the SELECT statement returns NULL multiple times, the DISTINCT will return only one NULL.
*/


