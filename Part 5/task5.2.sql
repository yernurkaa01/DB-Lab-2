ALTER DATABASE university_test IS_TEMPLATE = false;
DROP DATABASE IF EXISTS university_test;

DROP DATABASE IF EXISTS university_distributed;

SELECT pg_terminate_backend(pid)
FROM pg_stat_activity
WHERE datname = 'university_main'
  AND pid <> pg_backend_pid();

CREATE DATABASE university_backup
    TEMPLATE = university_main;