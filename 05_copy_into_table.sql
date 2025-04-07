-- Load data manually using COPY INTO
COPY INTO OUR_FIRST_DB.PUBLIC.movie_titles
FROM @MANAGE_DB.external_stages.csv_folder;
