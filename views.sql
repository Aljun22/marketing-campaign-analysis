CREATE OR REPLACE VIEW v_campaigns_clean AS
SELECT
   Campaign_ID,
   Company,
   Campaign_Type,
   Target_Audience,
   Duration,
   Channel_Used,
   CAST(REPLACE(Conversion_Rate, '%','') AS DECIMAL(6,3)) / 100 AS Conversion_Rate,
   CAST(REPLACE(REPLACE(Acquisition_Cost,'$',''),',','') AS DECIMAL(18,2)) AS Acquisition_Cost,
   CAST(REPLACE(REPLACE(ROI,'$',''),',','') AS DECIMAL(18,2)) AS ROI,
   Location,
   Language,
   CAST(Clicks AS SIGNED) AS Clicks,
   CAST(Impressions AS SIGNED) AS Impressions,
   CAST(Engagement_Score AS DECIMAL(9,2)) AS Engagement_Score,
   Customer_Segment,
   Date
FROM campaigns;

