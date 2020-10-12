Select a.FirstName F_name,a.lastName L_name,e.PatientId,c.StaffId,c.Certification||''||c.StaffType
	"Type",l.Appointmentno App_No,l.AppointmentCharge App_charge,l.Treatment,h.Treatmentcharge trt_charge,(l.AppointmentCharge + h.Treatmentcharge) as T_Charge
	From Persons a
	JOIN Person_Staff b
	ON a.Personid=b.Personid
	JOIN Staff c
	ON c.Staffid=b.Staffid
	JOIN Person_Patient f
	ON a.Personid=f.Personid
	JOIN Patient e
	ON e.Patientid=f.Patientid
	JOIN Person_Appointment k
	ON a.Personid=k.Personid
	JOIN Appointment l
	ON k.Appointmentno=l.Appointmentno
	JOIN Treatment h
	ON l.Treatment=h.Treatment
	Where StaffType='doctor' and certification='certified';