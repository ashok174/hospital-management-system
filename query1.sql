Select a.PersonId, c.PatientId, a.FirstName,a.lastName,a.gender,c.PatientDOB PatDob,c.PatientType
	FROM Persons a 
	JOIN Person_Patient b
	ON a.Personid=b.Personid
	JOIN Patient c 
	ON c.Patientid=b.Patientid;