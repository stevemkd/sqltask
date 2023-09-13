CREATE DATABASE Registeration ;

CREATE TABLE tblUsers(
  Id INT PRIMARY KEY,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  DateOfBirth DATE,
  Age INT CHECK (age > 0),
  Gender VARCHAR(15),
  PhoneNo VARCHAR(25),
  Email VARCHAR(50) UNIQUE,
  Address VARCHAR(100),
  State VARCHAR(20)
  );

  INSERT INTO tblUsers
VALUES
(1, 'Ramesh', 'Kumar', '1998-01-15', 25, 'Male', '9876543210', 'ramesh.kumar@gmail.com', 'No. 12, MG Road, Eranad', 'Kerala'),
(2, 'Priya', 'Singh', '1997-05-23', 26, 'Female', '8765432109', 'priya.singh@yahoo.com', 'Flat No. 5, Green Park, Kochi', 'Kerala'),
(3, 'Rajesh', 'Sharma', '1996-09-10', 27, 'Male', '7654321098', 'rajesh.sharma@outlook.com', 'B-4, Shanti Nagar, Thrissur', 'Kerala'),
(4, 'Anjali', 'Gupta', '1999-03-07', 24, 'Female', '6543210987', 'anjali.gupta@rediffmail.com', 'C-7, Lotus Colony, Kozhikode', 'Kerala'),
(5, 'Suresh', 'Patel', '1998-07-14', 25, 'Male', '5432109876', 'suresh.patel@hotmail.com', 'D-10, Sunrise Apartments, Malappuram', 'Kerala'),
(6, 'Neha', 'Jain', '2000-02-18', 23, 'Female', '4321098765', 'neha.jain@gmail.com', 'E-13, Rainbow Heights, Palakkad', 'Kerala'),
(7, 'Ravi', 'Verma', '1997-08-12', 26, 'Male', '3210987654', 'ravi.verma@yahoo.co.in','F-16, Silver Oaks, Kannur','Kerala'),
(8,'Pooja','Sharma','1998-04-21','25','Female','2109876543','pooja.sharma@gmail.com','G-19,Rose Garden,Kollam','Kerala'),
(9,'Vikas','Mishra','1996-11-16','27','Male','1098765432','vikas.mishra@icloud.com','H-22,Sapphire Plaza,Kottayam','Kerala'),
(10,'Reena','Roy','1999-06-09','24','Female','0987654321','reena.roy@zoho.com','I-25,Pearl Residency,Thiruvananthapuram','Kerala'),
(11,'Amit','Chopra','1997-03-03','26','Male','9876543211','amit.chopra@protonmail.com','J-28,Ruby Towers,Kasaragod','Kerala'),
(12,'Nisha','Agarwal','2000-08-24','23','Female','8765432100','nisha.agarwal@yandex.com','K-31,Emerald Heights,Kannur','Kerala');

SELECT*FROM tblUsers;

DELETE FROM tblUsers WHERE id=2;
UPDATE tblUsers SET FirstName= 'steve' where id=4;



CREATE TABLE tblEmployees (
    Id INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Age INT,
    Address NVARCHAR(100),
    Department NVARCHAR(50),
    State NVARCHAR(50),
    Country NVARCHAR(50),
    PhoneNumber NVARCHAR(15),
    Salary DECIMAL(10, 2)
);

