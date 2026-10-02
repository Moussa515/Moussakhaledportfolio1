📦 Supply Chain Analytics & Operational Performance
An end-to-end supply chain performance analysis translating raw transactional and operational data into executive-ready insights on revenue drivers, logistics efficiency, supplier lead times, and inventory availability.
This project analyzes inventory, supplier, logistics, and sales performance data (`Supply chain analytics`) to uncover where revenue is being won, where inventory bottlenecks occur, and which operational levers leadership can pull to optimize the supply chain. It was built to simulate a real analytics engagement — from SQL data querying through to decision-ready metrics — with the explicit goal of supporting commercial and supply chain decision-making.





📌 Business Problem
Businesses operating complex supply chains sell across multiple product lines, locations, and logistics channels — but without a consolidated view of performance, leadership teams struggle to balance supply chain efficiency with sales growth.
The core problem: Sales and inventory data exist across multiple operational tables, but aren't organized to answer key questions — such as which SKUs drive revenue, which shipping routes are most cost-effective, and where inventory levels are unbalanced.
Why it matters:
Inventory management becomes reactive, leading to overstocked or low-stock SKUs.
Shipping and logistics budgets get misallocated without visibility into carrier revenue generation and route shipping costs.
Quality control bottlenecks (failed or pending inspections) go unnoticed, risking stockouts and delayed fulfillments.
If ignored: The business risks holding excess inventory capital, overpaying on shipping carriers, losing customer trust due to stockouts, and missing top-line revenue opportunities.
Key stakeholders: Supply Chain & Logistics Director, Inventory Managers, Procurement, Sales Operations, and Regional Managers.





🎯 Project Objective
This analysis uses SQL querying to convert raw supply chain and transactional data into a structured framework for executive decision-making. Specifically, it aims to:
Identify top-performing product lines (`Product_type`) and SKUs by revenue and volume sold.
Categorize inventory levels dynamically into Low Stock, Well Stocked, and Overstocked.
Evaluate logistics performance across shipping carriers, lead times, and shipping costs per route.
Monitor quality assurance across product inspection results (`Pass`, `Fail`, `Pending`).
Track sales and revenue distributions by location and customer demographics.




❓ Business Questions Answered
Which product types and SKUs generate the highest revenue and highest sales volume?
Which SKUs perform above the average revenue threshold?
How are current inventory levels distributed across product availability thresholds?
Which shipping routes offer the lowest average shipping costs?
Which suppliers deliver the fastest manufacturing lead times?
Which geographic locations lead in order quantities?
How does sales revenue break down across customer gender and product categories?





📊 Dataset Overview
Attribute	Description
Source	Enterprise Supply Chain & Operations Database (`[Supply chain analytics]`)
Industry	Supply Chain, Logistics & Retail Distribution
Key Variables	`SKU`, `Product_type`, `Revenue_generated`, `Number_of_products_sold`, `Order_quantities`, `Availability`, `Price`, `Shipping_costs`, `Routes`, `Shipping_carriers`, `Lead_time`, `Manufacturing_lead_time`, `Supplier_name`, `Inspection_results`, `Location`, `Customer_Gender`
Data Quality Notes	Handled missing values, standardized categorical fields (e.g., filtering out `'Unknown'` gender records), and computed dynamic window functions.
🛠️ Tools & Technologies
Tool	Purpose
SQL (T-SQL)	Data extraction, CTEs, window functions (`ROW_NUMBER`, `DENSE_RANK`, `SUM OVER`), conditional logic (`CASE WHEN`), and aggregations.
Power BI	Interactive visual dashboards and executive KPI reporting.
Excel	Initial data exploration, raw data audit, and quick verification.



🔄 Methodology
```text
Raw Data (Supply chain analytics)
   ↓
Data Cleaning & Filtering (SQL)
   ↓
Dynamic Categorization & Window Aggregations (SQL)
   ↓
Exploratory Analysis & Query Development
   ↓
KPI & Metric Extraction
   ↓
Dashboard Integration & Reporting
   ↓
Business Insights & Strategic Recommendations
```
Raw Data Ingestion: Operational data was loaded from `[Supply chain analytics]`.
Data Filtering & Cleaning: Filtered out incomplete demographic records (`Customer_Gender <> 'Unknown'`) and validated calculation fields.
Advanced SQL Logic: Applied SQL techniques including:
Conditional Logic: Categorized stock status based on `Availability` (`< 25` = Low_stock, `> 60` = Overstocked, else Well_stocked).
Subqueries: Isolated SKUs generating above-average revenue (`Revenue_generated > AVG(...)`).
Window Functions & CTEs: Utilized `DENSE_RANK()` and `PARTITION BY` across CTEs (`RevCTE`, `GenderCTE`) to rank carrier performance and demographic sales without collapsing raw granularity.
Insights & Recommendations: Formulated actionable recommendations for logistics, production, and procurement strategy based on query outputs.




