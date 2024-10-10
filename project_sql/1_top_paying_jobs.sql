/* Questions
- What are the top 10 highest paying Data Analyst roles that are available remotely.
- Focuses on job posting with specified salaries (remove nulls).
-  WHy? Highlight the top-paying oppurtunities for Data Analysis, offering insights into the most optimal skills 
*/

SELECT
    job_id,
    job_title,
    company_dim.name,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date
FROM 
    job_postings_fact
LEFT JOIN company_dim
    ON job_postings_fact.company_id = company_dim.company_id
WHERE 
    job_title_short = 'Data Analyst' 
    AND job_location = 'Anywhere' 
    AND salary_year_avg  IS NOT NULL
ORDER BY 
    salary_year_avg DESC
LIMIT 10 ; 