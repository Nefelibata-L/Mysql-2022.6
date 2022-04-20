#使用SQL99实现7种JOIN操作
#中图
SELECT e.employee_id,d.department_name,e.department_id
FROM employees e JOIN departments d
ON e.department_id=d.department_id;
#左上图
SELECT e.employee_id,d.department_name,e.department_id
FROM employees e LEFT OUTER JOIN departments d
ON e.department_id=d.department_id;
#右上图
SELECT e.employee_id,d.department_name,e.department_id
FROM employees e RIGHT OUTER JOIN departments d
ON e.department_id=d.department_id;
#左中图
SELECT e.employee_id,e.last_name,d.department_id,d.department_name
FROM employees e LEFT OUTER JOIN departments d
ON e.department_id=d.department_id
WHERE d.department_id IS NULL;
#右中图
SELECT e.employee_id,e.last_name,d.department_id,d.department_name
FROM employees e RIGHT OUTER JOIN departments d
ON e.department_id=d.department_id
WHERE e.department_id IS NULL;
#左下图
SELECT e.employee_id,e.last_name,d.department_id,d.department_name
FROM employees e LEFT OUTER JOIN departments d
ON e.department_id=d.department_id
UNION ALL
SELECT e.employee_id,e.last_name,d.department_id,d.department_name
FROM employees e RIGHT OUTER JOIN departments d
ON e.department_id=d.department_id
WHERE e.department_id IS NULL;
#右下图
SELECT e.employee_id,e.last_name,d.department_id,d.department_name
FROM employees e LEFT OUTER JOIN departments d
ON e.department_id=d.department_id
WHERE d.department_id IS NULL
UNION ALL
SELECT e.employee_id,e.last_name,d.department_id,d.department_name
FROM employees e RIGHT OUTER JOIN departments d
ON e.department_id=d.department_id
WHERE e.department_id iS NULL;