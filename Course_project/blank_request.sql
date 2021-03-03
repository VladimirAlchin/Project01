CREATE VIEW `blank_request` AS
SELECT * FROM course.request where request_type = '';
