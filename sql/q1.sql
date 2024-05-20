CREATE TABLE employee (
    eid NUMBER PRIMARY KEY,
    fname VARCHAR2(50),
    lname VARCHAR2(50),
    dob DATE,
    depid NUMBER,
    edepartment VARCHAR2(50),
    hire_date DATE,
    mgrid NUMBER,
    salary NUMBER(10, 2),
    gender CHAR(1),
    contact VARCHAR2(15),
    address VARCHAR2(100),
    city VARCHAR2(50),
    state VARCHAR2(50),
    pincode VARCHAR2(10),
    mstatus VARCHAR2(10)
);

INSERT INTO employee VALUES
(1, 'John', 'Doe', TO_DATE('1980-05-15', 'YYYY-MM-DD'), 101, 'Sales', TO_DATE('2010-01-01', 'YYYY-MM-DD'), 1001, 75000.50, 'M', '1234567890', '123 Main St', 'New York', 'NY', '10001', 'Single');

INSERT INTO employee  VALUES
(2, 'Jane', 'Smith', TO_DATE('1985-08-25', 'YYYY-MM-DD'), 102, 'Marketing', TO_DATE('2012-06-15', 'YYYY-MM-DD'), 1002, 68000.00, 'F', '2345678901', '456 Oak St', 'Los Angeles', 'CA', '90001', 'Married');

INSERT INTO employee  VALUES
(3, 'Michael', 'Johnson', TO_DATE('1990-12-10', 'YYYY-MM-DD'), 103, 'IT', TO_DATE('2015-03-20', 'YYYY-MM-DD'), 1003, 85000.75, 'M', '3456789012', '789 Pine St', 'Chicago', 'IL', '60601', 'Single');

INSERT INTO employee  VALUES
(4, 'Emily', 'Davis', TO_DATE('1975-03-30', 'YYYY-MM-DD'), 104, 'HR', TO_DATE('2005-09-25', 'YYYY-MM-DD'), 1004, 72000.00, 'F', '4567890123', '321 Elm St', 'Houston', 'TX', '77001', 'Divorced');

INSERT INTO employee VALUES
(5, 'David', 'Wilson', TO_DATE('1982-11-20', 'YYYY-MM-DD'), 105, 'Finance', TO_DATE('2018-11-10', 'YYYY-MM-DD'), 1005, 9000.25, 'M', '5678901234', '654 Maple St', 'Phoenix', 'AZ', '85001', 'Single');



UPDATE employee SET salary = salary + salary*(10/100) WHERE salary <= 15000;

select fname ||' '|| lname as name,HIRE_DATE from employee where HIRE_DATE
between to_date('01-jan- 2000','dd mon yyyy') and to_date('18-aug-2005','dd mon yyyy');

select fname ||' '|| lname as name from employee where fname like '%t%' or
fname like '%r%' order by fname;

select fname ||' '|| lname as name,salary from employee where salary between 12000
and 15000;


select eid,fname ||' '|| lname as full_name,state from employee;
