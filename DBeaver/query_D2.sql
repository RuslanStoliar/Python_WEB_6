SELECT gr.name AS group_name, s.fullname  AS student, d.name AS discipline_name,
      g.grade AS grade, g.date_of  AS last_lesson_date
FROM grades g
INNER JOIN students s ON g.student_id = s.id
INNER JOIN groups gr ON s.group_id = gr.id
INNER JOIN disciplines d  ON d.id = g.discipline_id 
WHERE gr.id = 2
AND d.id = 1
AND date_of in (SELECT MAX(g.date_of)
						 FROM grades g
                         INNER JOIN students s ON g.student_id = s.id
                         INNER JOIN groups gr ON s.group_id = gr.id
                         INNER JOIN disciplines d2  ON d2.id = g.discipline_id 
                         WHERE gr.id = 2 AND d2.id = 1)
