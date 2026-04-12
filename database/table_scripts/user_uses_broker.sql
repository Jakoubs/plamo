CREATE TABLE user_uses_broker (
  id serial PRIMARY KEY,
  user_id integer REFERENCES users(id) ON DELETE CASCADE,
  broker_id integer REFERENCES mqqt_broker(id) ON DELETE CASCADE,
  UNIQUE(user_id, broker_id)
);