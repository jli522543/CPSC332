
# Professor Information ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
INSERT INTO Professor (p_ssn, p_salary, p_title, p_sex, p_name, p_address, p_phone)
VALUES ('112233344', '123444', 'Dr', 'M', 'Tuffy Brown', 'CSU, Fullerton 800 N. State College Blvd. Fullerton, CA 92831', '7184324324');

INSERT INTO Professor (p_ssn, p_salary, p_title, p_sex, p_name, p_address, p_phone)
VALUES ('556677888', '567888', 'Dr', 'M', 'Tuffy Smith', 'CSU, Fullerton 800 N. State College Blvd. Fullerton, CA 92831', '7142324324');

INSERT INTO Professor (p_ssn, p_salary, p_title, p_sex, p_name, p_address, p_phone)
VALUES ('999900000', '999999', 'Dr', 'F', 'Carla CSUF', 'CSU, Fullerton 800 N. State College Blvd. Fullerton, CA 92831', '6261234589');

# Department Information ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
INSERT INTO Department (dept_no, dept_chair, dept_name, dept_phone, dept_office)
VALUES ('6789', '999900000', 'Computer Science', '6786789900', 'CS 500');

INSERT INTO Department (dept_no, dept_chair, dept_name, dept_phone, dept_office)
VALUES ('1234', '112233344', 'Engineering', '1231231234', 'ECS 600');

# Course Information ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
INSERT INTO Course (course_no, course_dept, course_units, course_book, course_title, course_prereq)
VALUES ('458', '6789', '3', 'Intro to Malware Analysis', 'Malware_Analysis', 'CPSC 351');

INSERT INTO Course (course_no, course_dept, course_units, course_book, course_title, course_prereq)
VALUES ('351', '6789', '3', 'Intro to OS', 'Operating_Systems', 'CPSC 131');

INSERT INTO Course (course_no, course_dept, course_units, course_book, course_title, course_prereq)
VALUES ('131', '6789', '3', 'Intro to Data Structures', 'Data_Structures', '');

INSERT INTO Course (course_no, course_dept, course_units, course_book, course_title, course_prereq)
VALUES ('150', '1234', '3', 'Its not rocket surgery its engineering', 'Rocket engineering', 'EGGN 140');

# Student Information ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
INSERT INTO Student (stu_cwid, stu_Major, stu_Name, stu_Phone, stu_Address)
VALUES ('123456789', '6789', 'Tuffy Titan', '0987654321', 'CSU, Fullerton 800 N. State College Blvd. Fullerton, CA 92831');

INSERT INTO Student (stu_cwid, stu_Major, stu_Name, stu_Phone, stu_Address)
VALUES ('135791357', '1234', 'Troy Angeles', '9753197531', 'USC, 135 S Trojan Street, Los Angeles, CA 90048');

INSERT INTO Student (stu_cwid, stu_Major, stu_Name, stu_Phone, stu_Address)
VALUES ('024680246', '6789', 'Briana Angeles', '8642086420', 'UCLA, 246 W Bruin Street, Los Angeles, CA 90274');

INSERT INTO Student (stu_cwid, stu_Major, stu_Name, stu_Phone, stu_Address)
VALUES ('101010101', '1234', 'Antonio Irvine', '1011011001', 'UCI, 101 N Anteater Street, Irvine, CA 92602');

INSERT INTO Student (stu_cwid, stu_Major, stu_Name, stu_Phone, stu_Address)
VALUES ('202322023', '1234', 'Homer Fullerton', '2022022023', 'Fullerton College, 2023 S Chapman Avenue, Fullerton, CA 92831');

INSERT INTO Student (stu_cwid, stu_Major, stu_Name, stu_Phone, stu_Address)
VALUES ('987654321', '1234', 'Timothy Titan', '1234567890', 'CSU, Fullerton 800 N. State College Blvd. Fullerton, CA 92831');

INSERT INTO Student (stu_cwid, stu_Major, stu_Name, stu_Phone, stu_Address)
VALUES ('112233445', '1234', 'Travis Titan', '9998887766', 'CSU, Fullerton 800 N. State College Blvd. Fullerton, CA 92831');

INSERT INTO Student (stu_cwid, stu_Major, stu_Name, stu_Phone, stu_Address)
VALUES ('998877665', '1234', 'Fred Titan', '1112223344', 'CSU, Fullerton 800 N. State College Blvd. Fullerton, CA 92831');

