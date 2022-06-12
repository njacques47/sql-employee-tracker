-- seeded data goes here [fictional medical office?]
INSERT INTO departments (dept_id, dept_name)
VALUES
    (1, 'Sales'),
    (2, 'Engineering'),
    (3, 'Finance'),
    (4, 'Legal');

INSERT INTO roles (role_id, job_title, salary, dept_id)
VALUES
    (1, 'Salesperson', 150000, 1),
    (2, 'Lead Engineer', 120000, 3),
    (3, 'Software Engineer', 155000, 2),
    (4, 'Account Manager', 170000, 1),
    (5, 'Accountant', 190000, 4),
    (6, 'Legal Team Lead', 75000, 4),
    (7, 'Lawyer', 200000, 2);
    

INSERT INTO employees (employee_id, first_name, last_name, role_id, manager_name)
VALUES
    (1, 'Jordan', 'Woods', 4, NULL),
    (2, 'Stan ', 'Smith', 5, NULL),
    (3, 'Londynn', 'Hightower', 7, NULL),
    (4, 'Jackie', 'Aina', 4, 5),
    (5, 'Lois', 'Griffin', 5, 2),
    (6, 'Sara', 'Michaels', 3, 1),
    (7, 'Malik', 'Yoba', 1, 2),
    (8, 'Angel', 'Rodriguez', 6, 1),
    (9, 'Melissa', 'Eldridge', 2, 3),
    (10, 'Maurice', 'Price', 4, 3),
    (11, 'Teresa', 'Henderson', 5, 2);