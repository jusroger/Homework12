DROP DATABASE IF EXISTS employee_tracker;
CREATE database employee_tracker;
USE employee_tracker;
CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);
CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30)NOT NULL,
    salary DECIMAL (10,2) NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY(department_id) REFERENCES department (id)
);
CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL, 
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL, 
    manager_id INT ,
    FOREIGN KEY (manager_id) REFERENCES employee(id),
    FOREIGN KEY(role_id) REFERENCES role(id)
);
INSERT INTO department (name) 
VALUES ("Sales"), ("Customer Service"),("Inventory"), ("Technology"),("Asset Protection");
INSERT INTO role (title, salary, department_id)
VALUES ("Sales Lead", 50000 ,1),  
("Phone Sales", 30000,1),
("Car Unloader", 25000, 3),
("Target agent",40000,4),
("TV Sales", 30000 ,1),
("Store Manager", 60000,4),
("Front Security", 30000, 5);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("John", "doe", 1, 1),
("Bill", "Bob", 2, 1),
("mike", "jordan",3, 2),
("Ty","lawson",4, 3);