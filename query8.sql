Select a.PersonId, c.PatientId, a.firstName,a.lastName,c.PatientType Type,e.AppointmentDate App_date
	FROM Persons a 
	JOIN Person_Patient b
	ON a.Personid=b.Personid
	JOIN Patient c 
	ON c.PatientId=b.PatientId
	JOIN Person_Appointment d
	ON d.PersonId=a.PersonId
	JOIN Appointment e
	ON e.Appointmentno=d.Appointmentno
	Where AppointmentDate='17/feb/2016';