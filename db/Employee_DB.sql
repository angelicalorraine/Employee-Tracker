DROP DATABASE IF EXISTS Employee_DB;
CREATE DATABASE Employee_DB;

USE Employee_DB;

CREATE TABLE Department (
    id int NOT NULL AUTO_INCREMENT,
    dept_name VARCHAR(30),
    PRIMARY KEY (id)
);

CREATE TABLE Role (
    id int NOT NULL AUTO_INCREMENT,
    title VARCHAR(30),
    salary DECIMAL(10,4),
    dept_id INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE Employee (
    id int NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT NOT NULL,
    manager_id INT,
    PRIMARY KEY (id)
);

SELECT Employee.first_name, Employee.last_name, Role.title, Role.salary, Department.dept_name
FROM ((role
INNER JOIN Employee ON role.id = Employee.role_id)
INNER JOIN Department ON role.department_id = department.id)
ORDER BY dept_name;