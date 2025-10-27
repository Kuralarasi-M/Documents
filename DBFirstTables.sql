create table Student(
 StudentId int identity(1,1) primary key,
 StuName varchar(30),
 Email NVARCHAR(100) UNIQUE NOT NULL,
 Mobile NVARCHAR(15)
);
CREATE TABLE Marks (
    MarksId INT IDENTITY(1,1) PRIMARY KEY,
    StudentId INT NOT NULL,
    Subject1 INT NOT NULL,
    Subject2 INT NOT NULL,
    Subject3 INT NOT NULL,
    Subject4 INT NOT NULL,
    Subject5 INT NOT NULL,
    TotalMarks AS (Subject1 + Subject2 + Subject3 + Subject4 + Subject5) PERSISTED,
    CONSTRAINT FK_Student_Marks FOREIGN KEY (StudentId) REFERENCES Student(StudentId)
);
select * from Student
select * from Marks

create procedure StudentDetails
as
begin
select s.StudentId,s.StuName,s.Email,s.Mobile,m.TotalMarks from Student s 
inner join Marks m on m.StudentId=s.StudentId
end