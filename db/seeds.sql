-- seeded data goes here [fictional medical office?]
INSERT INTO departments (dept_id, dept_name)
VALUES
    (1, 'Design'),
    (2, 'Engineering'),
    (3, 'Sales/Legal'),

INSERT INTO roles (role_id, job_title, salary, dept_id)
VALUES
    (1, 'Salesperson', 67000, 1),
    (2, 'Senior Software Engineer', 235000, 3),
    (3, 'Software Engineer', 155000, 2),
    (4, 'Account Manager', 170000, 1),
    (5, 'Accountant', 90000, 4),
    (6, 'Engineering Intern', 75000, 4),
    (7, 'Lawyer', 210000, 2);
    

INSERT INTO employees (employee_id, first_name, last_name, role_id, manager_name)
VALUES
    (1, 'Jordan', 'Woods', 4, NULL),
    (2, 'Stan ', 'Smith', 5, NULL),
    (3, 'Londynn', 'Hightower', 7, NULL),
    (4, 'Jackie', 'Aina', 4, ),
    (5, 'Lois', 'Griffin', 5, 2),