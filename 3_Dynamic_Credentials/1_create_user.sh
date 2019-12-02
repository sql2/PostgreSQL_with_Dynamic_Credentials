#!/bin/bash

echo "
CREATE USER root ENCRYPTED PASSWORD 'root';

ALTER USER root WITH SUPERUSER;

SELECT usename FROM pg_user;

--CREATE DATABASE testdb;

--GRANT ALL PRIVILEGES ON DATABASE "testdb" to root;
" | docker exec -i pgsql12 psql -U postgres
 
