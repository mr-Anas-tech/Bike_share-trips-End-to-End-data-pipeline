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

### 📈 Executive Business Insights & Visual Discoveries:
#### 🎯 1. The 50.5% Guest Mode User Monetization Strategy
 * **The Reality:** Data analysis reveals that **49.43% (approximately 50.5% of total active records)** of entire platform traffic is driven by anonymous **Guest Mode Users**. Half of the business transaction loop occurs via anonymous kiosk checkouts, completely disconnected from user profile logs.
 * **Strategic Growth Runway:** This is the platform’s largest unmapped revenue opportunity. Converting this massive guest footprint into registered mobile application users via targeted contextual prompts at physical docks opens a direct, data-validated path to **increase total recurring revenue by over 50%**.
#### ⏰ 2. Last-Mile Commuter Profile & Bimodal Waves
 * **Utilization Footprint:** Platform ridership tracks a highly predictable bimodal distribution curve, aggressively peaking precisely at **8:00 AM** and **5:00 PM** during weekdays.
 * **Transit Identity:** The system records an **Average Trip Duration of 16.90 Minutes**. This metric mathematically solidifies the platform's product-market fit as an essential, high-frequency "last-mile workforce transit connector" rather than a casual leisure or tourism service.
#### 🔍 3. Resolving Telemetry Gaps & Asset Imbalances
 * **Unmapped Data Leak:** Investigation exposed a critical bottleneck where **13,697 rides (representing 14.1% of total platform traffic)** were dropping into a reporting void labeled under a (Blank) station identity due to destination disconnects.
 * **Firmware Discrepancy:** Isolating these trips uncovered an inventory registry error—the system tracks **310 Active Origin Hubs but only 309 Active Destination Hubs**, pinpointing localized wireless antenna signal drops during physical dock lock-ins.
#### 🔧 4. Low-Traffic Weekend Maintenance Window (Saturday & Sunday Strategy)
 * **The Problem:** Weekday commuter streams operate at absolute maximum capacity. Pulling bikes offline or auditing kiosks between Monday and Friday causes heavy user friction and immediate revenue loss.
 * **The Solution:** Network data confirms that ridership hits its absolute lowest baseline volume during Saturday and Sunday. Consequently, the operational framework has been structured to run all heavy bike overhauls, hardware audits, and dock cellular transmitter maintenance **exclusively on weekends**. This ensures 100% fleet capacity during the critical high-value weekday commute windows.
#### 🚚 5. Predictive Weekday Fleet Rebalancing
 * To eliminate peak-hour dock starvation and prevent station blockages, fleet transport logistics have been transformed. Moving away from blind patrolling, transport vans are now dispatched on a predictive scheduling window exactly 1.5 hours prior to the peak commute surges—specifically at **6:30 AM** and **3:30 PM**—to clear high-stress corridor bottlenecks like **Harry Bridges Plaza (Ferry Building)** and restock depleting residential zones.


############################################ Dashboaard Link:  

https://drive.google.com/file/d/1WiEBNHtIgzBfESZs4itwHTDLkFhjgyCl/view?usp=sharing

## 🛠️ Complete Technical Stack
* **Data Warehouse:** Google BigQuery
* **Data Engineering & Lineage:** dbt Cloud 
* **Structural Profiling:** Python , Pandas
* **Enterprise Reporting:** Power BI Desktop & DAX Modeling

---
*Developed by Muhammad Anas  | Data Analyst & Analytics Engineer*
