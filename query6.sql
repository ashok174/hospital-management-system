Select b.AppointmentNo,a.WardType
	From Ward a
	JOIN Appointment b
	ON a.WardID=b.WardID
	where Wardtype='emergency';