create table admin (
	adminId VARCHAR(10) NOT NULL,
	adminPassword VARCHAR(100) NOT NULL,
	PRIMARY KEY (adminId)
);

CREATE TABLE Transaction
(
 EmpId varchar(15) NOT NULL,
 BookNo varchar(40) NOT NULL,
 DOIssue Date NOT Null,
 DOReturn Date,
  FOREIGN KEY (BookNo) REFERENCES Books(BookNo),
  FOREIGN KEY (EmpId) REFERENCES Employee(EmpId)
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