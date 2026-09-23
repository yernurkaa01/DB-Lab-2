ALTER TABLE professors ADD COLUMN department_id INTEGER;
ALTER TABLE students ADD COLUMN advisor_id INTEGER;
ALTER TABLE courses ADD COLUMN department_id INTEGER;

CREATE TABLE grade_scale (
    grade_id        SERIAL PRIMARY KEY,
    letter_grade    CHAR(2),
    min_percentage  NUMERIC(4, 1),
    max_percentage  NUMERIC(4, 1),
    gpa_points      NUMERIC(3, 2)
);

CREATE TABLE semester_calendar (
    semester_id            SERIAL PRIMARY KEY,
    semester_name          VARCHAR(20),
    academic_year          INTEGER,
    start_date             DATE,
    end_date               DATE,
    registration_deadline  TIMESTAMP WITH TIME ZONE,
    is_current             BOOLEAN
);