USE Employee_DB;

INSERT INTO department (dept_name)
VALUES ("Management");

INSERT INTO department (dept_name)
VALUES ("Human Resources");

INSERT INTO department (dept_name)
VALUES ("Marketing");

INSERT INTO department (dept_name)
VALUES ("Finance");

INSERT INTO department (dept_name)
VALUES ("Customer Service");



INSERT INTO role (title, salary, department_id)
VALUES ("Manager", 110, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("Campaign Manager", 110, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("Financial Manager", 110, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("HR Director", 110, 1);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Serena", "Taylor", 1);


INSERT INTO role (title, salary, department_id)
VALUES ("Employee Relations",75, 2);

INSERT INTO role (title, salary, department_id)
VALUES ("Recruiter",50, 2);

INSERT INTO role (title, salary, department_id)
VALUES ("Trainer",47, 2);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Serena", "Taylor", 2);




INSERT INTO role (title, salary, department_id)
VALUES ("Campaign Specialist", 90, 3);

INSERT INTO role (title, salary, department_id)
VALUES ("Social Media", 65, 3);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Serena", "Taylor", 3);



INSERT INTO role (title, salary, department_id)
VALUES ("Financial Advisor", 70, 4);

INSERT INTO role (title, salary, department_id)
VALUES ("Accounting", 70, 4);

INSERT INTO role (title, salary, department_id)
VALUES ("Billing", 55, 4);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Serena", "Taylor", 4;



INSERT INTO role (title, salary, department_id)
VALUES ("Sales Associate", 105, 5);

INSERT INTO role (title, salary, department_id)
VALUES ("Support", 45, 5);

INSERT INTO role (title, salary, department_id)
VALUES ("Sales Promotion", 90, 5);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Serena", "Taylor", 5);
