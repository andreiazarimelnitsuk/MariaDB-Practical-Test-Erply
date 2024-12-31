-- Count total records
SELECT COUNT(DISTINCT e.emp_no) AS total_records
FROM employees e
INNER JOIN salaries s ON e.emp_no = s.emp_no
WHERE e.gender = 'M'
  AND e.hire_date >= '1986-01-01'
  AND s.salary BETWEEN 12 AND 120000;

-- First page query (page 1)
SELECT
    e.first_name,
    e.last_name,
    ROUND(AVG(s.salary) / 12.0, 2) AS average_monthly_salary
FROM
    employees e
INNER JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.gender = 'M'
    AND e.hire_date >= '1986-01-01'
    AND s.salary BETWEEN 12 AND 120000
GROUP BY
    e.emp_no,
    e.first_name,
    e.last_name
ORDER BY
    average_monthly_salary DESC,
    e.first_name ASC,
    e.last_name ASC
LIMIT 100 OFFSET 0;

-- Second page query (page 2)
SELECT
    e.first_name,
    e.last_name,
    ROUND(AVG(s.salary) / 12.0, 2) AS average_monthly_salary
FROM
    employees e
INNER JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.gender = 'M'
    AND e.hire_date >= '1986-01-01'
    AND s.salary BETWEEN 12 AND 120000
GROUP BY
    e.emp_no,
    e.first_name,
    e.last_name
ORDER BY
    average_monthly_salary DESC,
    e.first_name ASC,
    e.last_name ASC
LIMIT 100 OFFSET 100;

-- Penultimate page query (page 536)
SELECT
    e.first_name,
    e.last_name,
    ROUND(AVG(s.salary) / 12.0, 2) AS average_monthly_salary
FROM
    employees e
INNER JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.gender = 'M'
    AND e.hire_date >= '1986-01-01'
    AND s.salary BETWEEN 12 AND 120000
GROUP BY
    e.emp_no,
    e.first_name,
    e.last_name
ORDER BY
    average_monthly_salary DESC,
    e.first_name ASC,
    e.last_name ASC
LIMIT 100 OFFSET 53500;

-- Last page query (page 537)
SELECT
    e.first_name,
    e.last_name,
    ROUND(AVG(s.salary) / 12.0, 2) AS average_monthly_salary
FROM
    employees e
INNER JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.gender = 'M'
    AND e.hire_date >= '1986-01-01'
    AND s.salary BETWEEN 12 AND 120000
GROUP BY
    e.emp_no,
    e.first_name,
    e.last_name
ORDER BY
    average_monthly_salary DESC,
    e.first_name ASC,
    e.last_name ASC
LIMIT 100 OFFSET 53600;

-- Helper function to calculate offset for any page
-- Usage example: For page N, use OFFSET (N-1)*100
-- Example for page 5:
-- LIMIT 100 OFFSET 400 -- (5-1)*100 = 400