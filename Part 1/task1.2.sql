-- 1. student_data
CREATE TABLESPACE student_data
    LOCATION '/Users/Shared/pg_data/students';

-- 2. course_data
CREATE TABLESPACE course_data
    OWNER CURRENT_USER
    LOCATION '/Users/Shared/pg_data/courses';

-- 3. university_distributed
CREATE DATABASE university_distributed
    TEMPLATE = template0
    TABLESPACE = student_data
    ENCODING = 'LATIN9'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C';