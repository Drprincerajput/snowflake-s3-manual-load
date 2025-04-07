-- Create external stage pointing to S3 CSV folder
CREATE OR REPLACE STAGE MANAGE_DB.external_stages.csv_folder
    URL = 's3://snowflakewithsnowpipesalesproject/csv/'
    STORAGE_INTEGRATION = s3_int
    FILE_FORMAT = MANAGE_DB.file_formats.csv_fileformat;
