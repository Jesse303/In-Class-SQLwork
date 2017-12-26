--Jesse Martino
--BCS 260 Intro to Database Systems
--Inclass work for 4/11/17

--page 152 SQL in 10mins
--easy way to select a table
SELECT *
INTO PROJECT2
FROM PROJECT


--Then took the download and applied to PROJECT2
/*****   PROJECT DATA   *********************************************************/
INSERT INTO PROJECT2 VALUES(
	'2015 Q3 Product Plan', 'Marketing', 135.00, '10-MAY-15', '15-JUN-15');
INSERT INTO PROJECT2 VALUES(
	'2015 Q3 Portfolio Analysis', 'Finance', 120.00, '05-JUL-15', '25-JUL-15');
INSERT INTO PROJECT2 VALUES(
	'2015 Q3 Tax Preparation', 'Accounting', 145.00, '10-AUG-15', '15-OCT-15');
INSERT INTO PROJECT2 VALUES(
	'2015 Q4 Product Plan', 'Marketing', 150.00, '10-AUG-15', '15-SEP-15');
INSERT INTO PROJECT2 (ProjectName, Department, MaxHours, StartDate)				
	VALUES(										
	'2015 Q4 Portfolio Analysis', 'Finance', 140.00, '05-OCT-15');			


	INSERT INTO PROJECT2 VALUES(
	'2016 Q3 Product Plan', 'Marketing', 135.00, '10-MAY-16', '15-JUN-16');
INSERT INTO PROJECT2 VALUES(
	'2016 Q3 Portfolio Analysis', 'Finance', 120.00, '05-JUL-16', '25-JUL-16' );
INSERT INTO PROJECT2 VALUES(
	'2016 Q3 Tax Preparation', 'Accounting', 145.00, '10-AUG-16', '15-OCT-16');
INSERT INTO PROJECT2 VALUES(
	'2016 Q4 Product Plan', 'Marketing', 150.00, '10-AUG-16', '15-SEP-16');
INSERT INTO PROJECT2 (ProjectName, Department, MaxHours, StartDate, EndDate)				
	VALUES(										
	'2016 Q4 Portfolio Analysis', 'Finance', 140.00, '05-OCT-16', '15-DEC-16');			

--using UNION 
SELECT * FROM PROJECT
UNION
SELECT * FROM PROJECT2;

--More UNION usage
SELECT * FROM PROJECT
UNION ALL
SELECT * FROM PROJECT2;

--Using the TRUNCATE statement
SELECT * 
INTO PROJECT2017
FROM PROJECT;

TRUNCATE TABLE PROJECT2017;

SELECT *
FROM PROJECT2017;

--Using the DELETE statment
DELETE
FROM PROJECT2;

SELECT *
FROM PROJECT2;

-- page 181 
ALTER TABLE PROJECT2
	ADD CONSTRAINT Project_Check_Dates
		CHECK (StartDate < EndDate);
		
-- page 181 
ALTER TABLE PROJECT
	ADD CurrentTotalHours Numeric(8,2) NOT NULL;
	
-- page 181 
ALTER TABLE PROJECT
	ADD CurrentTotalHours Numeric(8,2) NOT NULL
	DEFAULT 1;
	
-- page 181  Ch3-4 
ALTER TABLE PROJECT
	DROP COLUMN CurrentTotalHours;
	
DROP TABLE PROJECT2017;

--QUERIES JOINTS
--pg 163 Ch3-43
SELECT FirstName, LastName, HoursWorked
FROM EMPLOYEE, ASSIGNMENT
WHERE Employee.EmployeeNumber = Assignment.EmployeeNumber;

--pg 167 Ch3-46
SELECT FirstName, LastName, HoursWorked
FROM EMPLOYEE AS E, ASSIGNMENT AS A
WHERE E.EmployeeNumber = A.EmployeeNumber
	AND HoursWorked > 50;

--pg 168 Ch3-48
SELECT FirstName, LastName, HoursWorked
FROM EMPLOYEE JOIN ASSIGNMENT
		ON	EMPLOYEE.EmployeeNumber =
				ASSIGNMENT.EmployeeNumber
ORDER BY EMPLOYEE.EmployeeNumber, ProjectID;

--pg 174 Ch3-55
SELECT ProjectName, EmployeeNumber, HoursWorked
FROM PROJECT LEFT JOIN ASSIGNMENT
	ON PROJECT.ProjectID = ASSIGNMENT.ProjectID;

SELECT ProjectName, EmployeeNumber, HoursWorked
FROM PROJECT RIGHT JOIN ASSIGNMENT
	ON PROJECT.ProjectID = ASSIGNMENT.ProjectID;

