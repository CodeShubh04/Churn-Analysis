/* Data Exploration */

SELECT * FROM db_churn.customer_data;

SELECT Gender, COUNT(Gender) AS TotalCount, COUNT(Gender) / (SELECT COUNT(*) FROM customer_data) AS Percentage FROM customer_data GROUP BY Gender;

SELECT Contract, COUNT(Contract) AS TotalCount, COUNT(Contract)/(SELECT COUNT(*) from customer_data) AS Percentage FROM customer_data GROUP BY Contract;

SELECT Customer_Status, COUNT(Customer_Status) AS TotalCount, SUM(Total_Revenue) AS TotalRevenue, SUM(Total_Revenue)/(SELECT COUNT(*) FROM customer_data) AS RevPercentage 
FROM customer_data GROUP BY Customer_Status;

SELECT State, COUNT(State) AS TotalCount, COUNT(State)/(SELECT COUNT(*) FROM customer_data) AS Percentage 
FROM customer_data GROUP BY State ORDER BY Percentage DESC;

SELECT DISTINCT(Internet_Type) FROM customer_data;

/* Data Cleaning */

SELECT 
    SUM(CASE WHEN Customer_ID IS NULL OR Customer_ID = '' THEN 1 ELSE 0 END) AS Customer_ID_Null_Count,
    SUM(CASE WHEN Gender IS NULL OR Gender = '' THEN 1 ELSE 0 END) AS Gender_Null_Count,
    SUM(CASE WHEN Age IS NULL OR Age = '' THEN 1 ELSE 0 END) AS Age_Null_Count,
    SUM(CASE WHEN Married IS NULL OR Married = '' THEN 1 ELSE 0 END) AS Married_Null_Count,
    SUM(CASE WHEN State IS NULL OR State = '' THEN 1 ELSE 0 END) AS State_Null_Count,
    SUM(CASE WHEN Number_of_Referrals IS NULL OR Number_of_Referrals = '' THEN 1 ELSE 0 END) AS Number_of_Referrals_Null_Count,
    SUM(CASE WHEN Tenure_in_Months IS NULL OR Tenure_in_Months = '' THEN 1 ELSE 0 END) AS Tenure_in_Months_Null_Count,
    SUM(CASE WHEN Value_Deal IS NULL OR Value_Deal = '' THEN 1 ELSE 0 END) AS Value_Deal_Null_Count,
    SUM(CASE WHEN Phone_Service IS NULL OR Phone_Service = '' THEN 1 ELSE 0 END) AS Phone_Service_Null_Count,
    SUM(CASE WHEN Multiple_Lines IS NULL OR Multiple_Lines = '' THEN 1 ELSE 0 END) AS Multiple_Lines_Null_Count,
    SUM(CASE WHEN Internet_Service IS NULL OR Internet_Service = '' THEN 1 ELSE 0 END) AS Internet_Service_Null_Count,
    SUM(CASE WHEN Internet_Type IS NULL OR Internet_Type = '' THEN 1 ELSE 0 END) AS Internet_Type_Null_Count,
    SUM(CASE WHEN Online_Security IS NULL OR Online_Security = '' THEN 1 ELSE 0 END) AS Online_Security_Null_Count,
    SUM(CASE WHEN Online_Backup IS NULL OR Online_Backup = '' THEN 1 ELSE 0 END) AS Online_Backup_Null_Count,
    SUM(CASE WHEN Device_Protection_Plan IS NULL OR Device_Protection_Plan = '' THEN 1 ELSE 0 END) AS Device_Protection_Plan_Null_Count,
    SUM(CASE WHEN Premium_Support IS NULL OR Premium_Support = '' THEN 1 ELSE 0 END) AS Premium_Support_Null_Count,
    SUM(CASE WHEN Streaming_TV IS NULL OR Streaming_TV = '' THEN 1 ELSE 0 END) AS Streaming_TV_Null_Count,
    SUM(CASE WHEN Streaming_Movies IS NULL OR Streaming_Movies = '' THEN 1 ELSE 0 END) AS Streaming_Movies_Null_Count,
    SUM(CASE WHEN Streaming_Music IS NULL OR Streaming_Music = '' THEN 1 ELSE 0 END) AS Streaming_Music_Null_Count,
    SUM(CASE WHEN Unlimited_Data IS NULL OR Unlimited_Data = '' THEN 1 ELSE 0 END) AS Unlimited_Data_Null_Count,
    SUM(CASE WHEN Contract IS NULL OR Contract = '' THEN 1 ELSE 0 END) AS Contract_Null_Count,
    SUM(CASE WHEN Paperless_Billing IS NULL OR Paperless_Billing = '' THEN 1 ELSE 0 END) AS Paperless_Billing_Null_Count,
    SUM(CASE WHEN Payment_Method IS NULL OR Payment_Method = '' THEN 1 ELSE 0 END) AS Payment_Method_Null_Count,
    SUM(CASE WHEN Monthly_Charge IS NULL OR Monthly_Charge = '' THEN 1 ELSE 0 END) AS Monthly_Charge_Null_Count,
    SUM(CASE WHEN Total_Charges IS NULL OR Total_Charges = '' THEN 1 ELSE 0 END) AS Total_Charges_Null_Count,
    SUM(CASE WHEN Total_Refunds IS NULL OR Total_Refunds = '' THEN 1 ELSE 0 END) AS Total_Refunds_Null_Count,
    SUM(CASE WHEN Total_Extra_Data_Charges IS NULL OR Total_Extra_Data_Charges = '' THEN 1 ELSE 0 END) AS Total_Extra_Data_Charges_Null_Count,
    SUM(CASE WHEN Total_Long_Distance_Charges IS NULL OR Total_Long_Distance_Charges = '' THEN 1 ELSE 0 END) AS Total_Long_Distance_Charges_Null_Count,
    SUM(CASE WHEN Total_Revenue IS NULL OR Total_Revenue = '' THEN 1 ELSE 0 END) AS Total_Revenue_Null_Count,
    SUM(CASE WHEN Customer_Status IS NULL OR Customer_Status = '' THEN 1 ELSE 0 END) AS Customer_Status_Null_Count,
    SUM(CASE WHEN Churn_Category IS NULL OR Churn_Category = '' THEN 1 ELSE 0 END) AS Churn_Category_Null_Count,
    SUM(CASE WHEN Churn_Reason IS NULL OR Churn_Reason = '' THEN 1 ELSE 0 END) AS Churn_Reason_Null_Count
