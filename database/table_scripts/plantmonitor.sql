CREATE TABLE plantmonitor
(
    id             serial PRIMARY KEY,
    sensor_id      varchar(256) REFERENCES sensor (name) ON DELETE CASCADE,
    plant_id      varchar(256) REFERENCES plant (name) ON DELETE CASCADE,
    broker_id      serial REFERENCES mqqt_broker (id) ON DELETE CASCADE
)