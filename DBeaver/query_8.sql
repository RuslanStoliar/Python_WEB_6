
SELECT t.fullname ,ROUND(AVG(g.grade),3) AS average_grate
FROM teachers t
LEFT JOIN disciplines d ON d.teacher_id = t.id
LEFT JOIN grades g ON g.discipline_id = t.id 
WHERE t.id = 5

 
 