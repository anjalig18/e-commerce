<p align="center">
  <img src="https://cdn-icons-png.flaticon.com/512/6295/6295417.png" width="100" />
</p>
<p align="center">
    <h1 align="center">E-COMMERCE</h1>
</p>
<p align="center">
	<img src="https://img.shields.io/github/license/anjalig18/e-commerce.git?style=flat&color=0080ff" alt="license">
	<img src="https://img.shields.io/github/last-commit/anjalig18/e-commerce.git?style=flat&logo=git&logoColor=white&color=0080ff" alt="last-commit">
	<img src="https://img.shields.io/github/languages/top/anjalig18/e-commerce.git?style=flat&color=0080ff" alt="repo-top-language">
	<img src="https://img.shields.io/github/languages/count/anjalig18/e-commerce.git?style=flat&color=0080ff" alt="repo-language-count">
<p>
<p align="center">
		<em>Developed with the software and tools below.</em>
</p>
<p align="center">
	</p>
<hr>

##  Quick Links

> - [ Overview](#-overview)
> - [ Features](#-features)
> - [ Repository Structure](#-repository-structure)
> - [ Getting Started](#-getting-started)
>   - [ Running e-commerce](#-running-e-commerce)

---

##  Overview

This document outlines the structure and initial data setup for an e-commerce database named mydb. The database includes tables for product inventory, customer data, orders, payments, and shipping information. Each table has been populated with sample data to illustrate the functionality.

---

##  Features

**ProductInventory Table**

Product Management: Stores information about each product, including its unique ID, name, description, price, and available stock quantity.

Inventory Tracking: Allows for easy tracking of product quantities to manage stock levels efficiently.

**CustomerData Table**

Customer Information: Holds comprehensive details about customers, including their unique ID, name, email, phone number, and address.

Contact Management: Facilitates communication with customers through stored contact information.

**OrderData Table**

Order Tracking: Records each order's unique ID, customer ID, order date, total amount, and current status (e.g., Shipped, Delivered, Pending, Processing).

Customer Orders: Links orders to customers to track purchase history and order details.

**Payment Table**

Payment Processing: Captures payment details for each order, including order ID, customer ID, payment date, amount, transaction ID, and payment status.

Transaction Management: Ensures secure and accurate payment tracking with transaction IDs and status indicators.

**ShippingInformation Table**

Shipping Management: Contains shipping details such as order ID, shipping date, tracking number, delivery date, and shipping address.

Order Fulfillment: Tracks shipping progress and delivery status to ensure timely fulfillment of orders.

---

##  Repository Structure

```sh
└── e-commerce/
    ├── E-Commerce.sql
    ├── ER diagram.png
    └── README.md
```


##  Getting Started

***Requirements***

Ensure you have the following dependencies installed on your system:

* **SQL**: `version 8.0`

###  Running-e-commerce

# Running a SQL File in SQL Workbench

## Download and Install SQL Workbench:

1. **Download SQL Workbench:**
   - Visit the [SQL Workbench/J official site](http://www.sql-workbench.net/).
   - Download the version appropriate for your operating system.

2. **Install SQL Workbench:**
   - Follow the installation instructions specific to your operating system.

## Set Up Database Connection:

1. **Open SQL Workbench:**
   - Launch the SQL Workbench application.

2. **Configure the Database Driver:**
   - Go to `File > Manage Drivers`.
   - Add the appropriate JDBC driver for your database (e.g., MySQL, PostgreSQL).

3. **Add a New Connection Profile:**
   - Click `New` to add a new connection profile.
   - Enter connection details (e.g., URL, username, password) for your database.

## Open the SQL File:

1. **Open SQL Script:**
   - Click on `File > Open SQL Script` or press `Ctrl+O`.
   - Browse to and select the SQL file you want to run.

## Run the SQL File:

1. **Display SQL File Contents:**
   - The contents of the SQL file will be displayed in the query editor.

2. **Execute the Script:**
   - Click on the `Run Script` button (green arrow) or press `Ctrl+Enter` to execute the script.
   - Monitor the `Messages` tab for any errors or successful execution messages.

# Creating an ERD using Reverse Engineering

## Install MySQL Workbench (if using MySQL):

1. **Download MySQL Workbench:**
   - Visit the [MySQL website](https://dev.mysql.com/downloads/workbench/).
   - Download and install MySQL Workbench.

## Set Up Database Connection in MySQL Workbench:

1. **Open MySQL Workbench:**
   - Launch MySQL Workbench.

2. **Connect to Database:**
   - Click on `Database > Connect to Database` or use the `+` button to add a new connection.
   - Enter connection details for your database (hostname, port, username, password) and connect.

## Reverse Engineer Database to Create ERD:

1. **Start Reverse Engineering Wizard:**
   - After connecting, go to `Database > Reverse Engineer` to start the reverse engineering wizard.

2. **Select Database:**
   - Select the database you want to reverse engineer.
   - Follow the steps in the wizard:
     - Select the schemas you want to include.
     - Choose the objects to import (tables, views, routines).

3. **Execute Reverse Engineering:**
   - Click `Execute` to start the reverse engineering process.

4. **Generate ERD:**
   - Once the process is complete, MySQL Workbench will generate the ERD for the selected database.
   - The ERD will be displayed in the MySQL Workbench window.
   - You can adjust the layout, edit table properties, and add notes as needed.

5. **Save the ERD:**
   - Click on `File > Save` or `Save As` to save the ERD.


