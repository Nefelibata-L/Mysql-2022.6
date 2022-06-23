#流程控制函数
#IF
#区分高低工资
SELECT last_name,salary,IF(salary>=6000,'高工资','低工资')
FROM employees;
#计算年工资
SELECT last_name,commission_pct,IF(commission_pct IS NULL,0,commission_pct),
salary*12*(1+IF(commission_pct IS NULL,0,commission_pct))
FROM employees;
#IFNULL
SELECT last_name,commission_pct,IFNULL(commission_pct,0)
FROM employees;
#CASE WHEN
SELECT last_name,salary,
CASE WHEN salary >= 20000 THEN '百鬼之主'
     WHEN salary >= 15000 THEN '大阴阳师'
     WHEN salary >= 8000 THEN '阴阳名仕'
     ELSE '痒痒鼠'
     END 'details'
FROM employees;

#加密解密函数
#PASSWORD，不可逆，在8.0中弃用
SELECT PASSWORD('Mysql')
FROM DUAL;
#MD5
SELECT MD5('Mysql')
FROM DUAL;
#SHA,与MD5都不可逆，比MD5更安全
SELECT SHA('Mysql')
FROM DUAL;
#ENCODE,DECODE，加密与解密，可逆，8.0中弃用
SELECT ENCODE('atguigu','Mysql')
FROM DUAL;
SELECT DECODE('ENCODE('atguigu','Mysql')','Mysql')
FROM DUAL

#其他函数
#返回当前数据库使用的字符集
SELECT CHARSET('尚硅谷'),COLLATION('尚硅谷')
FROM DUAL;

#其他函数
#保留小数位，如果n小于等于0，只保留整数
SELECT FORMAT(123.456,2)
FROM DUAL;
#进制转换
SELECT CONV(123,10,2)
FROM DUAL;
#ip转换整数
SELECT INET_ATON('192.168.1.100')
FROM DUAL;
#整数还原ip
SELECT INET_NTOA('3232235876')
FROM DUAL;
#重复执行n次表达式
SELECT BENCHMARK(100000,MD5('Mysql'))
FROM DUAL;
#CONVERT转换字符集
SELECT 
CHARSET('atguigu'),
CHARSET(CONVERT('atguigu' USING 'utf8mb3'))
FROM DUAL;