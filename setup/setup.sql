-- Compute. XS is plenty for this dataset size.
CREATE WAREHOUSE prototype_wh
  WAREHOUSE_SIZE = 'XSMALL'
  AUTO_SUSPEND = 60
  AUTO_RESUME = TRUE
  INITIALLY_SUSPENDED = TRUE;

-- Database and the three-layer schema structure from the plan
CREATE DATABASE human_edge_prototype;
USE DATABASE human_edge_prototype;
CREATE SCHEMA raw;
CREATE SCHEMA core;
CREATE SCHEMA studio;

-- Default context for this session
USE WAREHOUSE prototype_wh;
USE SCHEMA raw;