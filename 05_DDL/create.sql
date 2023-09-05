/*
CREATE TABLE->
Create command is used to create a table in the database with THE
structure specified by the USER
This STRUCTURE inclues the number of columns to be present in the table and the data tpes of the column, size of data etc.

*/ 
CREATE TABLE emp(
    empno NUMBER(4,0),
    ename VARCHAR2(10),
    job   VARCHAR2(9),
    mgr    VARCHAR2(4,0),
    hiredate DATE;
    sal     NUMBER(7,2),
    comm    NUMBER(7,2),
    deptno  NUMBER(2,0)
);
/*
DESC command->
structure of the table that we have created

->column names, data type of the column names,size of data, any constraints imposed the table, defult values for EACH
column, whether null values allowed or not for each column etc, 
*/
DESC emp;

/*
Creating a new table from an existing table
> An  emptyy table with exactly the same structure of THE
existing table is created
*/
CREATE TABLE emp2 as(SELECT empno,ename,sal from emp);

