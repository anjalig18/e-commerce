use mydb;
CREATE TABLE ProductInventory (
    productId INT PRIMARY KEY,
    productName VARCHAR(50),
    descriptionText VARCHAR(100),
    price INT,
    quantityStock INT
);
CREATE TABLE  CustomerData (
    CustomerId INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    CustomerEmail VARCHAR(100),
    Phone VARCHAR(20),
    CustomerAddress  varchar(150)
);
CREATE TABLE  OrderData (
    OrderId INT PRIMARY KEY,
    CustomerId INT,
    OrderDate INT,
    TotalAmount INT,
    OrderStatus varchar(100)
);
CREATE TABLE  Payment (
    OrderId INT PRIMARY KEY,
    CustomerId INT,
    PaymentDate INT,
    Amount INT,
    TransactionID INT,
    PaymentStatus INT
);
CREATE TABLE  ShippingInformation (
    OrderId INT PRIMARY KEY,
    ShippingDate INT,
    TrackingNmuber INT,
    DeliveryDate INT,
    ShippingAddress varchar(150)
);
-- Populate ProductInventory table
INSERT INTO ProductInventory (productId, productName, descriptionText, price, quantityStock)
VALUES
    (1, 'Laptop', 'High-performance laptop', 1000, 10),
    (2, 'Smartphone', 'Latest smartphone model', 800, 15),
    (3, 'Headphones', 'Noise-cancelling headphones', 200, 20),
    (4, 'Tablet', 'Portable tablet device', 500, 8),
    (5, 'Smartwatch', 'Fitness tracking smartwatch', 300, 12);

-- Populate CustomerData table
INSERT INTO CustomerData (CustomerId, CustomerName, CustomerEmail, Phone, CustomerAddress)
VALUES
    (1, 'John Doe', 'john@example.com', '1234567890', '1234 Elm St'),
    (2, 'Jane Smith', 'jane@example.com', '9876543210', '5678 Oak St'),
    (3, 'Alice Johnson', 'alice@example.com', '5551234567', '9012 Maple St'),
    (4, 'Bob Brown', 'bob@example.com', '1112223333', '3456 Pine St'),
    (5, 'Emily Davis', 'emily@example.com', '4445556666', '7890 Cedar St');
-- Populate OrderData table
INSERT INTO OrderData (OrderId, CustomerId, OrderDate, TotalAmount, OrderStatus)
VALUES
    (1, 1, 20240225, 1200, 'Shipped'),
    (2, 2, 20240224, 1000, 'Delivered'),
    (3, 3, 20240223, 500, 'Pending'),
    (4, 4, 20240222, 1500, 'Processing'),
    (5, 5, 20240221, 800, 'Shipped');

-- Populate Payment table
INSERT INTO Payment (OrderId, CustomerId, PaymentDate, Amount, TransactionID, PaymentStatus)
VALUES
    (1, 1, 20240225, 1200, 123456, 1),
    (2, 2, 20240224, 1000, 654321, 1),
    (3, 3, 20240223, 500, 987654, 0),
    (4, 4, 20240222, 1500, 234567, 1),
    (5, 5, 20240221, 800, 876543, 1);

-- Populate ShippingInformation table
INSERT INTO ShippingInformation (OrderId, ShippingDate, TrackingNmuber, DeliveryDate, ShippingAddress)
VALUES
    (1, 20240226, 1234567890, 20240301, '1234 Elm St'),
    (2, 20240225, 0987654321, 20240228, '5678 Oak St'),
    (3, NULL, NULL, NULL, NULL),
    (4, NULL, NULL, NULL, NULL),
    (5, 20240222, 1357924680, 20240227, '7890 Cedar St');
    
-- List all tables
SHOW TABLES;

-- View data in all tables
SET @tables = NULL;
SELECT GROUP_CONCAT(table_name) INTO @tables FROM information_schema.tables WHERE table_schema = 'mydb';
SET @tables = CONCAT('SELECT * FROM ', @tables);
PREPARE stmt FROM @tables;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
