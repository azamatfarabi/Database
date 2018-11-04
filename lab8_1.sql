CREATE DATABASE lab8_1;

CREATE INDEX index1 on countries using hash (name);

CREATE INDEX index2 on countries using hash (name, surname);

CREATE UNIQUE INDEX index3 on employees (salary);

CREATE INDEX index4 on employees (substring(name from 1 to 4));

CREATE INDEX index5 on employees (department_id, salary);

CREATE INDEX index6 on departments (department_id, budget); 