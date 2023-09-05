/*
Alter is used to add columns , delete columns, drop CONSTRAINTS
,renameing columns, changing the data type and data type size of THE
column existing in the table.
*/
/*
Adding a single column
*/
ALTER TABLE emp1 ADD(Mobile NUMBER);
/*
 Adding Multiple column
*/
ALTER TABLE  ADD(DOB DATE,FATHERNAME VARCHAR2(12),MOTHERNAME VARCHAR2(12), ALLOWANCES NUMBER(4));
/*
MAking a Primary key
*/
ALTER TABLE emp1 ADD Primary key(emp_id);


/*
Add a COLUMN with defult value
*/
ALTER TABLE emp1 ADD (gender CHAR(1) DEFAULT 'F'); 
/*
Alter command is used to DELETE one or more existing COLUMNS
present in the table. we can also drop more than one column by
separating the COLUMN name with commas,
*/
/*
Droping single column
*/
ALTER TABLE emp1 DROP(gender); 

/*
Droping constaint 
*/
ALTER TABLE emp1 DROP CONSSTRINT emp_id;
 
