CREATE TABLE measurement (
  id SERIAL PRIMARY KEY,
  monitor_id INTEGER REFERENCES plantmonitor(id) ON DELETE CASCADE,
  sensor_id varchar REFERENCES Sensor(name) ON DELETE CASCADE,
  value FLOAT NOT NULL,
  measured_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
