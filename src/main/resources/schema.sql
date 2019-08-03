create table admin (
	adminId VARCHAR(10) NOT NULL,
	adminPassword VARCHAR(100) NOT NULL,
	PRIMARY KEY (adminId)
);

CREATE TABLE employee (
  EmpId VARCHAR(10) NOT NULL,
  Password VARCHAR(100) NOT NULL,
  EmpEmail VARCHAR(100) NOT NULL,
  EmpName VARCHAR(100) NOT NULL,
  PRIMARY KEY (EmpId)
);

CREATE TABLE books (
  EmpId VARCHAR(10) NOT NULL,
  Password VARCHAR(100) NOT NULL,
  EmpEmail VARCHAR(100) NOT NULL,
  EmpName VARCHAR(100) NOT NULL,
  PRIMARY KEY (EmpId)
);