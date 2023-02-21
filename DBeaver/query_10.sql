
SELECT t.fullname , s.fullname , d.name

FROM grades g
INNER JOIN disciplines d ON g.discipline_id  = d.id 
INNER JOIN students s ON g.student_id = s.id
INNER JOIN teachers  t ON d.teacher_id  = t.id

WHERE t.id = 3 AND s.id = 8
GROUP BY d.name;