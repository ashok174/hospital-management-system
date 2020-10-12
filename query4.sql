Select 	a.PersonId,c.StaffId,e.PatientId,a.firstName,a.LastName,
	e.PatientType,c.StaffType
	From Persons a
	JOIN Person_Staff b
	ON a.Personid=b.Personid
	JOIN Staff c
	ON c.Staffid=b.Staffid
	JOIN Person_Patient f
	ON a.Personid=f.Personid
	JOIN Patient e
	ON e.Patientid=f.Patientid;