INSERT INTO tblEmployees(Id, FirstName, LastName, Age, Address, Department, State, Country, PhoneNumber, Salary)
VALUES 
(1, 'John', 'Doe', 30, '123 Main St', 'Human Resources', 'IL', 'USA', '123-456-7890', 50000.00),
(2, 'Jane', 'Smith', 32, '456 Maple Ave', 'Finance', 'NY', 'USA', '987-654-3210', 55000.00),
(3, 'Jim', 'Brown', 34, '789 Oak Dr', 'Marketing', 'KS', 'USA', '456-789-1230', 60000.00),
(4, 'Jill', 'Johnson', 36, '321 Pine Ln', 'Sales', 'NJ', 'USA', '321-654-9870', 65000.00),
(5, 'Joe', 'Davis', 38, '654 Elm Ct', 'Engineering', 'OR', 'USA', '654-321-7890', 70000.00),
(6, 'Julia', 'Miller', 40, '987 Birch Pl', 'Marketing', 'MO', 'USA', '789-123-4560', 75000.00),
(7, 'Jessica', 'Wilson', 42, '345 Cedar St', 'Finance', 'DE', 'USA', '123-789-4560', 80000.00),
(8, 'Jeffrey','Wright' ,44 ,'567 Spruce Blvd' ,'Sales' ,'CA' ,'USA' ,'234-567-8901' ,85000.00),
(9,'Jennifer','White' ,46 ,'678 Redwood Dr' ,'Research and Development' ,'PA' ,'USA' ,'345-678-9012' ,90000.00),
(10,'Jerome','Black' ,48 ,'789 Dogwood Ln' ,'Human Resources' ,'TX' ,'USA' ,'456-789-0123' ,95000.00),
(11,'Jackie','Green' ,50 ,'890 Hemlock Pkwy' ,'Sales' ,'VA' ,'USA' ,'567-890-1234' ,100000.00),
(12,'Jeremy','Blue' ,52 ,'901 Ivy Way' ,'Engineering' ,'RI' ,'USA' ,'678-901-2345' ,105000.00),
(13,'Jeanette','Indigo' ,54 ,'012 Juniper Ave' ,'Engineering' ,'WI' ,'USA' ,'789-012-3456' ,110000.00),
(14,'Jared','Violet' ,56 ,'123 Kudzu Blvd' ,'Human Resources' ,'TN' ,'USA' ,'890-123-4567' ,115000.00),
(15,'Jasmine','Yellow' ,58 ,'234 Lilac St' ,'Marketing' ,'NM' ,'USA' ,'901-234-5678' ,120000.00),
(16,'Jake','Orange' ,60 ,'345 Magnolia Dr','Sales','MD','USA','012-345-6789 ',125000.00),
(17,'Joyce','Red ',62,'456 Myrtle Ln ','Finance','CT ','USA ','123-456-7890 ',130000.00),
(18,'Joan ','Pink ',64,'567 Nettle Ct ','Engineering ','FL ','USA ','234-567-8901 ',135000.00),
(19,'Jordan ','Purple ',66,'678 Orchid Pkwy ','Marketing','OH ','USA ','345-678-9012 ',140000.00),
(20,'Jocelyn ','Brown ',68,'789 Palm Way ','Sales ','GA ','USA ','456-789-0123 ',145000.00);

SELECT MAX(Salary) 
FROM tblEmployees 
WHERE Salary < (SELECT MAX(Salary) FROM tblEmployees);



SELECT Department, COUNT(*) as num_employees
FROM tblEmployees
GROUP BY Department;

CREATE TABLE tblDepartments(
DeptId INT PRIMARY KEY,
Department nvarchar(50),
EmployeeId INT FOREIGN KEY REFERENCES tblEmployees(Id),

);

INSERT INTO tblDepartments (DeptId, Department, EmployeeId)
VALUES 
(1, 'Human Resources', 1),
(2, 'Finance', 2),
(3, 'Marketing', 3),
(4, 'Sales', 4),
(5, 'Engineering', 5),
(6, 'Marketing', 6),
(7, 'Finance', 7),
(8, 'Sales', 8),
(9, 'Research and Development', 9),
(10, 'Human Resources', 10),
(11, 'Sales', 11),
(12, 'Engineering', 12),
(13, 'Engineering', 13),
(14, 'Human Resources', 14),
(15, 'Marketing', 15),
(16, 'Sales', 16),
(17, 'Finance', 17),
(18, 'Engineering', 18),
(19, 'Marketing', 19),
(20, 'Sales', 20);

 SELECT tblEmployees.FirstName,tblEmployees.LastName,tblEmployees.Age,tblEmployees.Address, tblDepartments.Department
