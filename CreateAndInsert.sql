/*1. Create necessary tables in normalized 3Nform using the below data*/

CREATE TABLE Manufacturer_NIS1016(
MfName VARCHAR(10) PRIMARY KEY,
City VARCHAR(10),
State CHAR(2)
);
CREATE TABLE Employee_NIS1016(
EmployeeId INT PRIMARY KEY,
EmpName VARCHAR(20),
Phone NUMERIC,
Email VARCHAR(20)
);
CREATE TABLE COMPUTER_NIS1016(
SerialNumber INT Primary Key,
MfName VARCHAR(10)
	CONSTRAINT fk_Manufacturer_NIS1016
	FOREIGN KEY(MfName)
	REFERENCES Manufacturer_NIS1016(MfName),
Model VARCHAR(5),
Weight NUMERIC,
EmployeeId INT
	CONSTRAINT fk_Employee_NIS1016
	FOREIGN KEY(EmployeeId)
	REFERENCES Employee_NIS1016(EmployeeId)
);

/*2.Use the following schema, insert appropriate records to write query
on multiple tables*/

INSERT INTO Manufacturer_NIS1016 VALUES
('Joshi','Pune','MH'),
('Patil','Kolhapur','MH'),
('Sri','Trivandrum','KL');


INSERT INTO Employee_NIS1016 VALUES
(1,'Pranav',1111223344,'pranav@gmail.com'),
(2,'Rushi',9999446611,'rushi@gmail.com'),
(3,'Madhavi',7788889911,'madhavi@gmail.com'),
(4,'Vaidehi',8882227711,'vaidehi@gmail.com');

INSERT INTO COMPUTER_NIS1016 VALUES 
(111,'Joshi','Leaf',100,1),
(222,'Patil','Magni',110,3),
(333,'Sri','Sunny',105,2),
(444,'Patil','XTrai',100,4),
(555,'Joshi','Magni',110,1);
