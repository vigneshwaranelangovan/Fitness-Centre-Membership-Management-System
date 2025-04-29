SELECT 
    m.name AS member_name,
    c.class_name,
    ca.attendance_date
FROM 
    ClassAttendance ca
JOIN Members m ON ca.member_id = m.member_id
JOIN Classes c ON ca.class_id = c.class_id
ORDER BY 
    ca.attendance_date DESC;
