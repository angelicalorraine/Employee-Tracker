USE Employee_DB;

INSERT INTO Department (dept_name)
VALUES ("Management");

INSERT INTO Department (dept_name)
VALUES ("Human Resources");

INSERT INTO Department (dept_name)
VALUES ("Marketing");

INSERT INTO Department (dept_name)
VALUES ("Finance");

INSERT INTO Department (dept_name)
VALUES ("Customer Service");



INSERT INTO role (title, salary, dept_id)
VALUES ("Manager", 120, 1);

INSERT INTO role (title, salary, dept_id)
VALUES ("HR Director", 100, 1);

INSERT INTO role (title, salary, dept_id)
VALUES ("Campaign Manager", 100, 1);

INSERT INTO role (title, salary, dept_id)
VALUES ("Financial Manager", 100, 1);

INSERT INTO Role (title, salary, dept_id)
VALUES ("Customer Service Manager", 100, 1);

INSERT INTO role (title, salary, dept_id)
VALUES ("Sales Floor Manager", 100, 1);



INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Serena", "Taylor", 1);


INSERT INTO role (title, salary, dept_id)
VALUES ("Employee Relations",75, 2);

INSERT INTO role (title, salary, dept_id)
VALUES ("Recruiter",50, 2);

INSERT INTO role (title, salary, dept_id)
VALUES ("Trainer",47, 2);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Serena", "Taylor", 2);




INSERT INTO Role (title, salary, dept_id)
VALUES ("Campaign Specialist", 90, 3);

INSERT INTO Role (title, salary, dept_id)
VALUES ("Social Media Coordinator", 90, 3);

INSERT INTO role (title, salary, dept_id)
VALUES ("Sales Associate", 105, 5);

INSERT INTO role (title, salary, dept_id)
VALUES ("Customer Support", 45, 5);

INSERT INTO role (title, salary, dept_id)
VALUES ("Customer Support Engineer", 70, 5);

INSERT INTO role (title, salary, dept_id)
VALUES ("Customer Success Advocate", 60, 5);




INSERT INTO Role (title, salary, dept_id)
VALUES ("Financial Advisor", 70, 4);

INSERT INTO Role (title, salary, dept_id)
VALUES ("Accounting", 70, 4);

INSERT INTO Role (title, salary, dept_id)
VALUES ("Billing", 55, 4);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Serena", "Taylor", 4;



INSERT INTO role (title, salary, dept_id)
VALUES ("Sales Associate", 105, 5);

INSERT INTO role (title, salary, dept_id)
VALUES ("Customer Support", 45, 5);

INSERT INTO role (title, salary, dept_id)
VALUES ("Customer Support Engineer", 70, 5);

INSERT INTO role (title, salary, dept_id)
VALUES ("Customer Success Advocate", 60, 5);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Serena", "Taylor", 5);
