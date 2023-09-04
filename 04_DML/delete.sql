/*
Delete specific rows using DELETE keyword
*/
DELETE FROM emp1
WHERE emp_id=3;

/*
Specifing Multiple conditions
*/
 DELETE FROM emp1
 WHERE emp_id=3 AND l_name= 'Priyam';

 /*
 DELETE all rows 
 Note: Only Data will be DELETED but table SCHEMA will be there , we can re-insert the DATA

 */
 DELETE FROM emp1;

 /*
 Differnce BETWEEN DELETE & TRUNCATE (Imp)***->
 1.The rows(data) can be rolled back using ROLLBACK SAVEPOINT TCL commands which was DELETED using DELETE keyword
 but for TRUNCATE ROLLBACK can't be done

 2. In DELETE command you can use Condition commands to delete specific rows using where CLAUSE
 but in TRUNCATE you can't do that it's only DELETE entire rows data
 */
TRUNCATE FROM emp1;



