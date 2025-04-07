-- Create main database
CREATE OR REPLACE DATABASE OUR_FIRST_DB;

-- Create table to hold movie titles
CREATE OR REPLACE TABLE OUR_FIRST_DB.PUBLIC.movie_titles (
  show_id STRING,
  type STRING,
  title STRING,
  director STRING,
  cast STRING,
  country STRING,
  date_added STRING,
  release_year STRING,
  rating STRING,
  duration STRING,
  listed_in STRING,
  description STRING
);

-- Create management DB for file formats and stages
CREATE OR REPLACE DATABASE MANAGE_DB;
CREATE OR REPLACE SCHEMA MANAGE_DB.file_formats;
CREATE OR REPLACE SCHEMA MANAGE_DB.external_stages;
