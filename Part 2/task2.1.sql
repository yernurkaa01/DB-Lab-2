-- Task 2.1: University Management System
-- Database: university_main

-- Table: students
CREATE TABLE students (
    student_id       SERIAL PRIMARY KEY,
    first_name       VARCHAR(50),
    last_name        VARCHAR(50),
    email            VARCHAR(100),
    phone            CHAR(15),
    date_of_birth    DATE,
    enrollment_date  DATE,
    gpa              NUMERIC(3, 2),
    is_active        BOOLEAN,
    graduation_year  SMALLINT
);

-- Table: professors
CREATE TABLE professors (
    professor_id      SERIAL PRIMARY KEY,
    first_name        VARCHAR(50),
    last_name         VARCHAR(50),
    email             VARCHAR(100),
    office_number     VARCHAR(20),
    hire_date         DATE,
    salary            NUMERIC(12, 2),
    is_tenured        BOOLEAN,
    years_experience  INTEGER
);

-- Table: courses
CREATE TABLE courses (
    course_id       SERIAL PRIMARY KEY,
    course_code     CHAR(8),
    course_title    VARCHAR(100),
    description     TEXT,
    credits         SMALLINT,
    max_enrollment  INTEGER,
    course_fee      NUMERIC(10, 2),
    is_online       BOOLEAN,
    created_at      TIMESTAMP WITHOUT TIME ZONE
);