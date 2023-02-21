SELECT d.name , s.fullname , MAX(g.grade) AS average_grade
From grades g
JOIN students s ON s.id = g.student_id 
Join disciplines d ON d.id = g.discipline_id 
WHERE d.id = 4
GROUP  BY s.fullname 
ORDER BY average_grade DESC 
LIMIT 1;