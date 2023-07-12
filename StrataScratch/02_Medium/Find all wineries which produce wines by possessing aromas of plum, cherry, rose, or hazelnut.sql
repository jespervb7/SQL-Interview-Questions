SELECT winery
FROM winemag_p1
WHERE 
description LIKE "%plum%" OR
description LIKE "%cherry%" OR
description LIKE "%rose%" OR 
description LIKE "%hazelnut%"
GROUP BY winery
ORDER BY winery;