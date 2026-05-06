<<<<<<< HEAD
# BurgerJay POS System - Kenshin
 
A complete offline Point-of-Sale system for BurgeyJay restaurant.

## Features
- 🔐 Admin & Cashier login (role-based)
- 👥 Staff management (add/edit/delete)
- 📊 Sales tracking & best sellers
- 📋 Order history (daily/weekly/monthly/yearly)
- 🍔 Visual menu with product images
- 🛒 Cart with quantity controls
- ✅ Toggle 10% discount
- 🧾 Receipt generation
- 🔄 Product availability toggle

## Requirements
- Windows 10/11 (64-bit)
- MySQL Server 8.0+ installed
- MySQL Workbench (for database setup)

## Installation

### 1. Install MySQL
Download and install MySQL from: https://dev.mysql.com/downloads/installer/
- Root password: admin123
- Port: 3306
- Choose Legacy Authentication Method

### 2. Set Up Database
1. Open MySQL Workbench
2. Run the `BurgeyJay_Database.sql` script
3. All tables and default data will be created

### 3. Run the POS
1. Make sure MySQL is running
2. Double-click `BurgerJayPOS.exe`
3. Login as admin: `admin` / `admin123`

## Default Login
| Role   | Username | Password          |
|--------|----------|-------------------|
| Admin  | admin    | admin123  |

