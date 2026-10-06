# Automated Competitive Pricing Intelligence Pipeline
An end-to-end data pipeline architecture that automates the daily extraction, data transformation, storage, and visualization of market competitor pricing dynamics.

## Live Interactive Dashboard
(https://public.tableau.com/app/profile/kaitlin.marakoff/viz/CompetitorRetailPricingIntelligenceDashboard/Dashboard1)

## System Architecture & Data Lifecycle
1. **Automation Layer (UiPath RPA):** A background bot execution sequence that automatically triggers, interacts with dynamic web targets, maps underlying HTML properties, and appends extracted records straight into a live cloud storage Google Spreadsheet via GSuite API frameworks.
2. **Programming Layer (Python / Pandas):** A modular cleaning pipeline built inside Google Colab that establishes a direct web token connection to the raw data cloud stream. The script automatically handles schema validation (`KeyError` resolutions), string-to-numeric casting manipulations, missing value statistical data imputation, and daily tracking metadata generation.
3. **Relational Database Layer (SQL / DataGrip):** A relational SQLite database schema built inside JetBrains DataGrip. Clean data loads are queried using advanced **SQL Window Functions** (`AVG() OVER (PARTITION BY ...)`) to track localized daily market shifts and calculate financial cost deviations across specific time-stamped inventory catalogs.
4. **Visualization Layer (Tableau Public):** An executive metrics workspace featuring high-level operational KPI layout anchors, currency formatting, and interactive descending sorting parameters designed for immediate stakeholder business decisions.
