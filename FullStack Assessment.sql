create database EmployeeOnBoard

use EmployeeOnBoard

create table Employee(
SubmissionId int primary key identity (1,1),
EmployeeId varchar(30) unique,
FirstName varchar(30),
MiddleName varchar(30),
LastName varchar(30),
Email varchar(40) unique,
PhoneNumber varchar(15),
DepartmentId int,
RoleId int,
Location varchar(50),
Experience int,
JoiningDate Date,
ProbationEndDate Date,
CTC int,
isHOD bit,
foreign key (DepartmentId) references Department(DepartmentId) ,
foreign key (RoleId) references DepartmentRole(RoleId) 
)

create table Department(
DepartmentId int primary key identity(1,1),
DepartmentName varchar(50)
)

create table DepartmentRole(
RoleId int primary key identity(1,1),
RoleName varchar(50),
DepartmentId int,
foreign key (DepartmentId) references Department(DepartmentId)
)


create table Metalog(
EmployeeId varchar(30) unique,
EmployeeName varchar(50),
DepartmentId int,
RoleId int,
JoiningDate Date,
foreign key (DepartmentId) references Department(DepartmentId) ,
foreign key (RoleId) references DepartmentRole(RoleId)
)
select * from Department
select * from DepartmentRole
select * from Employee



