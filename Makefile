pg_connect:
	psql test_database

pg_create_database:
	psql postgres -c "CREATE DATABASE test_database"

pg_create_tables:
	psql test_database -f create-test-table.sql

pg_insert_test_data:
	psql test_database -f insert-test-data.sql

mysql_connect:
	mysql -u root test_database

mysql_create_database:
	mysql -u root -e "CREATE DATABASE test_database"

mysql_create_tables:
	mysql -u root test_database < create-test-table.sql

mysql_insert_test_data:
	mysql -u root test_database < insert-test-data.sql
