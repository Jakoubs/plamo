CREATE TABLE plantmonitor_sensor(
    id serial PRIMARY KEY,
    sensor_id varchar REFERENCES sensor(name),
    plant_id varchar REFERENCES plant(name)
)