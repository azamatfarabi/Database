CREATE DATABASE lab4;

CREATE TABLE warehouses(
  code INT,
  location VARCHAR(255),
  capacity INT
);

CREATE TABLE boxes(
  code CHAR(4),
  contents VARCHAR(255),
  value INT,
  warehouse INT
);


INSERT INTO Warehouses(Code,Location,Capacity) VALUES(1,'Chicago',3);
 INSERT INTO Warehouses(Code,Location,Capacity) VALUES(2,'Chicago',4);
 INSERT INTO Warehouses(Code,Location,Capacity) VALUES(3,'New York',7);
 INSERT INTO Warehouses(Code,Location,Capacity) VALUES(4,'Los Angeles',2);
 INSERT INTO Warehouses(Code,Location,Capacity) VALUES(5,'San Francisco',8);

 INSERT INTO Boxes(Code,Contents,Value,Warehouse) VALUES('0MN7','Rocks',180,3);
 INSERT INTO Boxes(Code,Contents,Value,Warehouse) VALUES('4H8P','Rocks',250,1);
 INSERT INTO Boxes(Code,Contents,Value,Warehouse) VALUES('4RT3','Scissors',190,4);
 INSERT INTO Boxes(Code,Contents,Value,Warehouse) VALUES('7G3H','Rocks',200,1);
 INSERT INTO Boxes(Code,Contents,Value,Warehouse) VALUES('8JN6','Papers',75,1);
 INSERT INTO Boxes(Code,Contents,Value,Warehouse) VALUES('8Y6U','Papers',50,3);
 INSERT INTO Boxes(Code,Contents,Value,Warehouse) VALUES('9J6F','Papers',175,2);
 INSERT INTO Boxes(Code,Contents,Value,Warehouse) VALUES('LL08','Rocks',140,4);
 INSERT INTO Boxes(Code,Contents,Value,Warehouse) VALUES('P0H6','Scissors',125,1);
 INSERT INTO Boxes(Code,Contents,Value,Warehouse) VALUES('P2T6','Scissors',150,2);
 INSERT INTO Boxes(Code,Contents,Value,Warehouse) VALUES('TU55','Papers',90,5);

SELECT * FROM warehouses;

SELECT * FROM Boxes WHERE value > 150;

SELECT DISTINCT Contents FROM Boxes;

SELECT Warehouse, COUNT(*) FROM Boxes GROUP BY Warehouse;

SELECT Warehouse, COUNT(*) FROM Boxes GROUP BY Warehouse HAVING COUNT(*) > 2;

INSERT INTO Warehouses (Location,Capacity) VALUES ('New York',3);

INSERT INTO Boxes VALUES('H5RT','Papers',200,2);

UPDATE Boxes SET Value = Value * 0.85;

DELETE FROM Boxes WHERE Value < 150;

DELETE FROM Boxes WHERE Warehouse IN(SELECT Code FROM Warehouses WHERE Code = 3) RETURNING *;
