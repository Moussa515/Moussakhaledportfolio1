Digital Ad Campaign Performance & ROI Optimization
Business Problem
Paid digital advertising campaigns exhibit inconsistent return on ad spend (ROAS) and ad engagement across regional markets and device types. Marketing teams struggle to identify which regions generate high returns versus those driving up acquisition costs without corresponding sales revenue. This inefficiency leads to misallocated marketing budgets and underperforming digital assets.

Project Objective
Evaluate campaign performance across geographic locations and device platforms to determine cost-efficiency and engagement tiers.

Identify top-performing locations based on total ad spend, impressions, clicks, and ROAS.

Provide actionable budget reallocation strategies to optimize overall campaign profitability.

About the Dataset
Data Source: Kaggle (Paid Marketing Campaign Performance Dataset)

Number of Rows: 99 records

Number of Columns: 24 fields

Time Period: November 2024 campaign tracking window

Key Variables: Ad_ID, Clicks, Impressions, Cost, Leads, Conversions, Conversion Rate, Sale_Amount, ROAS, CPC, CPA, Profit, Location, Device

Limitations: Contains 4 missing values in Sale_Amount and minor date formatting inconsistencies.

Data Quality Notes: Data contains non-standardized location string casing (e.g., cairo vs Cairo) requiring cleaning during SQL/Excel aggregation.

Tools Used
Excel: Initial data cleaning, pivot table summarization, logic validation (High sales, High ROAS, Good Campaign), and preliminary visualization.

SQL (MSSQL): Data querying, conditional logic (CASE statements for engagement and cost efficiency), conditional aggregations, and subqueries.

Power BI: Data modeling, DAX measure creation, interactive dashboard design, and regional analysis visualization.

Methodology
Data Cleaning: Standardized text cases across geographic fields, addressed missing sales values, and verified numeric types.

Data Validation: Reconciled revenue, cost, and profit figures across Excel and SQL aggregations.

Exploratory Analysis: Queried metrics by location and device to evaluate click-through and conversion behaviors.

KPI Creation: Formulated key efficiency metrics including Customer Acquisition Cost (CAC), Cost Per Click (CPC), Cost Per Acquisition (CPA), and Return on Ad Spend (ROAS).

Categorization Logic:

Cost Efficiency: Classified ads into high_cost/Low_return, Low_cost/high_return, or Moderate_performance using cost and sales thresholds.

Ad Engagement: Segmented ads into Attractive Ad (Clicks >= 180 and Impressions >= 4200), Average Ad, or Low Ad appeal.

Visualization & Business Interpretation: Modeled campaign data in Power BI to display high-cost areas, return trends, and top location rankings.

Key Findings
Top Spending Locations: London, Rome, and Beirut generated the highest cumulative campaign costs.

Highest Impression & Engagement Markets: Regional centers like Tokyo, Beirut, and London achieved the highest total impression count and overall click volume.

ROAS Distribution: The top three locations by cumulative ROAS demonstrated high return capabilities, whereas specific campaigns exceeded high-cost thresholds without proportional sales return.

Profit Benchmarks: Subquery filtering isolated top-tier ads that exceeded average profit margins (Mean Profit ~$1,279.25).

Business Impact
Budget Realignment: Identified underperforming high-cost ads, establishing parameters to reduce wasted ad spend on low-return campaigns.

Strategic Targeting: Pinpointed top-performing geographical markets to receive prioritized ad allocations.

Performance Standardization: Enabled continuous automated categorization of campaign creative effectiveness (Attractive vs Low Appeal) based on engagement logic.

Recommendations
Reallocate Ad Spend: Shift budget away from high_cost/Low_return campaigns and increase funding to high-ROAS locations.

Optimize Creative Copy: Redesign or pause ads categorized as Low Ad appeal (Clicks < 180 and Impressions < 4200).

Platform Optimization: Adjust bidding strategies by device type based on CPA performance differences observed across desktop, mobile, and tablet channels.
