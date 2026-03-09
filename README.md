# Retail Sales Analysis (SQL + Power BI)

## Project Overview
This project performs an end-to-end analysis of a retail sales dataset to identify key revenue drivers, product profitability trends, and the impact of discounting on business performance.

The analysis was conducted using SQL Server for data modelling and querying, and Power BI for dashboard visualisation. The dataset was transformed into a structured relational model to support efficient analysis and insight generation.

### Project Goals
- Identify which products and categories drive the most revenue
- Identify which products generate low or negative profit
- Determine which regions contribute the most to sales
- Analyse how discount strategies affect profitability

---

## Tools & Technologies
- **SQL Server Management Studio (SSMS)** – database creation and querying
- **SQL** – data cleaning, transformation, and analytical queries
- **Power BI Desktop** – dashboard development and data visualisation

---

## Dataset
The dataset used is the **Superstore retail dataset**, which contains transactional sales records.

Each row includes:
- Customer information
- Product details
- Sales and profit values
- Quantity purchased
- Discount applied
- Geographic information
- Order and shipping dates

---

## Data Preparation

### Issues Identified
- 3 missing *Order Date* values
- 1 datatype validation issue in the *Profit* column

### Resolutions
- Missing order dates were imputed using the correct date from the same transaction (Order ID)
- A NULL profit value created during SQL import was corrected after verifying the original dataset

These corrections ensured transaction consistency and accurate downstream financial calculations.

---

## Data Model
The dataset was normalised into **four relational tables** to reduce redundancy and support analytical queries.

### Tables Created
- **Customers** – customer details
- **Orders** – order header information
- **Products** – product attributes
- **Order_Items** – transactional line items

### Relationships

This structure enabled efficient joins for analysing sales, profit, customer behaviour, and product performance.

---

## SQL Analysis
SQL queries were used to explore key business questions, including:

- Total sales and profit by product category
- Sales performance by region
- Top customers by revenue
- Most profitable and unprofitable product sub-categories
- Impact of discount levels on profitability
- Monthly sales trends
- Top performing products

These queries generated the aggregated datasets used in the Power BI dashboard.

---

## Power BI Dashboard
An interactive Power BI dashboard was built to visualise the analysis.

### Dashboard Components
- **KPI Cards**
  - Total Sales
  - Total Profit
  - Total Quantity Sold
- **Sales by Category**
- **Profit by Sub-Category**
- **Sales by Region**
- **Top Customers by Sales**
- **Monthly Sales Trend**
- **Discount vs Profit Analysis**

The dashboard enables quick identification of revenue drivers and margin risks.

---

## Key Insights
- Technology products generate the **highest revenue and profit**
- Tables and Bookcases show **negative profitability**
- The **West region** produces the strongest sales performance
- Sales show an **overall upward trend** with seasonal fluctuations
- Higher discount levels are associated with **lower profitability**

---

## Business Recommendations
- **Review pricing strategies** for unprofitable product categories  
  Tables and Bookcases require margin analysis and potential price adjustments.
- **Optimise discount strategies**  
  High discounts reduce profitability and should be controlled.
- **Expand high-performing product categories**  
  Technology products represent the strongest revenue driver.
- **Prioritise high-value customers**  
  Target top customers for retention and loyalty initiatives.
- **Leverage strong regional markets**  
  The West region shows strong performance and may support further expansion.
