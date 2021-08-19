SELECT name , (SELECT Grade FROM notes WHERE Min_Value <= Value AND Max_Value >= Value limit 1 ) as grade_student, Value FROM students WHERE grade_student >7  
UNION 
SELECT 'NULL' , (SELECT Grade FROM notes WHERE Min_Value <= Value AND Max_Value >= Value limit 1 ) as grade_student, Value FROM students WHERE grade_student < 8 

ORDER BY grade_student DESC,  Value ASC