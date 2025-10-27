

USE StudentDB;
GO

CREATE TABLE Student(
 Id INT PRIMARY KEY,
 Name VARCHAR(100),
 Email VARCHAR(50),
 Mobile VARCHAR(50)
)
GO

INSERT INTO Student VALUES (101, 'Anurag', 'Anurag@dotnettutorial.net', '1234567890')
INSERT INTO Student VALUES (102, 'Priyanka', 'Priyanka@dotnettutorial.net', '2233445566')
INSERT INTO Student VALUES (103, 'Preety', 'Preety@dotnettutorial.net', '6655443322')
INSERT INTO Student VALUES (104, 'Sambit', 'Sambit@dotnettutorial.net', '9876543210')
GO
select * from Student

update Student set Name='Anu' where Id=101;
delete from student where Id=104;

sp_helptext 'Details'
sp_helptext 'StudentDetails'
create procedure StudentDetails  
@DepartmentId int  
as  
begin  
  select s.Id,s.Name,s.Email,s.Mobile,s.DepartmentId,d.DepartmentName from Student s  
  inner join Department d on (d.DepartmentId=s.DepartmentId)   
  where s.DepartmentId=@DepartmentId  
  
end
create procedure Details  
as  
begin  
select * from Student;  
select * from Department;  
end
create view StudentView
as
select s.Id,s.Name,s.Email,s.Mobile,s.DepartmentId,d.DepartmentName from Student s  
inner join Department d on (d.DepartmentId=s.DepartmentId) 
