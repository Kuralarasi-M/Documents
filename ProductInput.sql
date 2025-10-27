INSERT INTO Categories (CategoryName, Description, CreatedDate)
VALUES 
('Electronics', 'Devices and gadgets', GETDATE()),
('Clothing', 'Men and women clothing', GETDATE()),
('Books', 'Fiction, non-fiction, educational', GETDATE()),
('Home Appliances', 'Appliances for daily use', GETDATE());
INSERT INTO Products (ProductName, Description, Price, StockQuantity, CategoryId, CreatedDate)
VALUES
('Smartphone', 'Android smartphone with 6GB RAM', 25000.00, 50, 1, GETDATE()),
('Laptop', '15-inch laptop with 512GB SSD', 60000.00, 30, 1, GETDATE()),
('T-Shirt', 'Cotton t-shirt, size M', 500.00, 100, 2, GETDATE()),
('Jeans', 'Blue denim jeans, size 32', 1200.00, 80, 2, GETDATE()),
('Novel', 'Mystery fiction novel', 300.00, 200, 3, GETDATE()),
('Cookbook', 'Healthy recipes cookbook', 450.00, 150, 3, GETDATE()),
('Microwave Oven', '800W microwave oven', 7000.00, 20, 4, GETDATE()),
('Vacuum Cleaner', 'Bagless vacuum cleaner', 8500.00, 15, 4, GETDATE());
