SELECT t.fullname AS teacher_name , s.fullname AS name_student , ROUND(AVG(g.grade),2) AS average_score, d.name AS name_discipline

FROM grades g
INNER JOIN disciplines d ON g.discipline_id  = d.id 
INNER JOIN students s ON g.student_id = s.id
INNER JOIN teachers  t ON d.teacher_id  = t.id

WHERE t.id = 4 AND s.id = 25
GROUP BY d.name;