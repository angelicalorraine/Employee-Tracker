DROP DATABASE IF EXISTS Employee_DB;
CREATE DATABASE Employee_DB;

USE Employee_DB;

CREATE TABLE Department (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE Role (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(10,4) NOT NULL,
    dept_id INT NOT NULL

);

CREATE TABLE Employee (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    manager_id INT,

);

SELECT Employee.first_name, Employee.last_name, Role.title, Role.salary, Department.dept_name
FROM ((role
INNER JOIN Employee ON role.id = Employee.role_id)
INNER JOIN Department ON role.dept_id = dept.id)
ORDER BY dept_name;