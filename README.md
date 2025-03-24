# Online Fashion Retail Management System

## 📌 Overview

This project presents a comprehensive and normalized **Online Fashion Retail Management System** designed to solve key challenges in modern online shopping platforms. It focuses on optimizing product discovery, dynamic pricing, inventory tracking, secure transactions, and flexible user experiences with efficient address and order management.

---

## 🚩 Problem Statement

Modern e-commerce platforms often suffer from:

- ❌ Inefficient product filtering based on user-centric attributes.
- ❌ Lack of real-time inventory and pricing logic.
- ❌ Poor order management that cannot handle multiple items per order.
- ❌ Inflexible address storage limited to user profiles.
- ❌ Scattered and redundant product attribute data.
- ❌ Weak access control and role-based security.

---

## ✅ Solution Highlights

### 🔍 Improved Product Discovery
- Filter products by `Fit`, `Length`, `Neckline`, `Sleeve Type`, etc.
- Category-specific filters (e.g., "Wide Leg" for Pants, "Mini" for Dresses).

### 💸 Dynamic Pricing & Inventory Management
- `IsAvailable`: Prevents showing out-of-stock items.
- `IsArchived`: Hides discontinued products.

### 📦 Accurate Order Processing
- Orders include line items to track **quantity** and **price** per product.
- Supports pricing at the **moment of order placement**.

### 📬 Flexible Address Management
- Users can store **multiple addresses**.
- At checkout, choose between saved addresses (e.g., NYC Home or LA Office).

### 🧱 Optimized Data Model
- Attributes (Fit, Material, Sleeve Type) are normalized for:
  - 🔁 Reuse across products.
  - ⚡ Fast search and filtering.

### 🔐 Role-Based Access Control
- `Admin`: Manage products, orders, and inventory.
- `Customer`: Place orders, manage addresses, submit reviews.

---

## 📋 Business Rules

### 👥 User & Authentication
- Email, Name, and Phone are required and unique.
- Role must be `'Customer'` or `'Admin'`.
- Users are assigned a `Tier` (Default, Silver, Gold, Platinum) with tier-based discounts.
- One account per email/phone.

### 🏷️ Product & Category
- Each product must belong to a valid `Category` and `Brand`.
- Product names must be **non-empty** and **unique per brand**.
- `Perishable` products **cannot** be discounted.
- Archived or unavailable products are hidden from customers.
- **Out-of-stock** items are not shown or purchasable.

### 🎨 Product Variations & Images
- Stock quantity must be ≥ 0.
- Variations are uniquely identified by `Product`, `Size`, and `Color`.
- A **minimum of one image** is required to make a variation public.
- Images are tied to **variations**, not base products.

### 🛒 Cart & Orders
- Cart items must have quantity ≥ 1 (default is 1).
- No duplicate cart entries for same product per user.
- Only active, in-stock items can be added to the cart.
- Cart is auto-cleared after order placement.
- Orders require line items with quantity ≥ 1.
- **Selling Price** is computed as:  
  `SellingPrice = Price - (Price * UserTier.DiscountRate / 100)`

### 💳 Payments
- Every order must include a valid **payment method** and **payment status**.

### ⭐ Reviews
- Only verified buyers can submit reviews.
- Only one review per product per user.
- Ratings must be between **1 and 5** (integers only).

---
## 📦 Views Overview

The following SQL views have been created to support reporting, analysis, and feature functionalities within the system:


- `Customer_order_summary`  
  Summarizes order details for each customer including status and date.

- `Product_inventory`  
  Provides product-wise inventory data including variation details.

- `Product_review_summary`  
  Lists all product reviews with associated customer and rating info.

- `Low_stock_alert`  
  Flags product variations where stock is below a defined threshold.

- `Category_wise_sales_summary`  
  Summarizes sales and revenue grouped by product category.

- `Shopping_cart_details`  
  Displays current items in each user's shopping cart.

- `Customer_order_history`  
  Shows complete order history for a specific customer.

- `Customer_reviews`  
  Lists reviews written by each customer with timestamps.

- `User_saved_addresses`  
  Shows addresses saved by users for delivery and billing.

- `Top_selling_products`  
  Lists the highest-selling products based on quantity ordered.

- `Top_customers`  
  Identifies customers with the highest number of orders or spend.

- `Product_variation`  
  Displays all product variation details like size and color.

- `Order_payment_summary`  
  Summarizes payment methods and statuses for all orders.

- `Brand_product_summary`  
  Shows brands with their associated product counts.

- `User_public_info`  
  Displays non-sensitive user information for public view (excluding passwords).

- `Admin_all_orders_with_customer_info`  
  Full order details view for admin use, including customer contact data.

- `Admin_all_reviews_with_product_and_customer_info`  
  Admin-level view to monitor all reviews with full user and product context.

## 🛠️ Tools & Technologies

- **Database**: Oracle SQL
- **Modeling Tool**: Oracle SQL Developer Data Modeler
- **Language**: PL/SQL
- **Platform**: Oracle Cloud Database

---

## 🚀 Project Setup

- Clone the repository using `git clone https://github.com/Hrutika-Patel-NEU/Online_Fashion_Retail_Management_System.git` and navigate into the folder.
- Login to the Oracle Cloud Database as the `admin` user.
- Execute `ERetailer_Admin_Creation.sql` to create the `ERetailer_DBA` user.
- Login to the database as `ERetailer_DBA` using the credentials:
  - **Username**: `ERetailer_DBA`
  - **Password**: `ERetailerDBA#123`
- Execute `User_Creation_Grants.sql` to create the required users and grant necessary permissions.
- Create all database tables by executing the SQL files in the correct sequence as provided in the table creation directory.
- Login as the appropriate user depending on your access needs using the credentials below:

| User Role                | Username               | Password              |
|--------------------------|------------------------|------------------------|
| Admin                    | `ecom_app_admin`       | `AdminPassword#123`   |
| Standard User            | `ecom_app_user`        | `UserPassword#123`    |
| Business Analytics User  | `ecom_app_report_user` | `ReportUserPassword#123` |
| Guest User               | `ecom_app_guest_user`  | `GuestPassword#123`   |
---

## 📂 Folder Structure
```
Online_Fashion_Retail_Management_System/
├── DDL/                          
├── ERetailer_Admin Creation.sql  
├── Logical_Model.pdf         
├── Physical_Model.pdf        
├── README.md                     
├── User_Creation_Grants.sql 
```
- `DDL/`  
  ▸ Contains all **DDL (Data Definition Language)** scripts for creating tables, constraints, indexes, and inserting initial data.

- `ERetailer_Admin Creation.sql`  
  ▸ SQL script to create an **admin user** with necessary privileges for managing the retail system.

- `Logical_Model.pdf`  
  ▸ Exported **logical ER diagram** from Oracle SQL Data Modeler showing entities, attributes, and relationships (conceptual view).

- `Physical_Model.pdf`  
  ▸ Exported **physical ER diagram** representing how tables and constraints are structured in the actual database.

- `README.md`  
  ▸ The main **project documentation file** explaining the system, its features, team members, usage instructions, and more.

- `User_Creation_Grants.sql`  
  ▸ Script for creating **user accounts** and assigning **roles and privileges** necessary to access or manage different parts of the database.

---

## 👥 Team Members

| Name                      | NUID                    |
|---------------------------|-------------------------|
| Hrutika Harshadbhai Patel | 002059994               |
| Dhruv Baraiya             | 002306624               |
| Adarsh Akhouri            |                         |
| Vishwesh GopiKrishnan     |                         |

---
