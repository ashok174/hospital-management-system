Select a.PersonId,a.firstName,a.lastName, c.addressid, c.country,c.province,c.City,c.street,c.streetNo,e.patientType
	FROM Persons a 
	JOIN Person_address_fax b
	ON a.Personid=b.Personid
	JOIN address c 
	ON b.addressid=c.addressid
        join person_patient f
        ON a.Personid=f.Personid
        join patient e
        on f.patientid=e.patientid;