#运算符练习
#排序分页58~67
#8.0新特性70~73

#首先查询表结构
DESCRIBE employees;
#1.选择工资不在5000到12000之间的员工
SELECT last_name
FROM employees
#WHERE salary NOT BETWEEN 5000 AND 12000;
#WHERE salary <5000 OR salary >12000;
WHERE NOT (salary >= 5000 AND salary<= 12000);

#2.选择在二十号部门或50号部门工作的员工
SELECT last_name
FROM employees
#WHERE department_id IN (20,50);
WHERE department_id=20 OR department_id=50;

#3.选择在公司中没有管理者的员工姓名及job_id
SELECT last_name,job_id
FROM employees
#WHERE manager_id<=>NULL;
WHERE manager_id IS NULL;

#4.选择公司中有奖金的员工姓名，工资和奖金级别
SELECT last_name,salary,commission_pct
FROM employees
#WHERE NOT commission_pct <=> NULL;
WHERE commission_pct IS NOT NULL;

#5.选择员工姓名的第三个字母是a的员工姓名
SELECT last_name
FROM employees
WHERE last_name LIKE '__a%';

#6.选择姓名中有字母a和k的员工姓名
SELECT last_name
FROM employees
#WHERE last_name LIKE '%a%k%' OR last_name LIKE '%k%a%';
WHERE last_name LIKE '%a%' AND last_name LIKE '%k%';

#7.选择出表employees表中first_name以’e‘结尾的员工信息
SELECT *
FROM employees
WHERE first_name LIKE '%e';

#8.选择出表employees部门编号在80-100之间的姓名，工种
SELECT last_name,job_id
FROM employees
WHERE employee_id BETWEEN 80 AND 100;

#9.显示出表employees的manager_id是100，101，110的员工姓名，工资，管理者id
SELECT last_name,salary,manager_id
FROM employees
#WHERE manager_id in(100,101,110);
WHERE manager_id=100 OR manager_id=101 OR manager_id=110;

#排序
SELECT last_name,salary,department_id
FROM employees
#按salary排序，在salary相同的情况下按department-id排序
ORDER BY salary ASC,department_id ASC;

#分页
SELECT last_name,employee_id
FROM employees
LIMIT 10,20;

#MYSQL8.0新特性
SELECT last_name,employee_id
FROM employees
LIMIT 20 OFFSET 10;