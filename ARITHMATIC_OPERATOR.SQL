--1--
SELECT ENAME, ((SAL * 12) + 6000 - 2000) / 4 FROM EMP;
--2--
SELECT EMPNO, ((SAL+500)*12+ 10000) AS NEW_SAL_GRADE FROM EMP;
--3--
SELECT ename, empno, hiredate, ((sal*24)-5000) from emp;
--4--
select ename, hiredate, sal, ((SAL * 12) + 8000 - 4000) / 4  from emp ;
--5--
SELECT ENAME, (((SAL+200)*12)/6) FROM EMP;
--6--
SELECT ENAME, (((SAL+((SAL * 25)/100)*12)+5000)/5) FROM EMP;
--7--
SELECT ENAME,(((SAL+(SAL*30/100)-(SAL*10/100))*12)+2000) FROM EMP; 
