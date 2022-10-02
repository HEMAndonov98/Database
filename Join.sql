-- Add the extra branch
INSERT INTO branch VALUES(4, "Buffalo", NULL, NULL);

-- find the branch names and their managers

-- Inner Join
SELECT Employee.emp_id, Employee.first_name, Branch.branch_name
FROM Employee
JOIN Branch
ON Employee.emp_id = Branch.mgr_id;

-- Left Join
SELECT Employee.emp_id, Employee.first_name, Branch.branch_name
FROM Employee
LEFT JOIN Branch
ON Employee.emp_id = Branch.mgr_id;

-- Right Join
SELECT Employee.emp_id, Employee.first_name, Branch.branch_name
FROM Employee
RIGHT JOIN Branch
ON Employee.emp_id = Branch.mgr_id;