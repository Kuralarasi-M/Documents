select * from Department
select * from Enrollment
select *  from Student 
select * from course

INSERT INTO Department (DepartmentName) VALUES
('Computer Science Engineering'),
('Ele & Com Engineering'),
('Mechanical Engineering'),
('Civil Engineering');

INSERT INTO Course (CourseName, Credits) VALUES
('Data Structures', 4),
('Operating Systems', 3),
('Digital Circuits', 3),
('Thermodynamics', 4),
('Structural Analysis', 3);

create Procedure Details
as
begin
SELECT e.EnrollmentId, e.StudentId,
                       s.Name,s.DepartmentId,d.DepartmentId,d.DepartmentName,
                       c.CourseId, c.CourseName
                FROM Enrollment e
                INNER JOIN Student s ON e.StudentId = s.StudentId
                INNER JOIN Department d ON d.DepartmentId= s.DepartmentId
                INNER JOIN Course c ON e.CourseId = c.CourseId
end
exec Details

create type StuDetails as Table
(
StudentId int,
Name varchar(30),
Email varchar(50),
Phone varchar(20),
DateOfBirth date,
DepartmentId int,
CourseId int,
EnrollmentDate datetime
);

create procedure InsertData
@Data StuDetails Readonly
@EnrollmentId int  output
as
begin 
insert into  Student(Name,Email,Phone,DateOfBirth,DepartmentId)
select Name,Email,Phone,DateOfBirth,DepartmentId from @Data
insert into Enrollment(StudentId,CourseId,EnrollmentDate) 
select StudentId,CourseId,EnrollmentDate from @Date
SET @EnrollmentId = SCOPE_IDENTITY();
end