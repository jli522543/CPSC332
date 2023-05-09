CREATE TABLE Professor(
    p_ssn char(9),
    p_salary int,
    p_title varchar(10),
    p_sex enum('M','F'),
    p_name varchar(50),
    p_address varchar(100),
    p_phone char(10),
    PRIMARY KEY(p_ssn)
);

CREATE TABLE ProfessorDegrees (
    degree varchar(20),
    deg_professor char(9),
    PRIMARY KEY(degree, deg_professor),
    FOREIGN KEY(deg_professor) References Professor(p_ssn)
);

CREATE TABLE Department (
    dept_no char(4),
    dept_chair char(9),
    dept_name varchar(20),
    dept_phone char(10),
    dept_office varchar(10),
    PRIMARY KEY(dept_no, dept_chair),
    FOREIGN KEY(dept_chair) References Professor(p_ssn)
);  

CREATE TABLE Student (
    stu_cwid char(9),
    stu_Major char(4),
    stu_Name varchar(50),
    stu_Phone char(10),
    stu_Address varchar(255),
    PRIMARY KEY(stu_cwid, stu_Major),
    FOREIGN KEY(stu_major) References Department(dept_no)
);

CREATE TABLE Course(
    course_no varchar(10),
    course_dept char(4),
    course_units int,
    course_book varchar(30),
    course_title varchar(20),
    PRIMARY KEY (course_no, course_dept),
    FOREIGN KEY(course_dept) References Department(dept_no)
);


CREATE TABLE Section (
    section_no int,
    section_course varchar(10),
    section_professor char(9),
    section_start char(4), 
    section_end char(4), 
    section_room varchar(10), 
    section_seats int,
    section_days varchar(10),
    PRIMARY KEY(section_no, section_course, section_professor),
    FOREIGN KEY(section_course) References Course(course_no),
    FOREIGN KEY(section_professor) References Professor(p_ssn)
);

CREATE TABLE Enrollment(
    en_student char(9),
    en_section int,
    en_course varchar(10),
    en_professor char(9),
    en_grade enum('A+','A','A-','B+','B','B-','C+','C','C-','D+','D','D-','F'),
    PRIMARY KEY(en_student, en_section, en_course, en_professor),
    FOREIGN KEY(en_student) References Student(stu_cwid),
    FOREIGN KEY(en_section) References Section(section_no),
    FOREIGN KEY(en_course) References Section(section_course),
    FOREIGN KEY(en_professor) References Section(section_professor)
);

CREATE Table Minor(
    min_student char(9),
    min_department char(4),
    PRIMARY KEY(min_student, min_department),
    FOREIGN KEY(min_student) References Student(stu_cwid),
    FOREIGN Key(min_department) References Department(dept_no)
);
