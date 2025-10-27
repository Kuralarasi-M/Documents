create Table Employee(
EmployeeId int primary key identity(1,1),
Name varchar(30),
DepartmentId int ,
Email varchar(30),
PhoneNo varchar(15),
Joining Date,
Salary decimal(10,2),
foreign key (DepartmentId) references Department(DepartmentId)
)

create table Department(
DepartmentId int primary key identity(1,1),
DepartmentName varchar(30),
)

INSERT INTO Department (DepartmentName) VALUES
('Human Resources'),
('Finance'),
('IT'),
('Marketing'),
('Sales');

INSERT INTO Employee (Name, DepartmentId, Email, PhoneNo, Joining, Salary) VALUES
('John Smith', 1, 'john.smith@company.com', '9876543210', '2020-03-15', 55000.00),
('Priya Sharma', 2, 'priya.sharma@company.com', '9898989898', '2021-01-10', 60000.00),
('Amit Patel', 3, 'amit.patel@company.com', '9000001111', '2022-07-25', 75000.00),
('Sneha Reddy', 4, 'sneha.reddy@company.com', '9888887777', '2021-09-18', 58000.00),
('Rahul Verma', 5, 'rahul.verma@company.com', '9777776666', '2023-04-05', 62000.00);



SELECT * FROM Department;
SELECT * FROM Employee;
