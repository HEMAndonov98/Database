-- Find names of all employees who have sold over 50,000

SELECT Employee.first_name, Employee.last_name
FROM Employee
WHERE Employee.emp_id IN 
(
	SELECT Works_With.emp_id
	FROM Works_With
	WHERE Works_With.total_sales > 50000
);

-- Find all clients who are handled by the branch that Michael Scott manages
-- Assume you know Michael's ID

SELECT Client.client_id, Client.client_name
FROM Client
WHERE Client.branch_id = (
	SELECT Branch.branch_id
    FROM Branch
    WHERE Branch.mgr_id = 102
);