/*
if you don't use where CLAUSE then all the value of the particular column will be changed

*/
UPDATE emp1
set salary=5000
WHERE emp_id=3;

/*
UPDATE table with data from another table
*/
UPDATE emp1
set=(SELECT student_id  FROM student where ROWNUM=1);
