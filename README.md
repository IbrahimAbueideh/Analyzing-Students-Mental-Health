# 📊 Analyzing Students' Mental Health using SQL

## 📝 Project Overview
This project performs an Exploratory Data Analysis (EDA) on a dataset from a Japanese International University. The study explores how the **length of stay** impacts the average mental health diagnostic scores of **International students** present in the study. 

The analysis investigates three key mental health metrics:
*   **PHQ-9 Test (`todep`)**: Measures depression levels.
*   **SCS Test (`tosc`)**: Measures social connectedness.
*   **ASISS Test (`toas`)**: Measures acculturation stress.

## 🛠️ SQL Solution
```sql
SELECT 
    stay, 
    COUNT(*) AS count_int,
    ROUND(AVG(todep), 2) AS average_phq,
    ROUND(AVG(tosc), 2) AS average_scs,
    ROUND(AVG(toas), 2) AS average_as
FROM 
    students
WHERE 
    inter_dom = 'Inter'
GROUP BY 
    stay
ORDER BY 
    stay DESC;
