CREATE TABLE Employee (
    EmployeeId INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) UNIQUE,
    Phone NVARCHAR(15),
    HireDate DATE NOT NULL,
    Salary DECIMAL(10,2),
    DepartmentId INT,
    FOREIGN KEY (DepartmentId) REFERENCES Department(DepartmentId)
);
CREATE TABLE Department (
    DepartmentId INT IDENTITY(1,1) PRIMARY KEY,
    DepartmentName NVARCHAR(100) NOT NULL,
   
);
select * from Department;
select * from Employee;
insert into Department(DepartmentName) values('Development');
insert into Department(DepartmentName) values('HR');
insert into Department(DepartmentName) values('Marketing');
insert into Department(DepartmentName) values('Finance');

create Type EmpTable as Table(
    EmployeeName varchar(100),
     Email NVARCHAR(100) UNIQUE,
    Phone NVARCHAR(15),
    HireDate DATE NOT NULL,
    Salary DECIMAL(10,2),
    DepartmentId INT

);

create procedure EmployeeDetails
as
begin
select e.EmployeeId,e.EmployeeName,e.Salary,d.DepartmentName from Employee e 
inner join Department d on d.DepartmentId=e.DepartmentId
end
SELECT * FROM sys.objects WHERE type = 'P' AND name = 'EmployeeDetails';

exec EmployeeDetails

create procedure InsertData
@InsertedData EmpTable Readonly
as
begin
   insert into Employee 
   select EmployeeName,Email,Phone,HireDate,Salary,DepartmentId from @InsertedData
end