# Section Information ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
INSERT INTO Section (section_no, section_course, section_professor, section_start, section_end, section_room, section_seats, section_days)
VALUES ('1', '458', '999900000', '1800', '2000', 'CS 300', '40', 'MW');

INSERT INTO Section (section_no, section_course, section_professor, section_start, section_end, section_room, section_seats, section_days)
VALUES ('2', '351', '556677888', '1900', '2200', 'CS 200', '40', 'TR');

INSERT INTO Section (section_no, section_course, section_professor, section_start, section_end, section_room, section_seats, section_days)
VALUES ('3', '131', '112233344', '0700', '1000', 'CS 400', '40', 'F');

INSERT INTO Section (section_no, section_course, section_professor, section_start, section_end, section_room, section_seats, section_days)
VALUES ('4', '150', '112233344', '1100', '1300', 'ECS 100', '40', 'Sa');

INSERT INTO Section (section_no, section_course, section_professor, section_start, section_end, section_room, section_seats, section_days)
VALUES ('5', '458', '999900000', '1100', '1300', 'CS 101', '40', 'TR');

INSERT INTO Section (section_no, section_course, section_professor, section_start, section_end, section_room, section_seats, section_days)
VALUES ('6', '351', '556677888', '1600', '1800', 'CS 111', '80', 'MW');


# Enrollemnt Information ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------#
INSERT INTO Enrollment (en_student, en_section, en_course, en_professor, en_grade)
VALUES ('123456789', '1', '458', '999900000', 'A+');

INSERT INTO Enrollment (en_student, en_section, en_course, en_professor, en_grade)
VALUES ('135791357', '2', '458', '556677888', 'A');

INSERT INTO Enrollment (en_student, en_section, en_course, en_professor, en_grade)
VALUES ('024680246', '3', '131', '112233344', 'A-');

INSERT INTO Enrollment (en_student, en_section, en_course, en_professor, en_grade)
VALUES ('101010101', '4', '150', '112233344', 'B+');

INSERT INTO Enrollment (en_student, en_section, en_course, en_professor, en_grade)
VALUES ('202322023', '5', '458', '999900000', 'B');

INSERT INTO Enrollment (en_student, en_section, en_course, en_professor, en_grade)
VALUES ('987654321', '6', '351', '556677888', 'B');

INSERT INTO Enrollment (en_student, en_section, en_course, en_professor, en_grade)
VALUES ('112233445', '1', '458', '999900000', 'C+');

INSERT INTO Enrollment (en_student, en_section, en_course, en_professor, en_grade)
VALUES ('998877665', '2', '351', '556677888', 'C');

INSERT INTO Enrollment (en_student, en_section, en_course, en_professor, en_grade)
VALUES ('123456789', '3', '131', '112233344', 'C-');

INSERT INTO Enrollment (en_student, en_section, en_course, en_professor, en_grade)
VALUES ('135791357', '4', '150', '112233344', 'D+');

INSERT INTO Enrollment (en_student, en_section, en_course, en_professor, en_grade)
VALUES ('024680246', '5', '351', '999900000', 'D');

INSERT INTO Enrollment (en_student, en_section, en_course, en_professor, en_grade)
VALUES ('101010101', '6', '351', '556677888', 'D-');

INSERT INTO Enrollment (en_student, en_section, en_course, en_professor, en_grade)
VALUES ('202322023', '1', '458', '999900000', 'F');

INSERT INTO Enrollment (en_student, en_section, en_course, en_professor, en_grade)
VALUES ('987654321', '2', '458', '556677888', 'A+');

INSERT INTO Enrollment (en_student, en_section, en_course, en_professor, en_grade)
VALUES ('112233445', '3', '131', '112233344', 'A');

INSERT INTO Enrollment (en_student, en_section, en_course, en_professor, en_grade)
VALUES ('998877665', '4', '150', '112233344', 'A-');

INSERT INTO Enrollment (en_student, en_section, en_course, en_professor, en_grade)
VALUES ('123456789', '5', '351', '999900000', 'B+');

INSERT INTO Enrollment (en_student, en_section, en_course, en_professor, en_grade)
VALUES ('135791357', '6', '351', '556677888', 'B');

INSERT INTO Enrollment (en_student, en_section, en_course, en_professor, en_grade)
VALUES ('024680246', '1', '458', '999900000', 'B-');

INSERT INTO Enrollment (en_student, en_section, en_course, en_professor, en_grade)
VALUES ('101010101', '2', '458', '556677888', 'C+');
