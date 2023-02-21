SELECT s.fullname 
FROM groups g 
JOIN students s  ON g.id  = s.group_id 
WHERE  g.id = 3;