--Jesse Martino
--BCS 260 Intro to Database Systems
--Inclass work

--3-12  pg 150
SELECT FirstName, LastName, Phone, Department
FROM Employee
WHERE Department IN ('Marketing', 'Accounting', 'Finance');

--3-13  pg 150
SELECT FirstName, LastName, Phone, Department
FROM Employee
WHERE Department NOT IN ('Marketing', 'Accounting', 'Finance');

--3-14  pg 151
SELECT FirstName, LastName, Phone, Department
FROM Employee
WHERE EmployeeNumber BETWEEN 2 AND 5;

--SELECT FirstName, LastName, Phone, Department
--FROM Employee
--WHERE EmployeeNumber > 2
--	AND EmployeeNumber < 5;

--3-15  pg 151
SELECT FirstName, LastName, Phone, Department
FROM Employee
WHERE EmployeeNumber >= 2
	AND EmployeeNumber <= 5;
	
--3-16  pg 151
SELECT *
FROM PROJECT
WHERE ProjectName LIKE '2014 Q_Portfolio Analysis';

--3-17  pg 152
SELECT *
FROM EMPLOYEE
WHERE Phone LIKE '360-287-____';

--3-19  pg 153
SELECT *
FROM EMPLOYEE
WHERE Department LIKE '%ing';

--3-20  pg 153
SELECT *
FROM EMPLOYEE
WHERE Department NOT LIKE '%ing';

--3-21  pg 154
SELECT FirstName, LastName, Phone, Department
FROM EMPLOYEE
WHERE Phone IS NULL;

--3-22  pg 154
SELECT FirstName, LastName, Phone, Department
FROM EMPLOYEE
WHERE Phone IS NOT NULL;

--3-23 pg 155
SELECT FirstName, LastName, Phone, Department
FROM EMPLOYEE
ORDER BY Department;

--3-24 pg 155
SELECT FirstName, LastName, Phone, Department
FROM EMPLOYEE
ORDER BY Department DESC;