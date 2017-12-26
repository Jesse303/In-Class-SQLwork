--Jesse Martino
--Class work from 4/6/17
--BCS 260 Data Systems

-- 3-26 
SELECT COUNT(*)
FROM PROJECT;

-- 3-27
SELECT COUNT(*) AS NumberOfProjects
FROM PROJECT;

-- 3-27a
SELECT COUNT(*) AS 'Number Of Projects'
FROM PROJECT;

-- 3-28
SELECT COUNT(Department) AS NumberOfProjects
FROM PROJECT;

-- 3-29
SELECT COUNT(DISTINCT Department) AS NumberOfProjects
FROM PROJECT;

-- 3-30
SELECT MIN(MaxHours) AS MinimumMaxHours, 
	   MAX(MaxHours) AS MinimumMaxHours,
	   SUM(MaxHours) AS TotalMaxHours
FROM   PROJECT
WHERE  ProjectID <= 1200;

-- 3-31
SELECT ProjectID, ProjectName, MaxHours, 
	   (18.50 * MaxHours) AS MaxProjectCost
FROM   PROJECT;

-- 3-32
SELECT ProjectID, ProjectName, MaxHours, 
	   (18.50 * MaxHours) AS MaxProjectCost
FROM   PROJECT
WHERE  ProjectID <= 1200;

-- 3-34
SELECT Department, Count (*) AS NumberOfEmployees
FROM   EMPLOYEE
GROUP BY Department;

-- 3-36
SELECT    Department, Count (*) AS NumberOfEmployees
FROM      EMPLOYEE
WHERE     EmployeeNumber <= 6
GROUP BY  Department
HAVING    COUNT(*) > 1;

-- 3-39
SELECT    FirstName, LastName
FROM      EMPLOYEE
WHERE     EmployeeNumber IN 
		  (SELECT   DISTINCT EmployeeNumber
		   FROM		ASSIGNMENT
		   WHERE	HoursWorked > 50);
 
 --PG 63 From SQL in 10 mins
--CONCATENATION
SELECT RTRIM(FirstName) + ' ' + RTRIM
	   (LastName) AS 'Our Really Wonderful 
	   Employees', Email
FROM EMPLOYEE;

--3-43
SELECT FirstName, LastName, Hoursworked 
FROM EMPLOYEE, ASSIGNMENT
WHERE EMPLOYEE.EmployeeNumber = ASSIGNMENT.EmployeeNumber;


