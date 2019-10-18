select name
from Scoop
where costInCents = (select max(costInCents) from Scoop);