FROM customer_data;

CREATE TABLE c_table AS
SELECT Customer_ID, Gender, Age, Married, State, Number_of_Referrals, Tenure_in_Months,
COALESCE(NULLIF(Value_Deal, ''), 'None') AS Value_Deal,
Phone_Service,
COALESCE(NULLIF(Multiple_Lines, ''), 'No') AS Multiple_Lines,
Internet_Service,
COALESCE(NULLIF(Internet_Type, ''), 'None') AS Internet_Type,
COALESCE(NULLIF(Online_Security, ''), 'No') AS Online_Security,
COALESCE(NULLIF(Online_Backup, ''), 'No') AS Online_Backup,
COALESCE(NULLIF(Device_Protection_Plan, ''), 'No') AS Device_Protection_Plan,
COALESCE(NULLIF(Premium_Support, ''), 'No') AS Premium_Support,
COALESCE(NULLIF(Streaming_TV, ''), 'No') AS Streaming_TV,
COALESCE(NULLIF(Streaming_Movies, ''), 'No') AS Streaming_Movies,
COALESCE(NULLIF(Streaming_Music, ''), 'No') AS Streaming_Music,
COALESCE(NULLIF(Unlimited_Data, ''), 'No') AS Unlimited_Data,
Contract, Paperless_Billing, Payment_Method, Monthly_Charge, Total_Charges, Total_Refunds, Total_Extra_Data_Charges, Total_Long_Distance_Charges, Total_Revenue, Customer_Status,
COALESCE(NULLIF(Churn_Category, ''), 'Others') AS Churn_Category,
COALESCE(NULLIF(Churn_Reason, ''), 'Others') AS Churn_Reason
FROM customer_data;

SELECT * FROM db_churn.c_table;

CREATE VIEW vw_ChurnData AS SELECT * FROM c_table WHERE Customer_Status IN ('Churned', 'Stayed');

CREATE VIEW vw_JoinData AS SELECT * FROM c_table WHERE Customer_Status IN ('Joined');

ALTER DATABASE db_churn CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
ALTER TABLE c_table CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

SELECT table_name, table_collation 
FROM information_schema.tables 
WHERE table_schema = 'db_churn';

SELECT table_name, column_name, character_set_name, collation_name 
FROM information_schema.columns 
WHERE table_schema = 'db_churn';
