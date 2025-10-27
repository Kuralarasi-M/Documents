create Table Student
(StudentId int primary key identity(1,1),
Name varchar(30),
Email varchar(30) unique,
Phone varchar(15),
DateOfBirth date,
DepartmentId int,
Constraint stufk   foreign key (DepartmentId) references Department(DepartmentId)
);


create table Course(
CourseId int primary key identity(1,1),
CourseName varchar(50),
Credits int)


create table Department(
DepartmentId int primary key identity(1,1),
DepartmentName varchar(30))


create table Enrollment(
EnrollmentId int primary key identity(1,1),
StudentId int,
CourseId int,
EnrollmentDate datetime,
constraint enrollStu foreign key (StudentId) references Student(StudentId),
constraint enrollCou foreign key (CourseId) references Course(CourseId))

create type StuCourse as Table(
StudentId int,
Name varchar(30),
DepartmentName varchar(30),
CourseName varchar(50),
EnrollmentDate datetime)

create Procedure EnrollDetail
@EnrollTable StuCourse readonly
as
begin
select s.StudentId,s.Name,d.DepartmentName,c.CourseName,e.EnrollmentDate from enrollment e
inner join Course c on c.CourseId=e.CourseId
inner join student s on e.StudentId=s.StudentId
inner join Department d on d.DepartmentId=s.DepartmentId
end



select * from Department


create procedure GetDepartmentByID
	@Id int
as
begin
	Select * from Department where DepartmentId = @Id
end;

exec GetDepartmentByID 1;
select * from Students
select * from Departments
insert into Departments(DepartmentName) values ('Testing')