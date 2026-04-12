-- ---------------------------------------------------------
-- KORRIGIERTE MESSDATEN (sensor_id als String/Name)
-- ---------------------------------------------------------

INSERT INTO measurement (monitor_id, sensor_id, value, date) VALUES
-- Messungen für Monitor 1 (Monstera - Soil_Moist_01)
(1, 'Soil_Moist_01', 62.5, '2026-04-12 08:00:00'),
(1, 'Soil_Moist_01', 61.2, '2026-04-12 10:00:00'),
(1, 'Soil_Moist_01', 60.1, '2026-04-12 12:00:00'),
(1, 'Soil_Moist_01', 58.8, '2026-04-12 14:00:00'),
(1, 'Soil_Moist_01', 57.5, '2026-04-12 16:00:00'),

-- Messungen für Monitor 2 (Bogenhanf - Soil_Moist_02)
(2, 'Soil_Moist_02', 31.0, '2026-04-12 08:05:00'),
(2, 'Soil_Moist_02', 30.8, '2026-04-12 12:05:00'),
(2, 'Soil_Moist_02', 30.5, '2026-04-12 16:05:00'),

-- Messungen für Monitor 3 (Friedenslilie - DHT22_Indoor)
(3, 'DHT22_Indoor', 66.2, '2026-04-12 09:00:00'),
(3, 'DHT22_Indoor', 68.5, '2026-04-12 11:00:00'),
(3, 'DHT22_Indoor', 70.1, '2026-04-12 13:00:00'),
(3, 'DHT22_Indoor', 69.4, '2026-04-12 15:00:00'),

-- Messungen für Monitor 4 (Efeutute - Air_Humid_Alpha)
(4, 'Air_Humid_Alpha', 55.0, '2026-04-12 08:30:00'),
(4, 'Air_Humid_Alpha', 54.2, '2026-04-12 10:30:00'),
(4, 'Air_Humid_Alpha', 53.5, '2026-04-12 12:30:00'),

-- Messungen für Monitor 5 (Geigenfeige - Lumen_Max_400)
(5, 'Lumen_Max_400', 120.0, '2026-04-12 06:00:00'),
(5, 'Lumen_Max_400', 850.0, '2026-04-12 10:00:00'),
(5, 'Lumen_Max_400', 1200.0, '2026-04-12 13:00:00'),
(5, 'Lumen_Max_400', 400.0, '2026-04-12 17:00:00'),
(5, 'Lumen_Max_400', 50.0, '2026-04-12 20:00:00'),

-- Messungen für Monitor 6 (Zitronenbaum - Lux_Meter_Digital)
(6, 'Lux_Meter_Digital', 1500.0, '2026-04-12 12:00:00'),
(6, 'Lux_Meter_Digital', 1450.0, '2026-04-12 13:00:00'),
(6, 'Lux_Meter_Digital', 1300.0, '2026-04-12 14:00:00'),

-- Messungen für Monitor 8 (Rosmarin - Leaf_Temp_IR)
(8, 'Leaf_Temp_IR', 19.5, '2026-04-12 07:00:00'),
(8, 'Leaf_Temp_IR', 22.1, '2026-04-12 12:00:00'),
(8, 'Leaf_Temp_IR', 23.5, '2026-04-12 15:00:00'),
(8, 'Leaf_Temp_IR', 20.2, '2026-04-12 21:00:00'),

-- Diverse weitere Messpunkte
(9, 'Water_Temp_Probe', 21.0, '2026-04-12 08:00:00'),
(9, 'Water_Temp_Probe', 21.5, '2026-04-12 14:00:00'),
(10, 'Sun_Tracker', 1000.0, '2026-04-12 11:00:00'),
(1, 'Soil_Moist_01', 56.2, '2026-04-12 18:00:00'),
(2, 'Soil_Moist_02', 30.2, '2026-04-12 20:05:00'),
(3, 'DHT22_Indoor', 71.0, '2026-04-12 17:00:00'),
(4, 'Air_Humid_Alpha', 52.8, '2026-04-12 14:30:00'),
(5, 'Lumen_Max_400', 20.0, '2026-04-12 22:00:00'),
(7, 'Soil_Moist_01', 45.5, '2026-04-12 09:00:00'),
(7, 'Soil_Moist_01', 44.2, '2026-04-12 15:00:00'),
(8, 'Leaf_Temp_IR', 18.9, '2026-04-12 23:00:00'),
(10, 'Sun_Tracker', 100.0, '2026-04-12 19:00:00'),
(1, 'Soil_Moist_01', 55.5, '2026-04-12 20:00:00'),
(2, 'Soil_Moist_02', 29.9, '2026-04-12 23:55:00'),
(3, 'DHT22_Indoor', 72.5, '2026-04-12 21:00:00'),
(4, 'Air_Humid_Alpha', 52.0, '2026-04-12 18:30:00'),
(5, 'Lumen_Max_400', 0.0, '2026-04-12 23:59:00'),
(6, 'Lux_Meter_Digital', 200.0, '2026-04-12 19:00:00'),
(7, 'Soil_Moist_01', 43.8, '2026-04-12 21:00:00'),
(9, 'Water_Temp_Probe', 20.8, '2026-04-12 22:00:00'),
(10, 'Sun_Tracker', 0.0, '2026-04-12 23:00:00'),
(1, 'Soil_Moist_01', 54.8, '2026-04-12 22:00:00'),
(3, 'DHT22_Indoor', 73.0, '2026-04-12 23:30:00');