📊 Key KPIs & Query Highlights
KPI / Analysis	Query Logic / Description
Top Revenue Product Type	Queries `TOP 1 Product_type` ordered by `SUM(Revenue_generated) DESC`.
Top Best Selling SKUs	Ranks SKUs using `SUM(Number_of_products_sold)` with window ranking.
Inventory Categorization	Uses `CASE` statements on `Availability` to tag `Low_stock`, `Well_stocked`, and `Overstocked`.
Cost-Efficient Routes	Identifies `TOP 1` shipping route with lowest `AVG(Shipping_costs)`.
Lead Time Optimization	Finds suppliers with the fastest cumulative `Manufacturing_lead_time`.
Quality Control Status	Aggregates `COUNT(*)` across `Inspection_results` (`Pass`, `Fail`, `Pending`).






🔍 Key Findings
Inventory is unevenly distributed across SKUs
Finding: Stock availability varies significantly, with several SKUs falling into `Low_stock` (< 25 units) or `Overstocked` (> 60 units) categories.
Business Impact: High risk of stockouts for high-demand items alongside tied-up capital in overstocked items.
A select group of SKUs perform above average revenue
Finding: Subquery analysis confirms that a distinct group of SKUs consistently generates higher revenue than the overall portfolio average.
Business Impact: Focus inventory allocation and marketing spend on these primary revenue drivers.
Shipping routes and carriers show distinct cost and revenue efficiencies
Finding: CTE ranking reveals clear variance in total revenue generated per shipping carrier and average cost per route.
Business Impact: Logistics teams can shift volume to carrier routes offering the lowest shipping costs while maintaining high revenue throughput.
Manufacturing lead times vary by supplier
Finding: Querying fastest total manufacturing lead times highlights specific top-performing suppliers.
Business Impact: Sourcing teams can prioritize contracts with lower-lead-time suppliers to improve supply chain agility.
Order volume concentration by geography and demographics
Finding: Location ranking highlights top geographic hubs by order quantities, while gender partition queries reveal spending patterns per customer segment.
Business Impact: Enables targeted distribution planning and localized inventory stocking.






💼 Business Impact
Data-Backed Inventory Planning: Replaces manual stock checks with automated SQL logic categorizing stock levels to prevent stockouts and overstocking.
Logistics Cost Savings: Pinpoints the lowest-cost shipping routes and ranks carriers by revenue, optimizing freight spend.
Supplier Performance Accountability: Slashes fulfillment delays by identifying high-performing suppliers based on manufacturing lead times.
Targeted Operations: Directs resources toward high-performing SKUs and geographic hubs with proven order volume.






🚀 Recommendations
Recommendation	Why It Matters
Automate Low-Stock Reordering	Set up automated triggers for SKUs dropping below the 25-unit `Low_stock` threshold.
Reallocate Freight to Optimal Routes	Shift logistics contracts to routes with lower `AVG(Shipping_costs)`.
Prioritize Above-Average Revenue SKUs	Ensure high priority in inventory stocking for SKUs identified as exceeding average revenue generation.
Streamline Supplier Operations	Partner with suppliers demonstrating low manufacturing lead times to speed up production cycles.
Address Quality Control Failures	Routinely monitor `Inspection_results` to minimize pending or failed stock prior to shipment.



📂 Project Structure
```text
Supply-Chain-Analytics/
│
├── Data/
│   └── Supply_Chain_Analytics.csv
├── SQL/
│   ├── 01_Inventory_Categorization.sql
│   ├── 02_Revenue_and_SKU_Analysis.sql
│   ├── 03_Logistics_and_Suppliers.sql
│   └── 04_Demographics_and_Rankings.sql
├── Power_BI/
│   └── Supply_Chain_Dashboard.pbix
└── README.md
```
⭐ Skills Demonstrated
`Supply Chain Analytics` `SQL (T-SQL)` `CTE (Common Table Expressions)` `Window Functions` `Subqueries` `Data Aggregation` `Inventory Management` `Logistics Optimization` `Power BI` `Business Intelligence` `Process Optimization`
