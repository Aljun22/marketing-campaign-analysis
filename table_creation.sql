-- 1. Create the database
CREATE DATABASE project_portfolio2;

-- 2. Use the database
USE project_portfolio2;

-- 3. Create the campaign table
CREATE TABLE campaigns (
    Campaign_ID INT PRIMARY KEY,
    Company VARCHAR(100),
    Campaign_Type VARCHAR(50),
    Target_Audience VARCHAR(100),
    Duration varchar(20), -- in days
    Channel_Used VARCHAR(50),
    Conversion_Rate DECIMAL(5,2), -- percentage
    Acquisition_Cost DECIMAL(10,2),
    ROI DECIMAL(10,2),
    Location VARCHAR(100),
    Language VARCHAR(50),
    Clicks INT,
    Impressions INT,
    Engagement_Score DECIMAL(5,2),
    Customer_Segment VARCHAR(100),
    Date DATE
);

