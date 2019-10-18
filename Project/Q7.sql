CREATE FUNCTION isNutFree(coneNumber int)
	RETURNS varchar(20) deterministic
    RETURN(select if((select coneId
					from cone, scoopsInCone, Scoop
					where cone.id = scoopsincone.coneid and scoop.id = scoopsInCone.scoopId
					and (cone.conetype = 'Waffle'or scoop.name = 'Coconut'or scoop.name = 'Macadamia')
					and coneId = coneNumber), 'FALSE', 'TRUE'));
	
	