-- Create Worker table
CREATE TABLE Worker (
    WORKER_ID NUMBER(5) NOT NULL PRIMARY KEY,
    FIRST_NAME VARCHAR2(25),
    LAST_NAME VARCHAR2(25),
    SALARY NUMBER(15),
    JOINING_DATE DATE,
    DEPARTMENT VARCHAR2(25)
);

-- Create Bonus table
CREATE TABLE Bonus (
    WORKER_REF_ID NUMBER(5),
    BONUS_AMOUNT NUMBER(10),
    BONUS_DATE DATE,
    FOREIGN KEY (WORKER_REF_ID) REFERENCES Worker(WORKER_ID)
);

-- Create Title table
CREATE TABLE Title (
    WORKER_REF_ID NUMBER(5),
    WORKER_TITLE VARCHAR2(25),
    AFFECTED_FROM TIMESTAMP,
    FOREIGN KEY (WORKER_REF_ID) REFERENCES Worker(WORKER_ID)
);

-- Insert data into Worker table
INSERT INTO Worker (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
    (1, 'Monika', 'Arora', 100000, TO_DATE('14-02-20 09:00:00', 'YY-MM-DD HH24:MI:SS'), 'HR');
    (2, 'Niharika', 'Verma', 80000, TO_DATE('14-06-11 09:00:00', 'YY-MM-DD HH24:MI:SS'), 'Admin');
    (3, 'Vishal', 'Singhal', 300000, TO_DATE('14-02-20 09:00:00', 'YY-MM-DD HH24:MI:SS'), 'HR');
    (4, 'Amitabh', 'Singh', 500000, TO_DATE('14-02-20 09:00:00', 'YY-MM-DD HH24:MI:SS'), 'Admin');
    (5, 'Vivek', 'Bhati', 500000, TO_DATE('14-06-11 09:00:00', 'YY-MM-DD HH24:MI:SS'), 'Admin');
    (6, 'Vipul', 'Diwan', 200000, TO_DATE('14-06-11 09:00:00', 'YY-MM-DD HH24:MI:SS'), 'Account');
    (7, 'Satish', 'Kumar', 75000, TO_DATE('14-01-20 09:00:00', 'YY-MM-DD HH24:MI:SS'), 'Account');
    (8, 'Geetika', 'Chauhan', 90000, TO_DATE('14-04-11 09:00:00', 'YY-MM-DD HH24:MI:SS'), 'Admin');

-- Insert data into Bonus table
INSERT INTO Bonus (WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
    (1, 5000, TO_DATE('16-02-20', 'YY-MM-DD'));
    (2, 3000, TO_DATE('16-06-11', 'YY-MM-DD'));
    (3, 4000, TO_DATE('16-02-20', 'YY-MM-DD'));
    (1, 4500, TO_DATE('16-02-20', 'YY-MM-DD'));
    (2, 3500, TO_DATE('16-06-11', 'YY-MM-DD'));

-- Insert data into Title table
INSERT INTO Title (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
    (1, 'Manager', TO_TIMESTAMP('2016-02-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
    (2, 'Executive', TO_TIMESTAMP('2016-06-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
    (8, 'Executive', TO_TIMESTAMP('2016-06-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
    (5, 'Manager', TO_TIMESTAMP('2016-06-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
    (4, 'Asst. Manager', TO_TIMESTAMP('2016-06-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
    (7, 'Executive', TO_TIMESTAMP('2016-06-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
    (6, 'Lead', TO_TIMESTAMP('2016-06-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
    (3, 'Lead', TO_TIMESTAMP('2016-06-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
