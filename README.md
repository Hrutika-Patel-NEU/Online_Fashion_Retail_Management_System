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
- `Admin`: Full access to manage products, users, orders, and inventory.
- `Standard User`: Place orders, manage addresses, submit reviews, and maintain cart.
- `Business Analytics User`: Access views and reports for insights and performance tracking.
- `Guest User`: Limited browsing access to public product and category data.

---

## 📋 Business Rules

### 👥 User & Role Rules
- `Email`, `First Name`, `Last Name`, and `Phone Number` are mandatory for user registration.
- Email and Phone Number must be **unique** and follow valid formats.
- User Role must be one of the following:
   - `Admin`: Full system management.
   - `Standard User`: Can shop and place orders.
   - `Business Analytics User`: Read-only access to data and reports.
   - `Guest User`: Limited access, browsing only.
- A user cannot register multiple times with the same email or phone number.
- Each user is assigned a **Tier**: `Standard`, `Bronze`, `Silver`, `Gold`, or `Platinum`.

### 🏷️ Product & Category Rules
- Each product must belong to a valid **Category** and **Brand** (enforced via foreign keys).
- Product name must be **non-empty** and **unique within its brand**.
- Products marked as `IsArchived = 'Y'` or `IsAvailable = 'N'` are excluded from storefront, cart, and checkout.
- Out-of-stock products **cannot** be added to the cart or ordered.

### 🎨 Product Variations, Attributes & Images
- Stock quantity for all product variations must be `≥ 0`.
- Each product variation must be **uniquely identified** by `Product`, `Size`, and `Color`.
- At least **one image** is required per variation before it can be made publicly visible.
- Images are associated with **product variations**, not base products.

### 🛒 Cart Rules
- Cart item quantity must be `≥ 1` and defaults to `1`.
- A user cannot have **duplicate cart entries** for the same product variation.
- Only **active and in-stock products** can be added to the cart.
- Cart is **automatically cleared** after order placement (handled at the application layer).

### 📦 Order Rules
- Order line items must have quantity `≥ 1`.
- Discounts are applied at checkout using the formula:  
   `SellingPrice = Price - (Price * UserTier.DiscountRate / 100)`
- A user’s discount eligibility is dynamically determined based on their assigned `UserTier`.

### 💳 Payment Rules
- All orders must have a valid **payment method** and **payment status** recorded.

### ⭐ Review Rules
- Only users who have **purchased** a product can submit a review (verified buyers).
- A user can submit **only one review per product**.
- Review ratings must be **integers between 1 and 5**.


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

---
## ⚙️ Triggers Overview

The following trigger scripts are used to enforce business rules, automate actions, and maintain audit trails in the system:

- `01_CreatedAt_and_UpdatedAt_Triggers_For_Users.sql`  
  Creates trigger for auto timestamping in `USERS` table.

- `02_CreatedAt_and_UpdatedAt_Triggers_For_Usertiers.sql`  
  Creates trigger for timestamp management in `USERTIERS`.
