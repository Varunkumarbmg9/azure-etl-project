# 🚀 Azure End-to-End Data Engineering Project

This project demonstrates an end-to-end ETL pipeline built on Microsoft Azure. It ingests raw data from GitHub using Azure Data Factory (ADF), transforms it using PySpark in Azure Databricks, and creates external views over the transformed data in Azure Synapse Analytics for downstream analytics.

---

## 📁 Project Structure


---

## ⚙️ Tools & Technologies

- **Azure Data Factory** – Data ingestion from GitHub to ADLS (Bronze layer)
- **Azure Data Lake Storage Gen2** – Storage for Bronze, Silver, and Gold layers
- **Azure Databricks** – PySpark transformations from Bronze to Silver
- **Azure Synapse Analytics** – External views and tables on transformed data (Gold layer)
- **PySpark** – Data transformation logic
- **Parquet** – Format used for Silver layer output

---

## 🧱 ETL Pipeline Overview

### 1. **Ingestion (Bronze Layer)**

- ADF pipelines (`GitToRaw`, `DynamicGitToRaw`) pull raw CSV files from GitHub
- Raw data is stored in the **Bronze layer** (ADLS)

### 2. **Transformation (Silver Layer)**

- Azure Databricks notebook (`Silver_Layer_transformation.py`) reads Bronze data
- Performs transformations using PySpark
- Writes cleaned data to **Silver layer** in **Parquet** format

### 3. **Query Layer (Gold Layer)**

- Synapse SQL scripts:
  - Define **external data sources**
  - Create **views** on Silver-layer Parquet files using `OPENROWSET`
  - Create **external tables** for querying

---

## 📂 Folder Details

### `adf/`
Contains exported ARM templates for:
- Pipelines (Copy, ForEach, Lookup)
- Datasets (static and parameterized)
- Linked services (HTTP & Azure Data Lake)

Deployable via Azure Portal or CLI.

---

### `spark_notebooks/`
- `Silver_Layer_transformation.py`: PySpark logic for transforming raw data into structured Parquet format (Silver layer)

---

### `synapse/`
- SQL scripts for:
  - Creating schemas
  - External data sources and file formats
  - Views over Silver-layer data (Gold layer)

---

## 🚧 To-Do / Optional Extensions

- Add Power BI dashboards to visualize Gold layer
- Automate deployments using CI/CD (e.g., GitHub Actions or Azure DevOps)
- Parameterize Synapse scripts for flexibility

