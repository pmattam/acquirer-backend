DROP DATABASE IF EXISTS acquirer;
CREATE DATABASE acquirer;

\c acquirer;

CREATE TABLE targets (
  id SERIAL PRIMARY KEY,
  company_name VARCHAR (100) UNIQUE NOT NULL,
  logo VARCHAR (100),
  status VARCHAR (50),
  company_profile JSON,
  financial_performance JSON,
  key_contacts JSON
);
