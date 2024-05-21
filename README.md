**E-Commerce Database Setup and Initialization**


**Overview**

This document outlines the structure and initial data setup for an e-commerce database named mydb. The database includes tables for product inventory, customer data, orders, payments, and shipping information. Each table has been populated with sample data to illustrate the functionality.

**Database Schema**
**Tables**

**1.ProductInventory**

•productId (INT, PRIMARY KEY): Unique identifier for each product.

•productName (VARCHAR(50)): Name of the product.

•descriptionText (VARCHAR(100)): Description of the product.

•price (INT): Price of the product.

•quantityStock (INT): Quantity of the product in stock.

**2.CustomerData**

•CustomerId (INT, PRIMARY KEY): Unique identifier for each customer.

•CustomerName (VARCHAR(50)): Name of the customer.

•CustomerEmail (VARCHAR(100)): Email address of the customer.

•Phone (VARCHAR(20)): Phone number of the customer.

•CustomerAddress (VARCHAR(150)): Address of the customer.

**3.OrderData**

•OrderId (INT, PRIMARY KEY): Unique identifier for each order.

•CustomerId (INT): ID of the customer who placed the order.

•OrderDate (INT): Date when the order was placed (in YYYYMMDD format).

•TotalAmount (INT): Total amount of the order.

•OrderStatus (VARCHAR(100)): Status of the order (e.g., Shipped, Delivered, Pending, Processing).

**4.Payment**

•OrderId (INT, PRIMARY KEY): ID of the order being paid for.

•CustomerId (INT): ID of the customer making the payment.

•PaymentDate (INT): Date when the payment was made (in YYYYMMDD format).

•Amount (INT): Amount paid.

•TransactionID (INT): Unique identifier for the transaction.

•PaymentStatus (INT): Status of the payment (e.g., 1 for successful, 0 for pending).

**5.ShippingInformation**

•OrderId (INT, PRIMARY KEY): ID of the order being shipped.

•ShippingDate (INT): Date when the order was shipped (in YYYYMMDD format).

•TrackingNmuber (INT): Tracking number for the shipment.

•DeliveryDate (INT): Date when the order was delivered (in YYYYMMDD format).

•ShippingAddress (VARCHAR(150)): Address where the order is being shipped.


**Initial Data Population**

**ProductInventory Table**

•Inserted 5 products with details including their IDs, names, descriptions, prices, and quantities in stock.

**CustomerData Table**

•Inserted 5 customers with details including their IDs, names, emails, phone numbers, and addresses.

**OrderData Table**

•Inserted 5 orders with details including their IDs, customer IDs, order dates, total amounts, and order statuses.

**Payment Table**

•Inserted 5 payments with details including their order IDs, customer IDs, payment dates, amounts, transaction IDs, and payment statuses.

**ShippingInformation Table**

•Inserted shipping information for 3 orders with details including their order IDs, shipping dates, tracking numbers, delivery dates, and shipping addresses.

**SQL Commands**

The document includes SQL commands to:

•Create each table.

•Populate each table with sample data.

•List all tables in the database.

•View data in all tables using a prepared statement.

**Instructions to Run in SQL Workbench**

**1.To set up and run the database schema and initial data population in MySQL Workbench, follow these steps:**

Open MySQL Workbench: Launch MySQL Workbench on your computer.

Create a New Connection: If you haven't already, create a new connection to your MySQL server.

Go to Database > Manage Connections.
Click New and enter your connection details (hostname, port, username, and password).
Test the connection to ensure it is working and save it.
Connect to the Database: Select your connection and click Connect.

Create the Database: Open a new SQL tab and run the following script and there we go, we have the results.

**2.ER Diagram**

Use reverse engineer option in database tab and you can create it.