- `03_CreatedAt_and_UpdatedAt_Triggers_For_Products.sql`  
Adds trigger for tracking create/update times in `PRODUCTS`.
- `04_CreatedAt_and_UpdatedAt_Triggers_For_Productvariations.sql`  
Maintains audit fields for `PRODUCTVARIATIONS`.
- `05_CreatedAt_and_UpdatedAt_Triggers_For_Productimages.sql`  
Adds created/updated timestamps to `PRODUCTIMAGES`.
- `06_CreatedAt_and_UpdatedAt_Triggers_For_Sizeoptions.sql`  
Trigger to track changes in `SIZEOPTIONS`.
- `07_CreatedAt_and_UpdatedAt_Triggers_For_Orders.sql`  
Ensures `ORDERS` table captures timestamps correctly.
- `08_CreatedAt_and_UpdatedAt_Triggers_For_Orderlineitems.sql`  
Applies timestamp automation to `ORDERLINEITEMS`.
- `09_CreatedAt_and_UpdatedAt_Triggers_For_Address.sql`  
Manages audit fields for `ADDRESS` table.
- `10_CreatedAt_and_UpdatedAt_Triggers_For_Shoppingcart.sql`  
Tracks timestamp changes in `SHOPPINGCART`.
- `11_CreatedAt_and_UpdatedAt_Triggers_For_Reviews.sql`  
Creates audit triggers for `REVIEWS`.
- `12_CreatedAt_and_UpdatedAt_Triggers_For_Brands.sql`  
Trigger for timestamps on `BRANDS` table.
- `13_CreatedAt_and_UpdatedAt_Triggers_For_Productattributes.sql`  
Timestamp tracking for `PRODUCTATTRIBUTES`.
- `14_CreatedAt_and_UpdatedAt_Triggers_For_Productattributevalues.sql`  Audit fields trigger for attribute values.
- `15_CreatedAt_and_UpdatedAt_Triggers_For_Productattributemapping.sql`  Trigger for mapping table timestamps.
- `16_CreatedAt_and_UpdatedAt_Triggers_For_Productcategories.sql`   Timestamp updates on category changes.
- `17_CreatedAt_and_UpdatedAt_Triggers_For_Colors.sql`  
Auto audit fields for `COLORS` table.
- `18_Check_Stock_Before_Order.sql`  
Prevents orders if product stock is insufficient.
- `19_Update_Stock_On_Order.sql`  
Deducts stock when an order is placed.
- `20_Collapse_Duplicate_Cart_Entries.sql`  
Merges duplicate cart entries into one.
- `21_Prevent_Add_Unavailable_Products.sql`  
Restricts adding unavailable items to cart.
- `22_Require_Image_Before_Publishing.sql`  
Ensures products have an image before publishing.
- `23_Apply_User_Tier_Discount.sql`  
Automatically applies discount based on user tier.
- `24_Update_User_Tier_After_Checkout.sql`  
Updates user tier after successful checkout.
- `25_Verified_Buyer_Only.sql`  
Allows review submission only from verified buyers.
- `26_One_Review_Per_User_Product.sql`  
Restricts users to one review per product.
---
## 📊 Reports Overview

The following report scripts generate analytical summaries and insights from the retail system database:

- `01_Order_Summary_By_User_Tier.sql`  
Summarizes total orders and revenue by user tier.

- `02_Shipping_Address_Usage_Frequency.sql`  
Displays how frequently different shipping addresses are used.

- `03_Discount_Utilization_Report.sql`  
Analyzes usage patterns of discount codes across transactions.

- `04_Customer_Lifetime_Value_Report.sql`  
Calculates the total lifetime value of each customer based on their purchases.

- `05_Most_Reviewed_Products_Report.sql`  
Lists products with the highest number of reviews and their average rating.

--------
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
├── DFD_Diagrams/   
├── DML/   
├── Reports/ 
├── Triggers/             
├── ERetailer_Admin Creation.sql  
├── Logical_Model.pdf         
├── Physical_Model.pdf        
├── README.md                     
├── User_Creation_Grants.sql 
```
- `DDL/`  
  ▸ Contains all **DDL (Data Definition Language)** scripts for creating tables, constraints, indexes, and views.

- `DFD_Diagrams/`   
  ▸ Contains all **Data Flow Diagrams (DFDs)** representing the logical flow of data across key modules such as Customer Onboarding, Order Management, Inventory, Payment, Product Management, and Reporting.

- `DML/`   
▸ Contains all **DML (Data Manipulation Language)** scripts for inserting, updating, deleting, and merging data into the database tables.
- `Reports/`   
▸ Contains report generation scripts and queries that summarize or analyze key data metrics. Useful for business insights, audits, and monitoring.

- `Triggers/`  
  ▸ Holds all database trigger scripts used to automate actions or enforce rules during data changes (e.g., insert, update, delete). Ensures data integrity and rule compliance.

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
| Adarsh Akhouri            | 002300127               |
| Vishwesh GopiKrishnan     | 002309454               |
---
