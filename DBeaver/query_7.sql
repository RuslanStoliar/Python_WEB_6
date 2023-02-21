SELECT s.fullname,  d.name, g.grade,gr.name AS name_group
FROM grades g 
JOIN disciplines d ON d.id  = g.discipline_id 
JOIN students s ON s.id = g.student_id
JOIN [groups] gr ON gr.id = 2

WHERE d.id = 3
ORDER BY g.grade


 

