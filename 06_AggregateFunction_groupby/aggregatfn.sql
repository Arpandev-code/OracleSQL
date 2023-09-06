/*
AGGREGATE Functions->
SUM
MAX
MIN
COUNT
AVG
Suppose we have a student table which has three columns Name, Subject & Marks.
1.Display the maximam marks.
Note: ALL the AGGREGATE function will ignor NULL values inside any columns
*/
SELECT MAX(marks) FROM Student;
/*
Minimum Marks 
*/
SELECT MIN(marks) FROM Student;
/*
Count 
*/
SELECT COUNT(Subject) FROM Student;
/*
AVG
*/
SELECT AVG(marks) FROM STUDENT;
/*
SUM
*/
SELECT SUM(marks) FROM STUDENT;
