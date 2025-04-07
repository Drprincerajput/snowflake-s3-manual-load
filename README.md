# 🚀 Snowflake Manual Data Load from S3

This project demonstrates how to manually load CSV data from Amazon S3 into Snowflake using external stages and the `COPY INTO` command — **no Snowpipe used**.

---

## 📌 Project Use Case

Load a Netflix-style dataset from an S3 bucket into a Snowflake table in a batch/manual fashion. This is useful for scheduled jobs or occasional data dumps that don’t require real-time ingestion.

---

## 🧰 Tools & Tech

- **Snowflake** (Cloud Data Platform)
- **Amazon S3** (Storage)
- **SQL** (DDL + DML)
- **External Stage + File Format**
- **Manual COPY INTO**

---

## 📁 Folder Structure

```
sql/
├── 01_create_storage_integration.sql
├── 02_create_databases_and_tables.sql
├── 03_create_file_format.sql
├── 04_create_external_stage.sql
├── 05_copy_into_table.sql
└── 06_select_from_table.sql
```

---

## 🛠️ Setup Steps

### 1. 🔐 Create Storage Integration
```sql
-- Run: sql/01_create_storage_integration.sql
```
- Creates an integration with IAM role and allowed S3 buckets.
- Use `DESC INTEGRATION s3_int` to get the `EXTERNAL_ID` and update your AWS IAM trust relationship.

---

### 2. 🗃️ Create Database and Table
```sql
-- Run: sql/02_create_databases_and_tables.sql
```
- Creates a database `OUR_FIRST_DB` with a table for movie data.
- Also sets up `MANAGE_DB` to organize formats and stages.

---

### 3. 🧾 Define File Format
```sql
-- Run: sql/03_create_file_format.sql
```
- Creates a CSV file format object with common settings.

---

### 4. 🌐 Create External Stage
```sql
-- Run: sql/04_create_external_stage.sql
```
- Points to your S3 path (`/csv/` folder) using the storage integration.

---

### 5. 📥 Load the Data
```sql
-- Run: sql/05_copy_into_table.sql
```
- Manually loads data from the external stage into the target table.

---

### 6. 🔍 Query the Results
```sql
-- Run: sql/06_select_from_table.sql
```

---

## 📊 Sample Table Schema

```sql
CREATE TABLE movie_titles (
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
```

---

## 🧠 What I Learned

- How to connect Snowflake to AWS S3 via **storage integration**
- How to create and use **external stages** and **file formats**
- How to use `COPY INTO` for loading files manually
- Importance of **IAM roles** and **permissions** when integrating Snowflake with AWS

---

## 🙋 Author

**Your Name**  
📫 [LinkedIn]([https://linkedin.com/in/your-profile](https://www.linkedin.com/in/drprincerajput/))
