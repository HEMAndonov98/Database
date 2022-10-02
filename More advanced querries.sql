-- Find any client's who are an LLC

SELECT *
FROM Client
WHERE client_name LIKE '%LLC';

-- Find any branch suppliers who are in the label business

SELECT *
FROM Branch_Supplier
WHERE supply_type LIKE '%Label%';

-- Find any employee born on the 10th month

SELECT *
FROM Employee
WHERE birth_date LIKE '_____10%';

-- Find any clients who are schools

SELECT *
FROM Client
WHERE client_name LIKE '%school%';

-- Find a list of employee and branch names

SELECT Employee.first_name AS Employee_names
FROM Employee 
UNION
SELECT Branch.branch_name
FROM Branch;

-- Find a list of all clients & branch suppliers' names

SELECT client_name AS non_employee_enity_names
FROM Client
UNION
SELECT Branch_Supplier.supplier_name
FROM Branch_Supplier;

