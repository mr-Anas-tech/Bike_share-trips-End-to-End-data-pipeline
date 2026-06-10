# Bike_share-trips-End-to-End-data-pipeline
### 1. Data Source & Warehousing
* **Source:** Historical bikeshare transactional data, terminal stations data, and spatial geographical regions.
* **Storage:** Ingested into **Google BigQuery** as the centralized cloud data warehouse storage layer (`raw_bikeshare_trips`, `raw_stations`, `raw_region`).

### 2. Python Pandas (Structural & Profiling Layer)
* **Purpose:** Executed strictly for parsing data structures, recognizing high-level patterns, and executing data integrity checks.
* **Operations:** Evaluated data distributions, isolated massive structural gaps, mapped out missing value flags (`member_gender == 'Unknown'`), and parsed raw time-intelligence components.

### 3. Analytics Engineering (dbt Cloud)
* **Staging Layer (`stg_`)**: Materialized raw strings into type-casted schemas and standardized universal timestamps.
* **Intermediate Layer (`int_`)**: Developed complex relational joints (`int_station_region`) and engineered modular time matrices (`int_trip_date_calculated`) using advanced SQL CTEs.
* **Marts Layer (`fct_` / `dim_`)**: Deployed a star-schema topology consisting of optimized dimension tables (`dim_bikeshare_station`) anchoring a high-density, high-volume fact table (`fct_bikeshare_trips`).

### 4. BI Optimization & Executive Serving
* **Data Scale Strategy:** To combat local rendering bottlenecks when processing nearly 2 Million rows, raw logs were strategically compiled into dense semantic aggregations (~0.05% performance optimization matrix). This enables instantaneous dashboard load-speeds while fully preserving the underlying granular trends and data patterns.

---

## 💡 Key Business & Operational Insights Deployed
* **The Commuter Blueprint:** Uncovered sharp utilization spikes precisely at **8:00 AM and 5:00 PM**,
* verifying that system revenue is fundamentally anchored to professional daily commuter pipelines.
* **Optimized Fleet Maintenance Windows:** By using Python data pattern mapping, specific low-volume rush days were isolated.
*  Operations can now systematically pull damaged assets for technical servicing on lower-demand days (e.g., Day 1/Sundays) to ensure maximum bike availability during peak weekly commute windows.
* **Guest Modes vs. Recurring Revenue:** Data reveals that Subscribed Members drive **40.55%** of predictable, high-frequency baseline usage, while casual/guest modes dominate longer trip durations,
* presenting high transaction value but low long-term stability.
* **Spatial Rebalancing Deficits:** Identified critical terminal congestion along major corridors (e.g., *Harry Bridges Plaza*), allowing operations to deploy target-driven,
* automated bike relocation schedules to prevent empty-dock bottlenecks.


---
############################################ Dashboaard Link:  

https://drive.google.com/file/d/1WiEBNHtIgzBfESZs4itwHTDLkFhjgyCl/view?usp=sharing

## 🛠️ Complete Technical Stack
* **Data Warehouse:** Google BigQuery
* **Data Engineering & Lineage:** dbt Cloud 
* **Structural Profiling:** Python , Pandas
* **Enterprise Reporting:** Power BI Desktop & DAX Modeling

---
*Developed by Muhammad Anas  | Data Analyst & Analytics Engineer*
