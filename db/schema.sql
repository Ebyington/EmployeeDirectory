DROP DATABASE IF EXISTS companyDB;
CREATE DATABASE companyDB;
USE companyDB;
CREATE TABLE department (
    id INT,
    name VARCHAR(30)
);

CREATE TABLE roles (
    id INT,
    title VARCHAR(30),
    salary DECIMAL

)
SOURCE db/seeds.sql;