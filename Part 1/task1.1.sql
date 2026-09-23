

-- 1. university_main
CREATE DATABASE university_main
    TEMPLATE = template0
    ENCODING = 'UTF8';

ALTER DATABASE university_main OWNER TO CURRENT_USER;

-- 2. university_archive
CREATE DATABASE university_archive
    CONNECTION LIMIT = 50
    TEMPLATE = template0;

-- 3. university_test
CREATE DATABASE university_test
    IS_TEMPLATE = true
    CONNECTION LIMIT = 10;