-- Total Patients
SELECT COUNT(Patient_ID) AS Total_Patients
FROM hospital_patient_data;

-- Patient Admission Rate
SELECT DATE(Admission_Date) AS Admission_Day, COUNT(*) AS Admissions
FROM hospital_patient_data
GROUP BY Admission_Day
ORDER BY Admission_Day;

-- Average Treatment Cost by Department
SELECT Department, AVG(Treatment_Cost) AS Avg_Treatment_Cost
FROM hospital_patient_data
GROUP BY Department;

-- Discharge Trends
SELECT DATE(Discharge_Date) AS Discharge_Day, COUNT(*) AS Total_Discharges
FROM hospital_patient_data
GROUP BY Discharge_Day
ORDER BY Discharge_Day;

-- Top Costly Treatments
SELECT Diagnosis, SUM(Treatment_Cost) AS Total_Cost
FROM hospital_patient_data
GROUP BY Diagnosis
ORDER BY Total_Cost DESC;
