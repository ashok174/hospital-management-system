Select c.StaffId,a.firstName,a.lastName,c.certification||'  '||c.Stafftype
	"Type",e.Appointmentno App_No,e.Appointmentdate App_date,c.StaffFee
	FROM Persons a
	JOIN Person_Staff b
	ON a.PersonId=b.PersonId
	JOIN Staff c
	ON c.StaffId=b.StaffId
	JOIN Appointment e
	ON c.StaffId=e.AppointedTo
	Where StaffType='doctor' and Certification='certified';