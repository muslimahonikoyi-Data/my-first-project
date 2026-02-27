CREATE DATABASE FacultyOfScience;
USE FacultyOfScience;


CREATE TABLE Department (DepartmentID VARCHAR(10) PRIMARY KEY,
    Department_Name VARCHAR(100) NOT NULL,
    Course VARCHAR(50) NOT NULL,
    HOD VARCHAR(100) NOT NULL);
   
CREATE TABLE Campus (
    CampusID VARCHAR(10) PRIMARY KEY,
    CampusName VARCHAR(100) NOT NULL,
    CampusLocation VARCHAR(100) NOT NULL,
    Provost VARCHAR(100) NOT NULL
);


CREATE TABLE StudentEnrollment (
    Matric_Number VARCHAR(10) PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Gender VARCHAR(1) CHECK (Gender IN ('M','F')),
    Department_ID VARCHAR(10),
    Campus_ID VARCHAR(10),
    EnrolmentDate DATE,
    FOREIGN KEY (Department_ID) REFERENCES Department(DepartmentID),
    FOREIGN KEY (Campus_ID) REFERENCES Campus(CampusID)
);


CREATE TABLE StudentGrading (
    Matric_Number VARCHAR(10),
    Department_ID VARCHAR(10),
    Score INT CHECK (Score >= 0 AND Score <= 100),
    Exam VARCHAR(20),
    PRIMARY KEY (Matric_Number, Exam),
    FOREIGN KEY (Matric_Number) REFERENCES StudentEnrollment(Matric_Number),
    FOREIGN KEY (Department_ID) REFERENCES Department(DepartmentID)
);

INSERT INTO Department VALUES 
('D001', 'Computer Science', 'BSc. CompSci', 'Dr. Akinwale'),
('D002', 'Business Admin', 'BSc. Biz', 'Prof. Musa'),
('D003', 'Mass Communication', 'BSc. MassComm', 'Mrs. Okon'),
('D004', 'Accounting', 'BSc. Acc', 'Dr. Bello'),
('D005', 'Statistics', 'BSc. Stats', 'Dr. Grace');


INSERT INTO Campus VALUES
('C001', 'Main Campus', 'Lagos', 'Prof. Eze'),
('C002', 'Satellite Campus', 'Ibadan', 'Dr. Farouk'),
('C003', 'North Annex', 'Kano', 'Dr. Uduak'),
('C004', 'South Annex', 'Enugu', 'Prof. Kalu'),
('C005', 'Mid-Campus', 'Abuja', 'Dr. Danjuma');

INSERT INTO StudentEnrollment VALUES
('S001', 'David', 'Ajayi', 'M', 'D001', 'C001', '2022-09-15'),
('S002', 'Sarah', 'Bello', 'F', 'D002', 'C002', '2023-01-10'),
('S003', 'Musa', 'Ibrahim', 'M', 'D003', 'C003', '2021-07-18'),
('S004', 'Joy', 'Nnaji', 'F', 'D004', 'C004', '2022-03-25'),
('S005', 'John', 'Okoro', 'M', 'D005', 'C005', '2023-06-12');


INSERT INTO StudentGrading VALUES
('S001', 'D001', 87, 'CSC101'),
('S002', 'D002', 78, 'BUS201'),
('S003', 'D003', 92, 'MAC101'),
('S004', 'D004', 65, 'ACC102'),
('S005', 'D005', 80, 'STA103');
