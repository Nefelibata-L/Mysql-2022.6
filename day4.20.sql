SELECT 1+1,2*3
#基本sql语句

#查询 运行该字段
FROM DUAL;
#从 DUAL中（DUAL 是一个伪表关键字）

SELECT * FROM employees;
#查询 所有字段 从 countries中;

SELECT employee_id,last_name,department_id
#查询 employee_id和last_name和department_id
FROM employees;
#从 employees中

SELECT employee_id AS emp_id
#查询 employee_id并改名
FROM employees;
#从 employees中

SELECT DISTINCT department_id
#查询 特定字段并去除重复行
FROM employees;

SELECT employee_id,salary "月工资",salary*(1+IFNULL(commission_pct,0))*12 '年工资'
#查询  employee_id与salary，并计算出年工资，错误：commission_pct为空值计算结果也为空
FROM employees;

SELECT *FROM `ORDER`;
#查询表 表名为关键字则需要加``

SELECT "尚硅谷",employee_id,last_name
FROM employees;

DESCRIBE employees;

SELECT *#查询 所有字段
FROM employees#在employees表中
WHERE last_name='king';#添加筛选字段