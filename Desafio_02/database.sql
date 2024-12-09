CREATE TABLE mkt_Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    StockQuantity INT
);

INSERT ALL
    INTO mkt_Products VALUES (1, 'Laptop', 'Electronics', 800.00, 50)
    INTO mkt_Products VALUES (2, 'Smartphone', 'Electronics', 500.00, 100)
    INTO mkt_Products VALUES (3, 'Desk Chair', 'Furniture', 120.00, 25)
    INTO mkt_Products VALUES (4, 'Coffee Maker', 'Appliances', 40.00, 30)
    INTO mkt_Products VALUES (5, 'Running Shoes', 'Apparel', 80.00, 50)
    INTO mkt_Products VALUES (6, 'Bookshelf', 'Furniture', 150.00, 20)
    INTO mkt_Products VALUES (7, 'Backpack', 'Accessories', 30.00, 40)
    INTO mkt_Products VALUES (8, 'Microwave', 'Appliances', 70.00, 15)
    INTO mkt_Products VALUES (9, 'Office Desk', 'Furniture', 200.00, 10)
    INTO mkt_Products VALUES (10, 'T-shirt', 'Apparel', 15.00, 75)
SELECT * FROM dual;

CREATE TABLE mkt_Clients (
    ClientID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

INSERT ALL
    INTO mkt_Clients VALUES (1, 'John', 'Doe', 'john.doe@example.com', '555-1234')
    INTO mkt_Clients VALUES (2, 'Jane', 'Smith', 'jane.smith@example.com', '555-5678')
    INTO mkt_Clients VALUES (3, 'Robert', 'Johnson', 'robert.j@example.com', '555-9876')
    INTO mkt_Clients VALUES (4, 'Emily', 'Davis', 'emily.davis@example.com', '555-4321')
    INTO mkt_Clients VALUES (5, 'Michael', 'Wilson', 'michael.w@example.com', '555-8765')
    INTO mkt_Clients VALUES (6, 'Lisa', 'Miller', 'lisa.miller@example.com', '555-2345')
    INTO mkt_Clients VALUES (7, 'David', 'Brown', 'david.brown@example.com', '555-6789')
    INTO mkt_Clients VALUES (8, 'Sarah', 'Turner', 'sarah.turner@example.com', '555-3456')
    INTO mkt_Clients VALUES (9, 'Kevin', 'Harris', 'kevin.harris@example.com', '555-7890')
    INTO mkt_Clients VALUES (10, 'Emma', 'Taylor', 'emma.t@example.com', '555-4567')
SELECT * FROM dual;

CREATE TABLE mkt_Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    ClientID INT,
    SaleDate DATE,
    Quantity INT,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (ProductID) REFERENCES mkt_Products(ProductID),
    FOREIGN KEY (ClientID) REFERENCES mkt_Clients(ClientID)
);

INSERT ALL
    INTO mkt_Sales VALUES (1, 1, 1, TO_DATE('2024-01-01', 'YYYY-MM-DD'), 2, 1600.00)
    INTO mkt_Sales VALUES (2, 3, 2, TO_DATE('2024-01-03', 'YYYY-MM-DD'), 1, 120.00)
    INTO mkt_Sales VALUES (3, 7, 4, TO_DATE('2024-01-05', 'YYYY-MM-DD'), 3, 90.00)
    INTO mkt_Sales VALUES (4, 5, 5, TO_DATE('2024-01-08', 'YYYY-MM-DD'), 5, 400.00)
    INTO mkt_Sales VALUES (5, 9, 3, TO_DATE('2024-01-10', 'YYYY-MM-DD'), 1, 200.00)
    INTO mkt_Sales VALUES (6, 2, 6, TO_DATE('2024-01-12', 'YYYY-MM-DD'), 2, 1000.00)
    INTO mkt_Sales VALUES (7, 4, 7, TO_DATE('2024-01-15', 'YYYY-MM-DD'), 4, 160.00)
    INTO mkt_Sales VALUES (8, 8, 9, TO_DATE('2024-01-18', 'YYYY-MM-DD'), 1, 70.00)
    INTO mkt_Sales VALUES (9, 6, 8, TO_DATE('2024-01-20', 'YYYY-MM-DD'), 3, 450.00)
    INTO mkt_Sales VALUES (10, 10, 10, TO_DATE('2024-01-22', 'YYYY-MM-DD'), 2, 30.00)
SELECT * FROM dual;

CREATE TABLE mkt_Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(50),
    ContactPerson VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    FOREIGN KEY (SupplierID) REFERENCES mkt_Sales(SaleID)
);

