create database hr;
SELECT * FROM hr.hrproject;

#KPI 1 : Average Attrition Rate for All Departments:
SELECT 
    Department, 
    AVG(AttritionNumeric) * 100 AS Average_Attrition_Rate
FROM hrproject
GROUP BY Department;


#KPI2 : Average Hourly Rate of Male Research Scientists:
SELECT 
    AVG(HourlyRate) AS Average_Hourly_Rate
FROM hrproject
WHERE Gender = 'Male' AND JobRole = 'Research Scientist';


#KPI 3 : Attrition Rate vs Monthly Income Stats:
SELECT 
    Attrition,
    MIN(MonthlyIncome) AS Min_Monthly_Income,
    AVG(MonthlyIncome) AS Avg_Monthly_Income,
    MAX(MonthlyIncome) AS Max_Monthly_Income
FROM hrproject
GROUP BY Attrition;

#KPI 4 : Average Working Years for Each Department:
SELECT 
    Department, 
    AVG(TotalWorkingYears) AS Average_Working_Years
FROM hrproject
GROUP BY Department;

# KPI 5  :Job Role vs Work-Life Balance:
SELECT 
    JobRole, 
    AVG(WorkLifeBalance) AS Average_WorkLife_Balance
FROM hrproject
GROUP BY JobRole;


#KPI 6: Attrition Rate vs Years Since Last Promotion Relation:
SELECT 
    YearsSinceLastPromotion,
    AVG(AttritionNumeric) * 100 AS Attrition_Rate
FROM hrproject
GROUP BY YearsSinceLastPromotion;






