-- Find names of all employees who have sold over 50,000

SELECT Employee.first_name, Employee.last_name
FROM Employee
WHERE Employee.emp_id IN 
(
	SELECT Works_With.emp_id
	FROM Works_With
	WHERE Works_With.total_sales > 50000
);