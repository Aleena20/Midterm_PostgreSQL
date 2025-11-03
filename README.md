# Midterm Retail Sales Project

Dataset: Simulated retail sales data based on a typical superstore dataset (customers, products, orders, order_items, regions).

[Dataset](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final?resource=download)

## Business Problem
Analyze retail sales to identify which product categories and regions generated the highest revenue in the past 12 months.
Theme: Retail Sales Orders (Superstore Style)
## ER Diagram Description

| Table       | Primary Key   | Description                            |
| ----------- | ------------- | -------------------------------------- |
| regions     | region_id     | Sales regions                          |
| customers   | customer_id   | Customer info (linked to region)       |
| products    | product_id    | Products with category and subcategory |
| orders      | order_id      | Orders placed by customers             |
| order_items | order_item_id | Individual items in each order         |

## Relationships

- customers.region_id → regions.region_id

- orders.customer_id → customers.customer_id

- order_items.order_id → orders.order_id

- order_items.product_id → products.product_id
## Database Schema
- Tables: regions, customers, products, orders, order_items
- Relationships defined via foreign keys
- ER diagram included as ER_diagram.png

## Setup Instructions
1. Create the database schema by running `Build_Schema.sql`.
2. Load sample data by running `Load_data.sql`.
3. Create the view using the provided SQL in `Create_Join_View.sql`.
4. Run analytical queries in `Analytical_Queries.sql`.
5. Run CRUD operation examples to demonstrate data manipulation in `Crud_Operations.sql`.

## Analytical Insights
- Revenue breakdown by category and region.
- Top customers by total purchases.
- Sales trends over recent months.

## Files
- Build_Schema.sql
- Load_data.sql
- Create_Join_View.sql
- Analytical_Queries.sql
- Crud_Operations.sql
- ER_diagram.png
- Screenshots of run queries
- README.md (this file)
