/*
ALTER-MODIFY-> We can change the data type of the existing column or the size of the data
type of the existing column
*/
ALTER TABLE emp1 MODIFY(f_name VARCHAR2(30 )); 
 

ALTER TABLE emp1 MODIFY(f_name VARCHAR2(30),emp_id NUMBER);
/*
Note: you can incress or decrease the size of the datatype
whatever you want but you can't decrease the data type size of
the filled column at the certain point also you can't change of data type of the EXISTING
COLUMN. 
*/   

/*
ALTER-RENAME
*/
ALTER TABLE emp1 RENAME COLUMN emp_id to emp_no; 