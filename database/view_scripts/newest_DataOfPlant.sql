CREATE VIEW v_plant_current_status AS
WITH LatestMeasurements AS (
    SELECT
        pm.id AS PlantMonitorID,
        pm.plant_id AS Plantname,
        s.name AS s_name, -- Hol den Klarnamen aus der Sensor-Tabelle
        mm.value,
        ROW_NUMBER() OVER (
            PARTITION BY pm.id, mm.sensor_id
            ORDER BY mm.date DESC
            ) as rank
    FROM plantmonitor pm
             JOIN measurement mm ON pm.id = mm.monitor_id
             JOIN sensor s ON mm.sensor_id = s.name -- Oder s.id, je nach Schema
)
SELECT
    PlantMonitorID,
    Plantname,
    MAX(CASE WHEN s_name = 'DHT22_Indoor' THEN value END) AS air_temp,
    MAX(CASE WHEN s_name = 'Air_Humid_Alpha' THEN value END) AS humidity,
    MAX(CASE WHEN s_name = 'Soil_Moist_01' THEN value END) AS moisture_1,
    MAX(CASE WHEN s_name = 'Soil_Moist_02' THEN value END) AS moisture_2,
    MAX(CASE WHEN s_name = 'Lux_Meter_Digital' THEN value END) AS light
FROM LatestMeasurements
WHERE rank = 1
GROUP BY PlantMonitorID, Plantname;