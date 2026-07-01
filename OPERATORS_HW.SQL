--1----------------------------- 

-- SELECT * FROM EMP
-- WHERE JOB='CLERK' AND SAL<1500;

---2--------------------------------

-- SELECT ENAME, HIREDATE FROM EMP
-- WHERE JOB='MANAGER' AND DEPTNO=30;

----3------------------------------

-- SELECT *, (sal*12) as annulasal FROM EMP
-- WHERE (DEPTNO=30 AND JOB='SALESMAN' AND (SAL*12)>14000);
-----4-----------------------------

-- SELECT * FROM EMP
-- WHERE JOB='ANALYST' OR DEPTNO=30;

------5----------------------------

-- SELECT ENAME FROM EMP
-- WHERE SAL<1100 AND JOB='CLERK';

-------6---------------------------

-- SELECT ENAME, SAL, (SAL*12) AS ANNUALSAL, DEPTNO FROM EMP
-- WHERE DEPTNO=20 AND SAL>1100 AND (SAL*12)>12000;

--------7--------------------------

-- SELECT EMPNO , ENAME FROM EMP
-- WHERE JOB='MANAGER' AND DEPTNO=20;

---------8-------------------------

-- SELECT * FROM EMP 
-- WHERE DEPTNO = 20 OR DEPTNO = 30;

-----------9------------------------

-- SELECT * FROM EMP
-- WHERE JOB ='ANALYST' AND DEPTNO =10;

------------10-------------------------

-- SELECT * FROM EMP 
-- WHERE JOB='PRESIDENT' AND SAL = 4000;

-------------11--------------------------

-- SELECT ENAME, DEPTNO, JOB FROM EMP
-- WHERE JOB='CLERK' AND (DEPTNO=10 OR DEPTNO=20);

-------------12-----------------------------

-- SELECT * FROM EMP
-- WHERE (JOB = 'CLERK' OR JOB='MANAGER') AND DEPTNO=10;

-------------13-----------------------------

-- SELECT ENAME FROM EMP
-- WHERE DEPTNO=10 OR DEPTNO=20 OR DEPTNO=30 OR DEPTNO=40;

------------14-----------------------------

-- SELECT * FROM EMP
-- WHERE EMPNO=7902 OR EMPNO=7839;

-----------15--------------------------------

SELECT * FROM EMP
WHERE JOB='MANAGER' OR JOB='SALESMAN' OR JOB='CLERK';

-----------16--------------------------------

SELECT ENAME,hiredate FROM EMP
WHERE HIREDATE>'31-DEC-81' AND HIREDATE<'31-DEC-87';

------------17--------------------------------

-- SELECT * FROM EMP
-- WHERE SAL>1250 AND SAL<3000;

------------18--------------------------------

-- SELECT ENAME FROM EMP
-- WHERE HIREDATE > '31-DEC-81' AND (DEPTNO=10 OR DEPTNO=30);

------------19--------------------------------

-- SELECT ENAME,JOB, (SAL*12) AS ANNUALSAL, DEPTNO
-- FROM EMP
-- WHERE (JOB='MANAGER' OR JOB='CLERK') AND (DEPTNO=10 OR DEPTNO=30);

------------20---------------------------------

-- SELECT E.*, (SAL*12) AS ANNUALSAL
-- FROM EMP E
-- WHERE (SAL>1000 AND SAL<4000) AND (SAL*12)>15000;

-----------------END--------------------------------
