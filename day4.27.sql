#排序与分页练习3~19
#多表连接20~33

#排序与分页
DESCRIBE employees;
#1. 查询员工的姓名和部门号和年薪，按年薪降序,按姓名升序显示
SELECT last_name,department_id,salary*12*(1+IFNULL(commission_pct,0)) year_salary
FROM employees
ORDER BY year_salary DESC,last_name ASC;
#2. 选择工资不在 8000 到 17000的员工的姓名和工资，按工资降序，显示第21到40位置的数据
SELECT last_name,salary
FROM employees
ORDER BY salary DESC
LIMIT 20,20;
#3. 查询邮箱中包含 e 的员工信息，并先按邮箱的字节数降序，再按部门号升序
SELECT *
FROM employees
WHERE email LIKE '%e%'
ORDER BY LENGTH(email) DESC,department_id ASC;

#等值连接VS非等值连接 ；自连接VS非自连接
#非等值连接
SELECT emp.last_name, emp.department_id, jo.grade_level
FROM employees emp JOIN job_grades jo
WHERE emp.salary BETWEEN jo.lowest_sal and jo.highest_sal;
#自连接
SELECT emp.employee_id, emp.last_name, ma.employee_id, ma.last_name
FROM employees emp JOIN employees ma
WHERE emp.manager_id = ma.employee_id;
#外连接
SELECT emp.last_name, emp.department_id, dep.department_name
FROM employees emp LEFT OUTER JOIN departments dep
ON emp.department_id = dep.department_id;