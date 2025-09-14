# 📊 Marketing Campaign Analysis (Project Portfolio 2)

 🚀 Project Overview
This project analyzes marketing campaign performance using **MySQL** for data cleaning and **Power BI** for visualization.  
The objective is to evaluate **ROI, conversion rates, customer segments, and campaign efficiency** across channels, languages, and locations.  
The dashboard and report were designed as if presented to business stakeholders.

---

 🛠 Tools & Technologies
- **MySQL** → Data cleaning & transformation (SQL scripts, views)
- **Power BI** → Dashboard development & insights
- **GitHub** → Version control & portfolio hosting

---

 📊 Dashboard Walkthrough

Page 1 — Executive Overview
- KPIs: Avg ROI, Avg Conversion Rate, CTR, Acquisition Cost, Total Campaigns  
- ROI by Channel (Bar Chart)  
- Campaign Performance by Segment (Treemap)  
- ROI Trend Over Time (Line Chart)  

📸 Screenshot: 
[Executive Overview](images2/Executive_overview.png)



Page 2 — Campaign Performance Deep Dive**
- Top 5 Campaigns by ROI (Table)  
- ROI vs Acquisition Cost (Scatter Plot)  
- Company Comparison (Bar Chart)  
- Engagement vs Impressions (Line Chart)  

📸 *Screenshot:*  
![Campaign Deep Dive](images2/Campaign.png)



Page 3 — Audience & Market Breakdown**
- Campaigns by Location (Map/Alternative)  
- ROI & Conversion by Language (Bar Chart)  
- ROI by Target Audience (Treemap)  
- Best Language by Audience (Dynamic Card)  

📸 *Screenshot:*  
![Audience Breakdown](images2/Audience_breakdown.png)


📐 Important DAX Measures

DAX
-- KPI Metrics
Total Campaigns = COUNTROWS('project_portfolio2 v_campaigns_clean')

Total Clicks = SUM('project_portfolio2 v_campaigns_clean'[Clicks])

Total Impressions = SUM('project_portfolio2 v_campaigns_clean'[Impressions])

CTR (%) = DIVIDE([Total_Clicks], [Total_Impressions], 0)

Avg Conversion Rate (%) = AVERAGE('project_portfolio2 v_campaigns_clean'[Conversion_Rate])

Avg ROI (%) =
AVERAGEX(
    'project_portfolio2 v_campaigns_clean',
    DIVIDE('project_portfolio2 v_campaigns_clean'[ROI], 'project_portfolio2 v_campaigns_clean'[Acquisition_Cost])
) * 100

Total Acquisition Cost = SUM('project_portfolio2 v_campaigns_clean'[Acquisition_Cost])




🔑 Key Insights

Facebook & Website → highest ROI, budget scaling recommended.

Google Ads & Email → high spend & reach, but require efficiency testing.

Instagram & YouTube → low ROI, need creative/targeting optimization.

French campaigns → strongest language performance, especially in younger demographics.

ROI is consistent across top US cities (~5.00) → strong scaling opportunity.




✅ Recommendations

Increase investment in high-ROI channels (Facebook, Website).

Run efficiency tests on Google Ads & Email.

Reassess Instagram & YouTube before further scaling.

Localize creatives for best language–audience combinations.

Standardize KPI definitions (ROI, CTR, Conversion Rate) for consistency across reports.
