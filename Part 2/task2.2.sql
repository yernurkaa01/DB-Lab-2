
CREATE TABLE class_schedule (
    schedule_id   SERIAL PRIMARY KEY,
    course_id     INTEGER,
    professor_id  INTEGER,
    classroom     VARCHAR(20),
    class_date    DATE,
    start_time    TIME WITHOUT TIME ZONE,
    end_time      TIME WITHOUT TIME ZONE,
    duration      INTERVAL
);


CREATE TABLE student_records (
    record_id              SERIAL PRIMARY KEY,
    student_id             INTEGER,
    course_id              INTEGER,
    semester               VARCHAR(20),
    year                   INTEGER,
    grade                  CHAR(2),
    attendance_percentage  NUMERIC(4, 1),
    submission_timestamp   TIMESTAMP WITH TIME ZONE,
    last_updated           TIMESTAMP WITH TIME ZONE
);