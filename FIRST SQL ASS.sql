
CREATE DATABASE HospitalDB;


USE HospitalDB;


CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    diagnosis VARCHAR(50)
);


INSERT INTO Patients (patient_id, first_name, last_name, age, diagnosis) VALUES (1, 'Ahmed', 'Khan', 34, 'Malaria'), (2, 'Grace', 'Okoro', 29, 'Typhoid'), (3, 'John', 'Taylor', 41, 'Diabetes'), (4, 'Zainab', 'Ali', 37, 'Hypertension'), (5, 'Henry', 'Thomas', 25, 'Asthma');
