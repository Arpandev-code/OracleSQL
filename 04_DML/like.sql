/*
LIKE OPERATOR ->
Like operator used to search specific pattern in the data
and retrieve the record when there is a pattern match as REQUIRED
GENERAL PATTERN->
PATTERN
'r%'-> Matches Strings which start with 'r'
'%r'-> Matches strings which end with 'r'
'r%t'-> Matches strings which contains the start with 'r' and end with 't'
'%tri%'-> Matches strings which contain the substring 'tri' in them at any position
'_tri%'-> Matches string which contain the strings 'tri' in them at the second POSITION
'_r%'-> Matches string which contains 'r' at the second POSITION
'r_%'-> Matches string which strat with 'r' and contain at least 2 more characters 
Q)
1.Display the employees whose
 a.name start with 'M'
 b. ends with 'M'
2.Display the names of the all employees having M in any position in their NAME
3.Display the names of all employees which contains the fourth letter as M
4. Display the employee names and hire date for the employees joined in the month of December
5. Display names of all employees whose name conatains exactly 4 letter
6. Display the names of the emoployee whose name does not conatain 'A' anywhere
*/
/*
1.
*/
SELECT ename from emp where ename like 'M%';
SELECT ename from emp where ename like '%M';
/*
2
*/
SELECT ename from emp where ename like '%M%';
/*
3
*/
SELECT ENAME FROM EMP WHERE ENAME LIKE '___M%';
/*
4
*/
SELECT ENAME,HIREDATE FROM EMP WHERE HIREDATE LIKE '%DEC';
/*
5
*/
SELECT ENAME FROM EMP WHERE ENAME LIKE '____';
/*
6
*/
SELECT ENAME FROM EMP WHERE ENAME NOT LIKE '%A%';






