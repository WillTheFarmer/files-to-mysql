CREATE USER 'files_to_mysql'@'localhost' IDENTIFIED BY 'Just4TheData';
-- Python module CALLS Stored Procedures for log processing & Stored Procedure for error logging
GRANT EXECUTE ON PROCEDURE parse_access_apache TO `files_to_mysql`@`localhost`;
GRANT EXECUTE ON PROCEDURE import_access_apache TO `files_to_mysql`@`localhost`;
GRANT EXECUTE ON PROCEDURE parse_error_apache TO `files_to_mysql`@`localhost`;
GRANT EXECUTE ON PROCEDURE import_error_apache TO `files_to_mysql`@`localhost`;
GRANT EXECUTE ON PROCEDURE parse_access_nginx TO `files_to_mysql`@`localhost`;
GRANT EXECUTE ON PROCEDURE import_access_nginx TO `files_to_mysql`@`localhost`;
GRANT EXECUTE ON PROCEDURE parse_error_nginx TO `files_to_mysql`@`localhost`;
GRANT EXECUTE ON PROCEDURE import_error_nginx TO `files_to_mysql`@`localhost`;
GRANT EXECUTE ON PROCEDURE normalize_useragent TO `files_to_mysql`@`localhost`;
GRANT EXECUTE ON PROCEDURE normalize_client TO `files_to_mysql`@`localhost`;
-- Python module CALLS Stored Procedures for error logging
GRANT EXECUTE ON PROCEDURE messageLoad TO `files_to_mysql`@`localhost`;
-- Python module SELECTS Stored Functions for log processing
GRANT EXECUTE ON FUNCTION importDeviceID TO `files_to_mysql`@`localhost`;
GRANT EXECUTE ON FUNCTION importClientID TO `files_to_mysql`@`localhost`;
GRANT EXECUTE ON FUNCTION importLoadID TO `files_to_mysql`@`localhost`;
GRANT EXECUTE ON FUNCTION importLoadProcessID TO `files_to_mysql`@`localhost`;
GRANT EXECUTE ON FUNCTION importFileExists TO `files_to_mysql`@`localhost`;
GRANT EXECUTE ON FUNCTION importFileID TO `files_to_mysql`@`localhost`;
-- Python module INSERTS into TABLES executing LOAD DATA LOCAL INFILE for log processing
GRANT INSERT ON load_access_combined TO `files_to_mysql`@`localhost`;
GRANT INSERT ON load_access_csv TO `files_to_mysql`@`localhost`;
GRANT INSERT ON load_access_vhost TO `files_to_mysql`@`localhost`;
GRANT INSERT ON load_access_nginx_default TO `files_to_mysql`@`localhost`;
GRANT INSERT ON load_error_apache TO `files_to_mysql`@`localhost`;
GRANT INSERT ON load_error_nginx TO `files_to_mysql`@`localhost`;
-- Python module issues SELECT and UPDATE statements on TABLES due to converting parameters.
-- Only reason TABLE direct access is number of parameters required for Stored Procedure.
GRANT SELECT,UPDATE ON access_log_useragent TO `files_to_mysql`@`localhost`;
GRANT SELECT,UPDATE ON import_load TO `files_to_mysql`@`localhost`;
GRANT SELECT,UPDATE ON log_client TO `files_to_mysql`@`localhost`;
