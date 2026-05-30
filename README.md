# 🚲 Bicycle Retail Sales Analytics

## 📌 Project Overview
This project is an end-to-end business intelligence solution designed to track retail sales performance, customer demographics, and year-over-year growth for a bicycle manufacturer. 

## 🛠️ The Data Pipeline
1. **Data Extraction & Engineering (PostgreSQL):** Extracted raw data from a 9-table normalized database. Engineered a streamlined 4-table Star Schema (1 Fact table, 3 Dimension tables) to optimize reporting performance.
2. **Data Modeling (Power BI):** Connected the tables using a 1-to-many single-direction relationship framework and built a custom Date dimension for time-intelligence reporting.
3. **Visualization & DAX:** Developed an interactive dashboard tracking Total Revenue, YoY Growth, Active Customers, and Average Revenue per Customer.

## 🧰 Technical Skills & Tools Used
* **Database Management:** PostgreSQL, pgAdmin
* **Data Engineering:** SQL (DDL, Aggregation, Joins, Table Creation)
* **Data Modeling:** Star Schema (Fact & Dimension tables), 1-to-Many Relationships
* **Business Intelligence:** Power BI (Data Visualization, Dashboard UX/UI)
* **Analytics & Math:** DAX (Time-intelligence, Variable formulation `VAR`, Aggregate measures)

## 📊 Key Business Insights
* **Customer Value:** The average active customer generates **$4.61K** in lifetime revenue, indicating a high-ticket buyer base.
* **Product Dominance:** Mountain Bikes and Road Bikes drive the vast majority of total revenue, while brands like Electra move the highest volume of individual units.
* **Seasonality:** Sales show strong seasonal peaks entering the summer months].

## 📂 Files in this Repository
* `data_preparation.sql`: The SQL script used to clean and aggregate the raw transactional data.
* `Dashboard_Export.pdf`: A static export of the final interactive Power BI report.
* `Retail_Dashboard.pbix`: The working Power BI file.


