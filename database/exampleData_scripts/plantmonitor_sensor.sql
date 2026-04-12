INSERT INTO plantmonitor_sensor (sensor_id, plant_id) VALUES
-- Die Monstera bekommt zusätzlich einen Lichtsensor
('Lumen_Max_400', 'Monstera Deliciosa'),

-- Die Friedenslilie bekommt zusätzlich einen Temperatursensor
('Temp_Ambient_01', 'Friedenslilie'),

-- Der Zitronenbaum bekommt zusätzlich Bodenfeuchtigkeitsmessung
('Soil_Moist_01', 'Zitronenbaum'),

-- Die Orchidee bekommt ein Hygrometer
('Greenhouse_Humid', 'Orchidee'),

-- Sukkulente bekommt Licht- und Feuchtigkeitssensor
('Lux_Meter_Digital', 'Sukkulente Mix'),
('Soil_Moist_02', 'Sukkulente Mix'),

-- Weitere Test-Zuweisungen
('DHT22_Indoor', 'Gummibaum'),
('Temp_Ambient_01', 'Yucca-Palme'),
('Air_Humid_Alpha', 'Nestfarn'),
('Deep_Root_Sensor', 'Elefantenfuß');