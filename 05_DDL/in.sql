/*
IN OPERATOR:
The SQL IN condition allows you to easily test if an expression matches
any value in a list of values.
It is used to help reduce the need for multiple OR conditions in a
SELECT, INSERT, UPDATE or DELETE statement.
Using the IN condition with Character VALUES
Using the IN conditions with Numberic Values
Using the IN Conditions with the NOT Operator
Performing DML operations uisng IN
Using Subquery as an expression inside IN
*/
/*
If there is a table of EMPPLOYEE ,If you have to find sone specific name's details
suppose Arpan,Sayan,Priyam we can simply so with OR operator below
*/
SELECT * FROM EMP WHERE ENAME='BLACK' OR ENAME='SCOTT' OR ENAME='FORD';
/*
But the above quary bit long we can simplyfy it with the IN OPERATOR
Note: it is not required that all values present in IN clause must be present in the table then also it will WORK

*/
SELECT * FROM EMP WHERE ENAME IN('BLACK','SCOTT','FORD');
/*
NOT IN 
*/
SELECT * FROM EMP WHERE EMPNO NOT IN(7369,7844,7876);
/*
DML OPERATIONS with IN
*/
DELETE FROM EMP WHERE ENAME IN('JAMES','ADAMS','MILLER');

/*
Using SUBQUERY(Most Important Interview Question)
Suppose you have a EMP Table with Employee salary column , we have to dispaly the
Second Maximum salary how could you do that?
Yes you acn do that NOT IN in SUBQUERIES
*/
/*
Display the max salary in SAL column in EMP table
*/
SELECT max(SAL) FROM EMP;
/*
Above Question's answer
*/
SELECT max(SAL) FROM WHERE SAL not in(SELECT max(sal) from emp); 

