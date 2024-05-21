connect:
	psql test_database

create_database:
	psql postgres -c "CREATE DATABASE test_database"

create_tables:
	psql test_database -f create-test-table.sql