INSERT ALL
    INTO mkt_Suppliers VALUES (1, 'Tech Distributors', 'Mark Johnson', 'info@techdist.com', '555-1111')
    INTO mkt_Suppliers VALUES (2, 'Furniture Mart', 'Sarah Smith', 'sales@furnituremart.com', '555-2222')
    INTO mkt_Suppliers VALUES (3, 'Appliance World', 'David Brown', 'support@applianceworld.com', '555-3333')
    INTO mkt_Suppliers VALUES (4, 'Shoe Wholesalers', 'Emily Davis', 'sales@shoewholesale.com', '555-4444')
    INTO mkt_Suppliers VALUES (5, 'Book Suppliers', 'Michael Wilson', 'books@suppliers.com', '555-5555')
    INTO mkt_Suppliers VALUES (6, 'Office Solutions', 'Lisa Miller', 'info@officesolutions.com', '555-6666')
    INTO mkt_Suppliers VALUES (7, 'Accessory Hub', 'Robert Johnson', 'contact@accessoryhub.com', '555-7777')
    INTO mkt_Suppliers VALUES (8, 'Kitchen Essentials', 'Jane Smith', 'info@kitchenessentials.com', '555-8888')
    INTO mkt_Suppliers VALUES (9, 'Apparel World', 'Kevin Harris', 'info@apparelworld.com', '555-9999')
    INTO mkt_Suppliers VALUES (10, 'Sports Gear Inc.', 'Emma Taylor', 'sales@sportsgear.com', '555-0000')
SELECT * FROM dual;

CREATE TABLE mkt_EmployeeDetails (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

INSERT ALL
INTO mkt_EmployeeDetails VALUES (1, 'Adam', 'Johnson', 'adam.j@example.com', '555-1234')
INTO mkt_EmployeeDetails VALUES (2, 'Olivia', 'Brown', 'olivia.b@example.com', '555-5678')
INTO mkt_EmployeeDetails VALUES (3, 'Liam', 'Miller', 'liam.m@example.com', '555-9876')
INTO mkt_EmployeeDetails VALUES (4, 'Ava', 'Davis', 'ava.d@example.com', '555-4321')
INTO mkt_EmployeeDetails VALUES (5, 'Noah', 'Wilson', 'noah.w@example.com', '555-8765')
INTO mkt_EmployeeDetails VALUES (6, 'Sophia', 'Smith', 'sophia.s@example.com', '555-2345')
INTO mkt_EmployeeDetails VALUES (7, 'Jackson', 'Turner', 'jackson.t@example.com', '555-6789')
INTO mkt_EmployeeDetails VALUES (8, 'Emma', 'Harris', 'emma.h@example.com', '555-3456')
INTO mkt_EmployeeDetails VALUES (9, 'Aiden', 'Taylor', 'aiden.t@example.com', '555-7890')
INTO mkt_EmployeeDetails VALUES (10, 'Grace', 'Jones', 'grace.j@example.com', '555-1111')
SELECT * FROM dual;

CREATE TABLE mkt_Employees (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    ClientID INT,
    EmployeeID INT,
    SaleDate DATE,
    Quantity INT,
    Employee_Position VARCHAR(50),
    FOREIGN KEY (EmployeeID) REFERENCES mkt_EmployeeDetails(EmployeeID)
);

INSERT INTO mkt_Employees (SaleID, ProductID, ClientID, EmployeeID, SaleDate, Quantity)
SELECT
    s.SaleID,
    p.ProductID,
    c.ClientID,
    ed.EmployeeID,
    s.SaleDate,
    s.Quantity
FROM mkt_Sales s
JOIN mkt_Products p ON s.ProductID = p.ProductID
JOIN mkt_Clients c ON s.ClientID = c.ClientID
JOIN mkt_EmployeeDetails ed ON s.ClientID = ed.EmployeeID;

UPDATE mkt_Employees
SET Employee_Position = (
    CASE
        WHEN EmployeeID = 1 THEN 'Sales Associate'
        WHEN EmployeeID = 2 THEN 'Manager'
        WHEN EmployeeID = 3 THEN 'Customer Support'
        WHEN EmployeeID = 4 THEN 'Warehouse Clerk'
        WHEN EmployeeID = 5 THEN 'IT Specialist'
        WHEN EmployeeID = 6 THEN 'Marketing'
        WHEN EmployeeID = 7 THEN 'HR Manager'
        WHEN EmployeeID = 8 THEN 'Finance'
        WHEN EmployeeID = 9 THEN 'Logistics'
        WHEN EmployeeID = 10 THEN 'Research Analyst'
        ELSE NULL
    END
);