FROM tblEmployees
INNER JOIN tblDepartments ON tblEmployees.Id = tblDepartments.DeptId;


 SELECT tblEmployees.FirstName,tblEmployees.LastName,tblEmployees.Age,tblEmployees.Address, tblDepartments.Department
FROM tblEmployees
LEFT JOIN tblDepartments ON tblEmployees.Id = tblDepartments.DeptId;


 SELECT tblEmployees.FirstName,tblEmployees.LastName,tblEmployees.Age,tblEmployees.Address, tblDepartments.Department
FROM tblEmployees
FULL JOIN tblDepartments ON tblEmployees.Id = tblDepartments.DeptId;



CREATE PROC    sp_Employee_Insert(
@id INT,
@firstname NVARCHAR(50),
@lastname NVARCHAR(50), 
@age NVARCHAR, 
@address NVARCHAR(50),
@department NVARCHAR(50),
@state NVARCHAR(50),
@country NVARCHAR(20),
@phoneno NVARCHAR(20),
@salary DECIMAL(10,2))
AS
BEGIN
    INSERT INTO tblEmployees(Id, FirstName,LastName, Age, Address,Department,State,Country,PhoneNumber, Salary)
    VALUES ( @id,@firstname, @lastname, @age, @address, @department, @state, @country, @phoneno, @salary);
END;
	
 sp_Employee_Insert 21,'steve','Tom','23','palakkad kerala','Engineering','kerala','India','877676589','23000.00'

 
CREATE PROC sp_Employees_Get
AS
BEGIN
    SELECT * FROM tblEmployees;
END;

sp_Employees_Get

CREATE PROC sp_Employees_Max_Salary
AS
BEGIN
    SELECT MAX(Salary) FROM tblEmployees;
END;

sp_Employees_Max_Salary

CREATE PROC sp_Employee_Update @id INT, @firstname NVARCHAR(50),@lastname NVARCHAR(50), @age INT, @phoneNo NVARCHAR(50), @salary DECIMAL(10, 2)
AS
BEGIN
    UPDATE Employees
    SET FirstName = @firstname,LastName=@lastname, Age = @age, PhoneNumber = @phoneNo, Salary = @salary 
    WHERE Id = @id;
END;

CREATE PROC sp_Employee_Delete @id INT
AS
BEGIN
    DELETE FROM tblEmployees
    WHERE Id = @id;
END;



CREATE PROC usp_EmployeeCRUD 
    @Operation CHAR(1), 
    @id INT = NULL, 
    @firstname NVARCHAR(50) = NULL, 
    @age NVARCHAR(50) = NULL, 
    @state NVARCHAR(50) = NULL,
    @lastname NVARCHAR(50) =NULL,
    @address NVARCHAR(50) =NULL,
    @email NVARCHAR(50) =NULL,
    @country NVARCHAR(50) =NULL,
    @salary DECIMAL(10, 2) = NULL,
	@phoneNo NVARCHAR(50) =NULL

AS
BEGIN
    IF @Operation = 'C'
        INSERT INTO tblEmployees (Id,FirstName,LastName, Age, PhoneNumber, Salary,Country,Address,State)
        VALUES (@id,@firstname,@lastname, @age, @phoneNo, @salary,@country,@address,@state);
        
    ELSE IF @Operation = 'R'
        SELECT * FROM tblEmployees WHERE Id = @id;
        
    ELSE IF @Operation = 'U'
        UPDATE tblEmployees 
        SET FirstName = @firstname,LastName=@lastname, Age = @age, PhoneNumber = @phoneNo, Salary = @salary 
        WHERE Id = @id;
        
    ELSE IF @Operation = 'D'
        DELETE FROM tblEmployees WHERE Id = @id;
END;
