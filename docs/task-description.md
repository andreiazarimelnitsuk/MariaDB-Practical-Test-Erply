# MariaDB Practical Competence Test Description

Practical Competence Test: MariaDB
Prerequisites
● Laptop or PC: A machine capable of connecting to and/or running MariaDB.

Test Overview
This test evaluates your ability to configure, deploy, and manage a MariaDB database on whichever
platform you can. You will install MariaDB, load data into it, write, execute and optimize queries on it.
Finally present a document with described steps how you achieved your results.

Task 1: Set up MariaDB
Do what needs to be done to get MariaDB running on whichever platform you like.
Some helpful links for setting up MariaDB
Installing MariaDB for Windows
https://www.mariadbtutorial.com/getting-started/install-mariadb/
Other platforms
https://mariadb.com/downloads/
Installing and Using MariaDB via Docker
https://mariadb.com/kb/en/installing-and-using-mariadb-via-docker/
Task 2: Data Import, Optimization, Queries
Objective: Set up the employees and salaries tables in the MariaDB database and optimize the
database. The data must be imported from provided SQL dump files.
Steps:
1. Create the Tables:
Execute the following SQL commands to create the employees and salaries tables in the

C/C++
MariaDB database. Is there anything wrong with the tables? How could this be fixed?

CREATE TABLE employees (
emp_no text,
birth_date text,
first_name text,
last_name text,
gender text,
hire_date text
);
CREATE TABLE salaries (
emp_no text,
salary text,
from_date text,
to_date text
);

2. Data Import:
Import the data from the following links into the respective tables:
○ Employees Data: load_employees.dump
○ Salaries Data: load_salaries1.dump
○ Is there anything wrong with the data? How could this be fixed?
3. Write SQL queries based on these notes:
○ Application needs to select data from the database and display it on the user
interface (UI) for the end user.
○ The user wants to see the list of male employees who have monthly salaries
between 1 and 10000, who have been hired in 1986 or later.
○ Query output needs to be first name, last name, employee's average monthly salary,
ordered by employee's average monthly salary in descending order, then first name,
then last name.
○ The application can list on the UI 100 rows of query results at most.
○ Paging is needed. What's the best way to do that?
○ What SQL queries are needed to implement paging?
○ Write queries for the first 2 pages and last 2 pages.
○ Writing application code is not required. If it makes it easier to demonstrate the

solution, then it is acceptable. Writing pseudo code for this purpose is also
acceptable. SQL queries however need to be of correct MariaDB syntax.

Evaluation Criteria
The test will be evaluated based on the effectiveness of written queries, and the clarity of
documentation.

## Prerequisites
- Laptop or PC: A machine capable of connecting to and/or running MariaDB.

## Test Overview
This test evaluates the ability to configure, deploy, and manage a MariaDB database. The tasks include installation, data loading, query writing, and optimization.

## Tasks
1. Set up MariaDB
2. Data Import, Optimization, Queries
3. Implementation of pagination
4. Documentation of the process