SELECT 
    BOROUGH, 
    COUNT(*) AS total_crashes,
    SUM("NUMBER OF PERSONS INJURED") AS total_injured,
    ROUND(CAST(SUM("NUMBER OF PERSONS INJURED") AS FLOAT) / COUNT(*), 2) AS injury_rate
FROM "Motor_Vehicle_Collisions_-_Crashes_20260202"
WHERE BOROUGH IS NOT NULL
GROUP BY BOROUGH
ORDER BY injury_rate DESC;