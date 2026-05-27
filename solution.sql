-- Target: Analyze the impact of length of stay on the mental health of international students.
-- Tool: PostgreSQL
-- Author: Ibrahim Abueidah

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
