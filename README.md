# Stock Inventory Management System

This project is a web-based **Stock Inventory Management System** designed to handle stock and billing operations for companies such as manufacturers, wholesalers, and other businesses. The system efficiently manages stock levels, tracks sales, and automates billing processes, including GST, selling price, and discount calculations.

## Features

1. **Company Creation**
   - **Add Company Details**: Create a new company by entering the company name and selecting the type of company (e.g., manufacturer, wholesaler, etc.).

2. **Stock Management**
   - **Manage Stocks**: Admin (owner) can add new stocks to the inventory.
   - **Stock Adjustment**: When stocks are sold, the system automatically reduces the sold quantity from the current stock levels.

3. **Owner Login**
   - **Admin Access**: Owners can log in to view and manage stocks, allowing them to monitor stock levels and make necessary adjustments.

4. **Worker Operations**
   - **Billing**: Workers can create bills by adding stocks according to customer requirements.
   - **Automatic Calculations**: The system automatically calculates GST, selling prices, and discounts during the billing process.

5. **Real-time Inventory Updates**
   - **Dynamic Stock Management**: As sales occur, the system ensures that stock quantities are updated in real time, providing an accurate overview of available inventory.

## Technologies Used

- **Frontend**: HTML, CSS, JavaScript
- **Backend**: Java, JSP
- **Database**: MySQL

## How to Run

1. Set up the MySQL database using the provided SQL scripts.
2. Configure the database connection in the project settings.
3. Deploy the application on a server (e.g., Apache Tomcat).
4. Access the portal through the browser and use the owner credentials to manage the stocks and workers for billing operations.

## Conclusion

The **Stock Inventory Management System** simplifies the process of managing inventory and automating billing operations, making it easier for businesses to keep track of stock levels and handle transactions efficiently. With real-time updates and automated calculations, this system provides a robust solution for inventory management and billing.
