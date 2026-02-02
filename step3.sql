SELECT 
    SUBSTR("CRASH TIME", 1, 2) AS hour, 
    COUNT(*) AS crash_count
FROM "Motor_Vehicle_Collisions_-_Crashes_20260202"
GROUP BY hour
ORDER BY crash_count DESC
LIMIT 5;