Select c.StaffId,a.firstName,a.lastName,c.Certification||'  '||c.StaffType
       "Type",e.AppointmentNo,e.AppointmentDate	
	FROM Persons a 
	JOIN Person_Staff b
	ON a.Personid=b.Personid
	JOIN Staff c 
	ON c.Staffid=b.Staffid
	JOIN Appointment e
	ON c.Staffid=e.appointedto
	Where Appointmentdate in('17/jan/2015');