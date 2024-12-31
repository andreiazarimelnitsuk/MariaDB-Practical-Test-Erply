-- Main query for employee data with monthly salary calculation
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
    e.last_name ASC;