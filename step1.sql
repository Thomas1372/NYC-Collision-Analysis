-- Standardizing 'Unspecified' values and creating a clean analysis view
CREATE VIEW Cleaned_Collisions AS
SELECT 
    "COLLISION_ID",
    "CRASH DATE",
    COALESCE(BOROUGH, 'RECOVERABLE VIA GPS') AS BOROUGH,
    "ZIP CODE",
    SUBSTR("CRASH TIME", 1, 2) AS crash_hour,
    "NUMBER OF PERSONS INJURED",
    "NUMBER OF PERSONS KILLED",
    "CONTRIBUTING FACTOR VEHICLE 1"
FROM "Motor_Vehicle_Collisions_-_Crashes_20260202"
WHERE "CONTRIBUTING FACTOR VEHICLE 1" != 'Unspecified';

