DROP DATABASE IF EXISTS companyDB;
CREATE DATABASE companyDB;
USE companyDB;
CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30)
);
CREATE TABLE roles (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT,
    FOREIGN KEY (department_id)
    REFERENCES department(id)
);

CREATE TABLE employees (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    roles_id INT,
    FOREIGN KEY (roles_id)
    REFERENCES roles(id)
);
SOURCE db/seeds.sql;
