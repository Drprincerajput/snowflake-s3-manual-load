-- Create storage integration
CREATE OR REPLACE STORAGE INTEGRATION s3_int
  TYPE = EXTERNAL_STAGE
  STORAGE_PROVIDER = S3
  ENABLED = TRUE 
  STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::xxxxxxxxx:role/snowflakes3load'
  STORAGE_ALLOWED_LOCATIONS = (
    's3://snowflakewithsnowpipesalesproject/csv/'
  )
  COMMENT = 'Playing with AWS and Snowflake';

-- Describe integration to get EXTERNAL_ID
DESC INTEGRATION s3_int;
