# create database
create database DS_job_analysis;
use DS_job_analysis;

CREATE TABLE job_analysis (
work_year INT,
experience_level VARCHAR(50),
employment_type VARCHAR(50),
job_title VARCHAR(100),
salary INT,
salary_currency VARCHAR(10),
salary_in_usd INT,
employee_residence VARCHAR(50),
remote_ratio INT,
company_location VARCHAR(10),
company_size VARCHAR(50),
remote_category VARCHAR(50)
);

ALTER TABLE job_analysis 
MODIFY COLUMN employee_residence VARCHAR(100);

ALTER TABLE job_analysis 
MODIFY COLUMN company_location VARCHAR(100);

LOAD DATA INFILE "C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\cleaned_job_data.csv"
INTO TABLE job_analysis
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;

# 1. Country-wise salary trends
SELECT company_location, AVG(salary_in_usd) as avg_salary
FROM job_analysis
Group by company_location
order by avg_salary desc;

# 2. Remote work trends
select work_year, remote_category, count(*) as total_jobs
from job_analysis
group by work_year, remote_category
order by work_year, total_jobs desc;

# salary trends by job title
select job_title, avg(salary_in_usd) as avg_salary, min(salary_in_usd) as min_salary, max(salary_in_usd) as max_salary
from job_analysis
group by job_title
order by avg_salary desc;

# 3. Highest-Paying countries for data jobs
select company_location, round(avg(salary_in_usd), 2) as avg_salary , count(*) as job_count
from job_analysis
group by company_location
order by avg_salary desc
limit 10;

# 4. salary vs company size
select company_size , avg(salary_in_usd) as avg_salary, count(*) as job_count
from job_analysis
group by company_size
order by avg_salary desc;

# 5.Experience level vs. salary
SELECT experience_level, ROUND(AVG(salary_in_usd), 2) AS avg_salary, COUNT(*) AS job_count
FROM job_analysis
GROUP BY experience_level
ORDER BY avg_salary DESC;

# 6.Industry- wise hiring trends 
select job_title, count(*) as total_hires
from job_analysis
group by job_title
order by total_hires desc
limit 10;

# 7. salary growth trend over the years
select work_year, job_title, round(avg(salary_in_usd), 2) as avg_salary
from job_analysis
group by work_year, job_title
order by work_year desc , avg_salary desc;

# 8.  Remote vs Onsite Jobs Demand
SELECT remote_category, COUNT(*) AS total_jobs
FROM job_analysis
GROUP BY remote_category
ORDER BY total_jobs DESC;

# 9.Experience Level vs Salary Comparison
SELECT experience_level, ROUND(AVG(salary_in_usd), 2) AS avg_salary, COUNT(*) AS total_jobs
FROM job_analysis
GROUP BY experience_level
ORDER BY avg_salary DESC;
