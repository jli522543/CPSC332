SELECT C.course_title,
    SE.section_room,
    SE.section_days,
    SE.section_start,
    SE.section_end
FROM Course C,
    Section SE,
    Professor P
WHERE P.p_ssn = '999900000'
    AND SE.section_professor = P.p_ssn
    AND SE.section_course = C.course_no;

SELECT E.en_grade,
    COUNT(*) AS num_of_students
FROM Course C,
    Section SE,
    Enrollment E
WHERE C.course_no = 'CPSC458'
    AND SE.section_no = 1
    AND SE.section_course = C.course_no
    AND E.en_course = C.course_no
GROUP BY E.en_grade;

SELECT SE.section_no,
    E.en_student, COUNT(*) As num_of_students,
    SE.section_room,
    SE.section_start,
    SE.section_end
FROM Section SE,
    Enrollment E,
    Course C
WHERE C.course_no = 'CPSC458'
    AND SE.section_course = C.course_no
    AND E.en_section = SE.section_no
GROUP BY E.en_section;

SELECT C.course_title,
    E.en_grade
FROM Course C,
    Enrollment E,
    Section SE
WHERE E.en_student = '123456789'
    AND SE.section_no = E.en_section
    AND C.course_no = SE.section_course
GROUP BY C.course_title;