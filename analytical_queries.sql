/* PROJECT: Health Insurance Claim Analysis & Prediction
   AUTHOR: Ajay Singh Chauhan
   GOAL: Data Cleaning, Statistical Analysis, and Preparing Data for ML
*/

-- ============================================================
-- SECTION 1: DATA QUALITY & CLEANING
-- ============================================================

-- 1. Checking for NULL values (Ensuring data integrity)
SELECT * FROM health_insurance
WHERE age IS NULL OR sex IS NULL OR bmi IS NULL OR claim IS NULL;

-- 2. Handling NULL values using Median Imputation
-- This shows advanced SQL skills (Window functions/Percentile)
UPDATE health_insurance
SET 
    age = COALESCE(age, (SELECT PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY age) FROM health_insurance)),
    bmi = COALESCE(bmi, (SELECT PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY bmi) FROM health_insurance));


-- ============================================================
-- SECTION 2: EXPLORATORY DATA ANALYSIS (EDA)
-- ============================================================

-- 3. Average Insurance Cost (General Overview)
SELECT AVG(claim) AS average_insurance_cost FROM health_insurance;

-- 4. Smoker vs Non-Smoker Analysis (Key cost driver)
SELECT smoker, AVG(claim) AS avg_claim FROM health_insurance GROUP BY smoker;

-- 5. Age-wise & BMI-wise Analysis (Identifying trends for ML)
SELECT age, AVG(claim) AS avg_claim FROM health_insurance GROUP BY age ORDER BY age;

SELECT bmi, AVG(claim) AS avg_claim FROM health_insurance 
GROUP BY bmi ORDER BY avg_claim DESC;


-- ============================================================
-- SECTION 3: ADVANCED INSIGHTS & RISK ANALYSIS
-- ============================================================

-- 6. Identifying Top 10 Highest Claimants
SELECT * FROM health_insurance ORDER BY claim DESC LIMIT 10;

-- 7. High-Risk Patient Profiling 
-- Useful for identifying segments that need more attention
SELECT * FROM health_insurance
WHERE smoker = 1 AND bmi > 30 AND age > 50;