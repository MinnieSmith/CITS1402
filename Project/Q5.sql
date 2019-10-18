CREATE FUNCTION numFlavours(coneNumber INT)
RETURNS integer deterministic
RETURN(select count(coneId)
from (select distinct scoopId, coneId
from scoopsInCone) as A 
where coneid = coneNumber);

