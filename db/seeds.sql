INSERT INTO department (name)
VALUES ("Sales"),
       ("Engineering"),
       ("Legal"),
       ("Finance");

INSERT INTO roles (title, salary, department_id)
VALUES 
('sales lead', 10000, 1),
('head engineer', 50000, 2),
('accountant', 200000, 4),
('lawyer', 300000, 3);

INSERT INTO employees (first_name, last_name, roles_id)
VALUES ('Eric', 'b', 1), ('Diego','M', 3), ('Kurt', 'Turt', 4), ('Cal', 'Crab', 2);
