-- drop, recreate, and use DB
DROP DATABASE IF EXISTS employee_directory_db;
CREATE DATABASE employee_directory_db;
USE employee_directory_db;

-- make dept id a reference/primary key for other tables
CREATE TABLE departments (
  dept_id INTEGER NOT NULL AUTO_INCREMENT,
  dept_name VARCHAR(30) NOT NULL,
  PRIMARY KEY(dept_id)
);

-- reference dept id as part of the role
CREATE TABLE roles(
    role_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    job_title VARCHAR(30),
    -- test use of DECIMAL; if does not work, INTEGER
    salary DECIMAL,
    dept_id INTEGER,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- reference role id as part of the employee description
CREATE TABLE employees(
    employee_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INTEGER, 
    -- manager can be null if there is no manager 
    manager_name VARCHAR(30),
    FOREIGN KEY (role_id) REFERENCES roles(role_id)
);