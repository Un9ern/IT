CREATE VIEW v_my_grades AS
SELECT 
    gr.grade_id,
    s.student_id,
    d.discipline_name,
    gr.grade,
    gr.grade_date
FROM grades gr
JOIN students s ON gr.student_id = s.student_id
JOIN disciplines d ON gr.discipline_id = d.discipline_id;

GRANT SELECT ON v_my_grades TO student_role;