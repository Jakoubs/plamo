INSERT INTO sensor (name, description) VALUES
-- Bodenfeuchtigkeit (Moisture)
('Soil_Moist_01', 'Kapazitiver Bodenfeuchtigkeitssensor - Bereich 0-100%'),
('Soil_Moist_02', 'Widerstandsbasierter Feuchtigkeitssensor für Außeneinsatz'),
('Deep_Root_Sensor', 'Spezialsenor für tiefe Wurzelschichten (bis 30cm)'),

-- Luftfeuchtigkeit (Humidity)
('Air_Humid_Alpha', 'Präzisions-Hygrometer für die relative Luftfeuchtigkeit'),
('DHT22_Indoor', 'Standard Digital-Sensor für Temperatur und Feuchtigkeit'),
('Greenhouse_Humid', 'Industrie-Sensor für extrem hohe Luftfeuchtigkeit im Gewächshaus'),

-- Temperatur (Ich gehe davon aus, "Sandwiche" war ein Tippfehler für Temperature/Ambient)
('Temp_Ambient_01', 'Umgebungstemperatursensor für Wohnräume'),
('Leaf_Temp_IR', 'Infrarot-Thermometer zur Messung der Blattoberfläche'),
('Water_Temp_Probe', 'Wasserdichter Fühler für die Wassertemperatur im Reservoir'),

-- Licht (Lumen / Lux)
('Lumen_Max_400', 'Lichtintensitätssensor - optimiert für PAR-Spektrum'),
('Lux_Meter_Digital', 'Helligkeitssensor zur Steuerung der Zusatzbeleuchtung'),
('UV_Index_Sensor', 'Sensor zur Messung der UV-A und UV-B Strahlung'),
('Sun_Tracker', 'Weitwinkel-Lichtsensor für die Erfassung von direktem Sonnenlicht');