#比较运算符

#1.比较运算符

#=等于 && !=不等于
SELECT 1=1,1!=1,1=1.00,1='a',0='a','ab'='ba',0=NULL,01=NULL
FROM DUAL;

#<=>安全等于,可用于null的运算
SELECT last_name,commission_pct
FROM employees
WHERE NOT commission_pct <=> NULL；

#2.非符号比较运算符

#IS NULL &&IS NOT NULL
SELECT last_name,commission_pct
FROM employees
WHERE commission_pct IS NOT NULL;

#最小值LEAST && 最大值GREATEST 
SELECT LEAST(1,2,3,4,5),GREATEST(1,2,3,4,5)
FROM DUAL;

#两数之间的数 BETWEEN xxx and xxx
SELECT employee_id,last_name,salary
FROM employees
WHERE NOT salary BETWEEN 6000 and 8000;



