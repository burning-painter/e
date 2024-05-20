CREATE TABLE JOBS (
    JOB_ID NUMBER PRIMARY KEY,
    JOB_TITLE VARCHAR2(50)
);

CREATE TABLE EMPLOYEES (
    EMPLOYEE_ID NUMBER PRIMARY KEY,
    FIRST_NAME VARCHAR2(50),
    LAST_NAME VARCHAR2(50),
    JOB_ID NUMBER,
    SALARY NUMBER(10, 2),
    FOREIGN KEY (JOB_ID) REFERENCES JOBS(JOB_ID)
);


INSERT INTO JOBS (JOB_ID, JOB_TITLE) VALUES (1, 'Manager');
INSERT INTO JOBS (JOB_ID, JOB_TITLE) VALUES (2, 'Clerk');
INSERT INTO JOBS (JOB_ID, JOB_TITLE) VALUES (3, 'Developer');

INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY) VALUES (1, 'John', 'Doe', 1, 30000);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY) VALUES (2, 'Jane', 'Smith', 2, 15000);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY) VALUES (3, 'Mike', 'Johnson', 1, 28000);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY) VALUES (4, 'Emily', 'Davis', 3, 20000);
INSERT INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, JOB_ID, SALARY) VALUES (5, 'David', 'Wilson', 2, 14000);



DECLARE
data number(3);
BEGIN
update EMPLOYEES set SALARY=SALARY + 1500 where JOB_ID in (select JOB_ID from JOBS where
job_title like '%Manager%');
data:=sql%rowcount;
dbms_output.put_line(sql%rowcount || ' Managers salary update with +1500 ');
update EMPLOYEES set SALARY=SALARY + 700 where JOB_ID in (select JOB_ID from JOBS where
job_title like '%Clerk%');
dbms_output.put_line(sql%rowcount-data ||' Clerks salary update with +700 ');
DBMS_OUTPUT.NEW_LINE;
DBMS_OUTPUT.NEW_LINE;
dbms_output.put_line(' Total '|| sql%rowcount || ' employees salary updated ');
END;
/