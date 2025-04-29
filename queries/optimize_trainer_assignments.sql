SELECT 
    t.name AS trainer_name,
    c.class_name,
    c.schedule_time
FROM 
    Trainers t
JOIN Classes c ON t.trainer_id = c.trainer_id
ORDER BY 
    c.schedule_time;
