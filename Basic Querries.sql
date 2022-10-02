-- Find number of employees
SELECT COUNT(emp_id)
FROM Employee;

-- Find the average of all employee salaries
SELECT AVG(salary)
FROM Employee;

-- Find the sum of all employee's salaries
SELECT SUM(salary)
FROM Employee;

-- Find out how many males and females there are
SELECT COUNT(sex), sex
FROM Employee
GROUP BY sex;

-- Find the total sales of each salesman
SELECT SUM(total_sales), emp_id
FROM works_with
GROUP BY emp_id;

-- Create a querry that shows those salesmens first and last names and order them in ascending order

SELECT Employee.emp_id, first_name AS Forename, last_name AS Surname, SUM(total_sales) AS Sales
FROM Works_with
INNER JOIN Employee ON Works_With.emp_id=Employee.emp_id
GROUP BY Employee.emp_id, Employee.first_name, Employee.last_name
ORDER BY Sales ASC;
