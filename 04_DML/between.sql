/*
1. BETWEEN condition allwos you to easily test if any expression
is within a range of values (inclusive)
2. It can be used in a SELECT,INSERT,UPDATE,or DELETE STATEMENT
*/
/*
AND 
*/
SELECT * from emp1 WHERE salary BETWEEN 3000 AND 5000;

/*
Date   
*/

SELECT * FROM emp1 WHERE HIREDATE BETWEEN TO_DATE('1981/04/02','yyyy/mm/dd') AND TO_DATE('1981/06/09','yyyy/mm/dd');

/*
NOT
*/
SELECT * from emp1 WHERE salary NOT BETWEEN 3000 AND 5000;

/*
Insert Data into from lagic of BETWEEN
*/
INSERT INTO sample(SELECT * FROM EMP WHERE SAL BETWEEN 2000 AND 3000);

/*
Delete data from emp1 table
*/ 
DELETE FROM EMP WHERE salary NOT BETWEEN 3000 AND 5000;
 