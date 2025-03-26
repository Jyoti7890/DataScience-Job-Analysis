![DATA SCIENCE JOB HIRING TRENDS & CAREER GROWTH INSIGHTS](https://github.com/Jyoti7890/DataScience-Job-Analysis/blob/master/job%20datascience%20screenshot.png)
# **DATA SCIENCE JOB HIRING TRENDS & CAREER GROWTH INSIGHTS Using Python + SQL + Excel**

## Project Overview

This project focuses on analyzing job trends in the Data Science domain. It involves data collection, cleaning, SQL-based analysis, and visualization to extract insights on job demands, required skills, salary trends, and top hiring companies.

##  Key Features

- **Automated Data Collection**: Fetch job listings from Kaggle dataset
- **Data Cleaning & Preprocessing**: Handle missing values, duplicates, and format inconsistencies.
- **SQL-Based Analysis**: Perform queries to derive insights.
- **Visualization & Reporting**: Use Excel for data visualization.

---
## Data Cleaning Steps

During data preprocessing, the following issues were identified and resolved:

1. **Extra Column Removal** → Removed unnecessary index column.
2. **Experience Level Standardization** → Converted short codes (`MI, SE, EX`) to full forms (`Mid-Level, Senior, Executive`).
3. **Remote Work Labels** → Mapped `remote_ratio` values (`0, 50, 100`) to `Onsite, Hybrid, Remote`.
4. **Company Size Labels** → Expanded short forms (`S, M, L`) to `Small, Medium, Large`.
5. **Employment Type Standardization** → Standardized inconsistent employment type values.
6. **Location & Residence Names** → Expanded `company_location` and `employee_residence` abbreviations to full names.

---
## SQL Analysis Performed

1. **Country-wise Salary Trends** → Analyzed salary distribution across different locations.
2. **Remote Work Trends** → Examined remote job trends over the years.
3. **Salary Trends by Job Title** → Compared salaries across various job roles.
4. **Highest-Paying Countries for Data Jobs** → Identified top-paying countries.
5. **Salary vs. Company Size** → Analyzed salary distribution across company sizes.
6. **Experience Level vs. Salary** → Explored the impact of experience on salary.
7. **Industry-Wise Hiring Trends** → Determined the most in-demand job titles.
8. **Salary Growth Trend Over the Years** → Observed salary progression for different roles.
9. **Remote vs. Onsite Jobs Demand** → Compared job demand across remote and onsite roles.
10. **Experience Level vs. Salary Comparison** → Evaluated salary variations by experience level.

---
## Project Steps:

1. **Set Up the Environment**
   - Tools Used: Python, MySQL, Excel, Jupyter Notebook
2. **Data Collection**
   - Fetch job data from Kaggle.
3. **Data Preprocessing & Cleaning**
   - Handle missing values and normalize formats.
4. **Load Data into SQL**
   - Connect to MySQL using Jupyter Notebook.
   - Store cleaned data in MySQL.
5. **SQL Analysis**
   - Perform queries to analyze job trends.
6. **Visualization & Report**
   - Create dashboards in Excel.

---
##** Project Structure**
```bash
|--data/                 # Raw data 
|--main.py               # Jupyter Notebook for data cleaning data using pandas
|--cleaned_data.xlsx     # cleaned data
|--sql_queries/          # SqL scripts for analaysis
|--dashoboard.xlsx       # Excel dashboard
|--screensot.png         # Dashboard Screenshot
|--readme.md             # documentation
```

---
## Getting Started

### Clone the Repository:

```bash
git clone <repo-url>
```

### Install Required Libraries:

```bash
pip install -r requirements.txt
```

### Load & Analyze Data:

1. Set up MySQL database.
2. Run Python scripts to clean and load data.
3. Use SQL queries for analysis.
4. Visualize insights using Excel and Python.

## Tech Stack Used
- Python : Pandas
- SQL : MySQL for data querying and storage
- Excel : Pivot tables, charts, and slicers, KPIs.
- Jupyter Notebook : Development environment.

---
## Results & Insights

- Identified **top hiring companies**.
- Analyzed **job demand trends**.
- Mapped **required skills with job roles**.
- Salary distribution insights across different roles.

### Insights from Dashboard Visuals:

1. **Employment Trends**: `Remote jobs` saw a surge in demand in `2020`.
2. **Average Salary by Job Role**: Director of Data Science is the highest-paying role `($325,000)`.
3. **Employment Type Distribution**: `40% of jobs are remote`, `34% hybrid`, and `26% onsite`.
4. **Salary Trends by Experience Level**: Mid-level roles offer the highest salary growth potential.
5. **Country-wise Salary Analysis**: The United States and UAE offer the highest average salaries.
6. **Employment Type vs. Experience Type**: Most full-time jobs are mid-to-senior level roles.

## Future Enhancements

- **Power BI/Tableau Integration**: Interactive dashboards.
- **Automated ETL Pipeline**: Real-time job data processing.
- **ML Model for Job Recommendation**: Predictive insights on job trends.

This project showcases expertise in SQL querying, data analysis, and visualization—key skills for a **Data Analyst** role. 
