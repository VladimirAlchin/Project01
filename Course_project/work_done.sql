CREATE VIEW `work_done` AS 
SELECT 
    request_work.id,
    request_work.status_work,
    request.request_type
FROM
    course.request_work
     inner JOIN
    request ON request.id = request_work.request_id
where 
	request_work.status_work = 1 
