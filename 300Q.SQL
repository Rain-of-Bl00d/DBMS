--HW3 1 . Display all the employees whose name start with P
SELECT * FROM EMP
WHERE ENAME LIKE 'P%';

--2. Display all the analyst and clerks in department 10 and 20
SELECT * FROM EMP
WHERE JOB IN ('ANALYST','CLERK')
AND DEPTNO IN (10,20);

--3. List all the department names which are having blank space in their location
--and having DNAME with at least two EE's
SELECT * FROM DEPT
WHERE LOC LIKE ' '
AND DNAME LIKE '%EE%EE%';

--4. Display all the employees who are having at least two AA's in their job description
--and salary in the range 1200 to 2800 in dept 10,20,30
SELECT * FROM EMP
WHERE JOB LIKE '%AA%AA%'
AND SAL BETWEEN 1200 AND 2800
AND DEPTNO IN (10,20,30);

--5. Display all the employees who aren't having any reporting manager with number ending
--with 8 and not working as MANAGER or SALESMAN in dept 30
SELECT * FROM EMP
WHERE MGR LIKE '%8'
AND JOB NOT IN ('MANAGER','SALESMAN')
AND DEPTNO = 30;

--6. List all the employees who are not getting any commission with their designation
--neither CLERK nor MANAGER and joined in year 81 and getting salary > 1500
SELECT * FROM EMP
WHERE COMM IS NULL
AND JOB NOT IN ('CLERK','MANAGER')
AND HIREDATE BETWEEN('01-JAN-81') AND ('31-DEC-81')
AND SAL > 1500;

--7. List all the employees whose name is having at least FIVE characters and joined
--in year 80 or 81 and having a reporting manager with salary in range 800 to 2000
--in dept 30 or 40
SELECT E.*
FROM EMP E
WHERE ENAME LIKE '_____' 
AND HIREDATE BETWEEN '01-JAN-80' AND '31-DEC-81'
AND MGR IS NOT NULL
AND SAL BETWEEN 800 AND 2000;

--8. Display all the employees whose name is having exactly 5 characters
--and having vowel as middle character
SELECT * FROM EMP
WHERE LENGTH(ENAME)=5
AND (
       ENAME LIKE '__A__'
    OR ENAME LIKE '__E__'
    OR ENAME LIKE '__I__'
    OR ENAME LIKE '__O__'
    OR ENAME LIKE '__U__'
);

--9. Display all the products whose name is having 2 consecutive underscores
SELECT *
FROM EMP
WHERE ENAME LIKE '%\_\_%';

--10. Display all the employees whose name starts with S and does not end with vowel
SELECT * FROM EMP
WHERE ENAME LIKE 'S%'
AND (ENAME NOT LIKE '%A'
OR ENAME NOT LIKE '%E'
OR ENAME NOT LIKE '%I'
OR ENAME NOT LIKE '%O'
OR ENAME NOT LIKE '%U');

--11. Display all the products whose name is having single quote as character
SELECT * FROM PRODUCT
WHERE PNAME LIKE '%/''/%';

--12. Display all the employees who is working as manager for only one employee
SELECT ENAME FROM EMP
WHERE ;
--13. List all the employees where reporting manager ID is ending with number 8
SELECT * FROM EMP
WHERE MGR LIKE '%8';

--14. List all the employees whose job is SALESMAN and salary ranges between 1500 to 3000
SELECT * FROM EMP
WHERE JOB='SALESMAN'
AND SAL BETWEEN 1500 AND 3000;

--15. List all the employees who are working as MANAGER and SALESMAN
--in dept 20 & 30 with salary range 1000 to 3000
SELECT * FROM EMP
WHERE JOB IN ('MANAGER','SALESMAN')
AND DEPTNO IN (20,30)
AND SAL BETWEEN 1000 AND 3000;

--16. List all the employees whose salary is in range 1000 to 2000
--in dept 10,20,30 except all clerks
SELECT * FROM EMP
WHERE SAL BETWEEN 1000 AND 2000
AND DEPTNO IN (10,20,30)
AND JOB != 'CLERK';

--17. List all the employees whose names start with letter A
--and whose salary is greater than 1000
SELECT * FROM EMP
WHERE ENAME LIKE 'A%'
AND SAL > 1000;

--18. List all the student name whose percentage is above 60
SELECT * FROM STUDENT
WHERE PERCENTAGE > 60;

--19. Display all the employee whose name has consecutive M
SELECT * FROM EMP
WHERE ENAME LIKE '%MM%';

--20. Display all the employee whose job not belongs to CLERK
--and whose department number is 10 and 20
SELECT * FROM EMP
WHERE JOB <> 'CLERK'
AND DEPTNO IN (10,20);

--21. List all the employee names who has always two P's
--and whose salary ranges between 1000 to 3000
SELECT * FROM EMP
WHERE ENAME LIKE '%P%P%'
AND SAL BETWEEN 1000 AND 3000;

--22. Display all the employee name who don't have commission
--and working in department 10,20
SELECT * FROM EMP
WHERE COMM IS NULL
AND DEPTNO IN (10,20);

--23. List all the employees who is not having reporting manager in dept 20 and 30
SELECT * FROM EMP
WHERE MGR IS NULL
AND DEPTNO IN (20,30);

--24. List all the employees whose name does not start with A
SELECT * FROM EMP
WHERE ENAME NOT LIKE 'A%';

--25. Display all the employees who have joined in the year 87
SELECT * FROM EMP
WHERE HIREDATE BETWEEN'01-01-87' AND '31-12-87';

--26. List the employees who have 2 T's in their name
SELECT * FROM EMP
WHERE ENAME LIKE '%T%T%';

--27. List all the employees whose employee no is not 7654
SELECT * FROM EMP
WHERE EMPNO != 7654;

--28. Write a query to display all the salesmen in Dept 30
SELECT * FROM EMP
WHERE JOB='SALESMAN'
AND DEPTNO=30;

--29. Write a query to display the employees whose salary is between 2000 and 3000
SELECT * FROM EMP
WHERE SAL BETWEEN 2000 AND 3000;

--30. List all the employees whose name has at least one R in it
SELECT * FROM EMP
WHERE ENAME LIKE '%R%';

--31. List all the employees whose salary is between the range 800 and 2500
SELECT * FROM EMP
WHERE SAL BETWEEN 800 AND 2500;

--32. List all the employees except who works for Dept 30
SELECT * FROM EMP
WHERE DEPTNO <> 30;

--33. Display all the employees whose analyst salary is greater than or equal to 2000
SELECT * FROM EMP
WHERE JOB='ANALYST'
AND SAL >= 2000;

--34. Display all the employees whose name ends with T and starts with A
SELECT * FROM EMP
WHERE ENAME LIKE 'A%T';

--35. Display all the employees who are managers and with their annual salary
SELECT ENAME, JOB, SAL*12 AS ANNUAL_SALARY
FROM EMP
WHERE JOB='MANAGER';

--36. Display all the employees who are salesmen and with their annual bonus
SELECT ENAME, JOB, COMM*12 AS ANNUAL_BONUS
FROM EMP
WHERE JOB='SALESMAN';

--37. Display all the employees whose job name has E as second character
SELECT * FROM EMP
WHERE JOB LIKE '__E%';

--38. Display all the employees who don't have commission and salary greater than 1000
SELECT * FROM EMP
WHERE COMM IS NULL
AND SAL > 1000;

--39. Display department name which has 'LL' in their location
SELECT DNAME
FROM DEPT
WHERE LOC LIKE '%LL%';

--40. List all the employee whose department is not 20 and
--name doesn't have M as first letter
SELECT * FROM EMP
WHERE DEPTNO <> 20
AND ENAME NOT LIKE 'M%';

--41. List all the employee with employee number between 7000 to 8000
SELECT * FROM EMP
WHERE EMPNO BETWEEN 7000 AND 8000;

--42. Display all the employee whose salary is not in the range from 1500 to 3000
SELECT * FROM EMP
WHERE SAL NOT BETWEEN 1500 AND 3000;

--43. Display all the employees having salary greater than 1000
--who joined in the month of December and having reporting manager
SELECT * FROM EMP
WHERE SAL > 1000
AND HIREDATE LIKE '%12%'
AND MGR IS NOT NULL;

--44. Display all the employees who have minimum 4 characters in their job
--in department 20
SELECT * FROM EMP
WHERE LENGTH(JOB) >= 4
AND DEPTNO = 20;

--45. List all the employee who are clerk and name ends with S
--except department number 10
SELECT * FROM EMP
WHERE JOB='CLERK'
AND ENAME LIKE '%S'
AND DEPTNO <> 10;

--46. Display the employee name should be 5 characters
SELECT ENAME
FROM EMP
WHERE LENGTH(ENAME)=5;

--47. List all the employee who are getting salary more than highest commission///////////////////////////////// 
SELECT 
--48. Display the sentence with a combination of ename, sal, deptno from emp table
SELECT ENAME || ' earns ' || SAL || ' and works in dept ' || DEPTNO AS DETAILS
FROM EMP;

--49. Display the employee whose second letter is A
--and second last letter is R
SELECT * FROM EMP
WHERE ENAME LIKE '__A%'
OR ENAME LIKE '%R__';

--50. Display the employee who is earning salary more than 300
--but not more than 3000
SELECT * FROM EMP
WHERE SAL > 300
AND SAL <= 3000;

--51. Display the details of analyst
SELECT * FROM EMP
WHERE JOB='ANALYST';

--52. Display the details of employee who does not take commission
SELECT * FROM EMP
WHERE COMM IS NULL;

--53. List all employee with annual salary with 500 rs bonus
--and working as manager joined in the month of April and May
SELECT ENAME,
       (SAL*12)+500 AS ANNUAL_SALARY
FROM EMP
WHERE JOB='MANAGER'
AND (HIREDATE LIKE '%-04-%' OR HIREDATE LIKE'%-05-%');

--54. Display employee whose emp no starts with 78 and 79
--whose designation contains at least one E in dept no 20 and 30
SELECT * FROM EMP
WHERE (EMPNO LIKE '78%'
       OR EMPNO LIKE '79%')
AND JOB LIKE '%E%'
AND DEPTNO IN (20,30);

--55. List all the manager working in dept 30 and 20
--hired between 02-JAN-81 and 09-JUN-81
SELECT * FROM EMP
WHERE JOB='MANAGER'
AND DEPTNO IN (20,30)
AND HIREDATE BETWEEN '02-01-81'
                 AND '09-06-81';

--56. List the employee job with hiredate whose name starts between A and S
--working in dept 30 and 20
SELECT ENAME, JOB, HIREDATE
FROM EMP
WHERE ENAME BETWEEN 'A' AND 'S'
AND DEPTNO IN (20,30);

--57. Display DNAME which contains at least two S
--and at least one O or A in their location
SELECT * FROM DEPT
WHERE DNAME LIKE '%S%S%'
AND (LOC LIKE '%O%' OR LOC LIKE '%A%');

--58. List all the manager working in department 20 & 30
--hired between 02-JAN-81 & 09-JUN-81
SELECT * FROM EMP
WHERE JOB='MANAGER'
AND DEPTNO IN (20,30)
AND HIREDATE BETWEEN '02-01-81'
                 AND '06-06-81';

--59. Display employees whose employee id starts with 78 & 79
--whose designation contains at least one E and working in department 20 & 30
SELECT * FROM EMP
WHERE (EMPNO LIKE '78%' OR EMPNO LIKE '79%')
AND JOB LIKE '%E%'
AND DEPTNO IN (20,30);

--60. List the employee job with hiredate whose name starts between A & S
--working in department 20 & 30 and also display commission amount
SELECT ENAME, JOB, HIREDATE, COMM
FROM EMP
WHERE (ENAME LIKE 'A%' OR ENAME LIKE 'S%')
AND DEPTNO IN (20,30);

--61) Write a query to display name which contains atleast two S & 
--atleast one 'O' or 'A' in their location from department table.
SELECT DNAME
FROM DEPT
WHERE DNAME LIKE '%S%S%'
AND (LOC LIKE '%O%' OR LOC LIKE '%A%');

--62) List all the employee with annual salary with 5000rs bonus working as manager joined in the month of april & may.
SELECT ENAME, (SAL*12)+5000 AS ANNUAL_SALARY
FROM EMP
WHERE JOB='MANAGER'
AND TO_CHAR(HIREDATE,'MON') IN ('APR','MAY');

--63) List all the manager working in department 20 &30 hired between 02-jan-81 & 09-june-81.
SELECT *
FROM EMP
WHERE JOB='MANAGER'
AND DEPTNO IN (20,30)
AND HIREDATE BETWEEN '02-JAN-81' AND '09-JUN-81';

--64) Write a query to display employees whose employee id starts with 78 & 79 whose designation contains atleast one E and working in department 20 & 30.
SELECT *
FROM EMP
WHERE (TO_CHAR(EMPNO) LIKE '78%' OR TO_CHAR(EMPNO) LIKE '79%')
AND JOB LIKE '%E%'
AND DEPTNO IN (20,30);

--65) List the employee job with hiredate whose name starts between 'A' & 'S' working in department 20 & 30 also display commission amount.
SELECT ENAME, JOB, HIREDATE, COMM
FROM EMP
WHERE ENAME BETWEEN 'A' AND 'SZZZZ'
AND DEPTNO IN (20,30);

--66) Write a query to display name which contains atleast two S & atleast one 'O' or 'A' in their location from department table.
SELECT DNAME
FROM DEPT
WHERE DNAME LIKE '%S%S%'
AND (LOC LIKE '%O%' OR LOC LIKE '%A%');

--67) List all the employee with annual salary with 5000rs bonus working as manager joined in the month of april & may.
SELECT ENAME,(SAL*12)+5000 AS ANNUAL_SALARY
FROM EMP
WHERE JOB='MANAGER'
AND HIREDATE LIKE '%-04-%' OR HIREDATE LIKE '%-05-%';

--68) List all the employees in dept 20 who have salary less than 500.
SELECT *
FROM EMP
WHERE DEPTNO=20
AND SAL<500;

--69) List all the employees who work in dept 10.
SELECT *
FROM EMP
WHERE DEPTNO=10;

--70) List all the employees who should report to manager in dept 30.
SELECT *
FROM EMP
WHERE MGR IS NOT NULL
AND DEPTNO=30;

--71) List all the employees whose salary is greater than 3000.
SELECT *
FROM EMP
WHERE SAL>3000;

--72) List all the employees whose job is analyst.
SELECT *
FROM EMP
WHERE JOB='ANALYST';

--73) List the employees whose salary in the range of 2000 to 3000 except in dept 10 and 20 in all clerks.
SELECT *
FROM EMP
WHERE SAL BETWEEN 2000 AND 3000
AND DEPTNO NOT IN (10,20)
AND JOB!='CLERK';

--74) List the employees whose name is having letter 'E' as last but two character.
SELECT *
FROM EMP
WHERE ENAME LIKE '%E__';

--75) List all the employees who is having comm in dept 30.
SELECT *
FROM EMP
WHERE COMM IS NOT NULL
AND DEPTNO=30;

--76) Display all the employee whose earning salary in the range 2500 and 5000 in dept 10 and 20.
SELECT *
FROM EMP
WHERE SAL BETWEEN 2500 AND 5000
AND DEPTNO IN (10,20);

--77) List all the employees who are not having reporting manager in dept 20.
SELECT *
FROM EMP
WHERE MGR IS NULL
AND DEPTNO=20;

--78) List the employees who are '5' no in second position in empno as well as mgr.
SELECT *
FROM EMP
WHERE TO_CHAR(EMPNO) LIKE '_5%'
AND TO_CHAR(MGR) LIKE '_5%';

--79) List all the salgrade whose low salary between 1000 to 2000.
SELECT *
FROM SALGRADE
WHERE LOSAL BETWEEN 1000 AND 2000;

--80) List the employees name who's are having 3rd letter should 'A' in ename in it.
SELECT *
FROM EMP
WHERE ENAME LIKE '__A%';

--81) List all the manager who earn less than 3000.
SELECT *
FROM EMP
WHERE JOB='MANAGER'
AND SAL<3000;

--82) List the departments name who are having 3rd letter should 'N' in it.
SELECT *
FROM DEPT
WHERE DNAME LIKE '__N%';

--83) Display all employees working as a Clerk and Sal not more than 1500 in Dept 10,20,30.
SELECT *
FROM EMP
WHERE JOB='CLERK'
AND SAL<=1500
AND DEPTNO IN (10,20,30);

--84) List the employees whose job and Ename having letter 'T'.
SELECT *
FROM EMP
WHERE ENAME LIKE '%T%'
AND JOB LIKE '%T%';

--85) List all employees except who are having Commission.
SELECT *
FROM EMP
WHERE COMM IS NULL;

--86) Write a query to display Deptname and location having character 'o'.
SELECT DNAME,LOC
FROM DEPT
WHERE DNAME LIKE '%O%'
OR LOC LIKE '%O%';

--87) List the employees whose EmpNo ends with '9' and don't having reporting Manager.
SELECT *
FROM EMP
WHERE TO_CHAR(EMPNO) LIKE '%9'
AND MGR IS NULL;

--88) Display all the employees whose joined between Feb and may.
SELECT *
FROM EMP
WHERE TO_CHAR(HIREDATE,'MON') IN ('FEB','MAR','APR','MAY');

--89) Display all the enames who is having a reporting manager 7698.
SELECT ENAME
FROM EMP
WHERE MGR=7698;

--90) Display all the employees whose getting highest salary in department 20 and 30.
SELECT *
FROM EMP
WHERE DEPTNO IN (20,30)
AND SAL = (
    SELECT MAX(SAL)
    FROM EMP
    WHERE DEPTNO IN (20,30)
);

--91) List all the enames in department 30 who is having 'A' is one of the character.
SELECT ENAME
FROM EMP
WHERE DEPTNO=30
AND ENAME LIKE '%A%';

--92) List all the department names and location with atleast 2 O's.
SELECT DNAME,LOC
FROM DEPT
WHERE DNAME LIKE '%O%O%'
OR LOC LIKE '%O%O%';

--93) List all employee whose name starts with k and ends k.
SELECT *
FROM EMP
WHERE ENAME LIKE 'K%K';

--94) List the department which are having k in their location as well as their department name.
SELECT *
FROM DEPT
WHERE DNAME LIKE '%K%'
AND LOC LIKE '%K%';

--95) List all the employee is having letter P in the 3rd position.
SELECT *
FROM EMP
WHERE ENAME LIKE '__P%';

--96) List all the emp whose MANAGER employee number between 
--7698,7839 and salary ends with number 5.
SELECT *
FROM EMP
WHERE MGR IN (7698,7839)
AND TO_CHAR(SAL) LIKE '%5';

--97) List all the employee whose employee 3rd letter should 2 and his manager annual salary between 30000 to 35000.
SELECT *
FROM EMP
WHERE TO_CHAR(EMPNO) LIKE '__2%';

--98) List the employee who joined in any year but not belongs to the month of march.
SELECT *
FROM EMP
WHERE HIREDATE NOT LIKE '__-03-__';

--99) List the employee of department no 30 or 10 joined in the year 81.
SELECT *
FROM EMP
WHERE DEPTNO IN (10,30)
AND HIREDATE LIKE '%81%';

--100) Display the names of employee working in department no 10 or 20 or 30 employee working as clerk,salesman or analyst.
SELECT ENAME
FROM EMP
WHERE DEPTNO IN (10,20,30)
AND JOB IN ('CLERK','SALESMAN','ANALYST');

--101) List the employees whose names having a character get 'LL' together.
SELECT *
FROM EMP
WHERE ENAME LIKE '%LL%';

--102) Display the details of the employee whose comm is more than their salary.
SELECT *
FROM EMP
WHERE COMM > SAL;

--103) List all the emp whose name has atleast one 'A' in it.
SELECT *
FROM EMP
WHERE ENAME LIKE '%A%';

--104) List all the emp in dept 30 whose sal >= 1500.
SELECT *
FROM EMP
WHERE DEPTNO=30
AND SAL>=1500;

--105) List all the emp who are hired in year 81.
SELECT *
FROM EMP
WHERE HIREDATE LIKE '%81%';

--106) List all the analyst in all the department.
SELECT *
FROM EMP
WHERE JOB='ANALYST';

--107) List all the emp who are receiving commission.
SELECT *
FROM EMP
WHERE COMM IS NOT NULL;

--108) List the employees whose name does not start with 'A'.
SELECT *
FROM EMP
WHERE ENAME NOT LIKE 'A%';

--109) Display all the employee who are joined in JAN.
SELECT *
FROM EMP
WHERE TO_CHAR(HIREDATE,'MON')='JAN';

--110) Display all the employee who are 'MANAGER's having E as the last character 
--in ename but salary having exactly 4 character.
SELECT *
FROM EMP
WHERE JOB='MANAGER'
AND ENAME LIKE '%E'
AND SAL LIKE '____';

---

SELECT COUNT(ENAME)
FROM EMP
WHERE ((SAL>2000) OR (COMM IS NULL))
AND (JOB LIKE '%E%' OR JOB LIKE '%A%');

---
--110. Display all the employees who are MANAGERs having E as the last character
--in ENAME but salary having exactly 4 digits.

SELECT *
FROM EMP
WHERE JOB = 'MANAGER'
  AND ENAME LIKE '%E'
  AND LENGTH(SAL) = 4;

--111. List all the employees who are having reporting managers in dept 20.

SELECT *
FROM EMP
WHERE MGR IS NOT NULL
  AND DEPTNO = 20;

--112. Display the employees who are having employee no as 7902,7934.

SELECT *
FROM EMP
WHERE EMPNO IN (7902,7934);

--113. Display all the employees name start with J?

SELECT *
FROM EMP
WHERE ENAME LIKE 'J%';


--114. List all the employees whose commission is greater than 100?

SELECT *
FROM EMP
WHERE COMM > 100;


--115. List all the employees who have joined in the month of April?

SELECT *
FROM EMP
WHERE TO_CHAR(HIREDATE,'MON') = 'APR';


--116. List all the employees whose salary is less than 5000?

SELECT *
FROM EMP
WHERE SAL < 5000;


--117. List all the employees who have joined in the year 82?

SELECT *
FROM EMP
WHERE TO_CHAR(HIREDATE,'YY') = '82';


--118. Display all the employees whose job has string 'NA' in it.

SELECT *
FROM EMP
WHERE JOB LIKE '%NA%';


--119. Display all the employees who joined after Feb-81.

SELECT *
FROM EMP
WHERE HIREDATE > TO_DATE('28-FEB-81','DD-MON-RR');


--120. Display all the employees except those who are working in dept 10 & 30.

SELECT *
FROM EMP
WHERE DEPTNO NOT IN (10,30);


--121. Display all the employees whose commission is NOT NULL.

SELECT *
FROM EMP
WHERE COMM IS NOT NULL;


--122. List all the employees who are having reporting manager in dept 10 & 20.

SELECT *
FROM EMP
WHERE MGR IS NOT NULL
  AND DEPTNO IN (10,20);


--123. Display all the employees whose job has string 'ANA' in it.

SELECT *
FROM EMP
WHERE JOB LIKE '%ANA%';


--124. Display all the presidents in department 10.

SELECT *
FROM EMP
WHERE JOB = 'PRESIDENT'
  AND DEPTNO = 10;


--125. List the employees whose hire date is before Feb-81.

SELECT *
FROM EMP
WHERE HIREDATE < TO_DATE('01-FEB-81','DD-MON-RR');


--126. Display all the employees whose name starts with 'B'
--and ends with 'E' and salary more than 2200.

SELECT *
FROM EMP
WHERE ENAME LIKE 'B%E'
  AND SAL > 2200;


--127. Display the students whose name starts with 'B',
--ends with a vowel and percentage >85 but <90.

SELECT *
FROM STUDENT
WHERE NAME LIKE 'B%'
  AND REGEXP_LIKE(NAME,'[AEIOU]$')
  AND PERCENTAGE > 85
  AND PERCENTAGE < 90;


--128. Select all the employees whose name 4th character is 'N'
--and 1st character is A or S working in department 30.

SELECT *
FROM EMP
WHERE (ENAME LIKE 'A__N%' OR ENAME LIKE 'S__N%')
  AND DEPTNO = 30;


--129. List all the employees working in department 10
--salary between 1500 and 5000
--having commission >=500.

SELECT *
FROM EMP
WHERE DEPTNO = 10
  AND SAL BETWEEN 1500 AND 5000
  AND COMM >= 500;


--130. List the employees except those working in dept 10 & 30
--and joined after 03-DEC-81.

SELECT *
FROM EMP
WHERE DEPTNO NOT IN (10,30)
  AND HIREDATE > TO_DATE('03-DEC-81','DD-MON-RR');

--131. List all the employees whose name having consecutive 'SS'
--working in dept 10 whose salary is between 500 and 1500.

SELECT *
FROM EMP
WHERE ENAME LIKE '%SS%'
  AND DEPTNO = 10
  AND SAL BETWEEN 500 AND 1500;


--132. List those employees who are having reporting manager
--in dept 20,10,30 and name ends with 'S'
--salary between 2000 and 3000
--joined before 19-JUN-87.

SELECT *
FROM EMP
WHERE MGR IS NOT NULL
  AND DEPTNO IN (10,20,30)
  AND ENAME LIKE '%S'
  AND SAL BETWEEN 2000 AND 3000
  AND HIREDATE < TO_DATE('19-JUN-87','DD-MON-YY');


--133. List all the employees whose names end with TT.

SELECT *
FROM EMP
WHERE ENAME LIKE '%TT';


--134. List all the employees who have commission of 500 or more.

SELECT *
FROM EMP
WHERE COMM >= 500;


--135. List all the employees whose salary is between 500 and 2000
--and belongs to dept 20 or 30.

SELECT *
FROM EMP
WHERE SAL BETWEEN 500 AND 2000
  AND DEPTNO IN (20,30);


--136. List all the salesman and analyst
--who work in dept 20 and 30.

SELECT *
FROM EMP
WHERE JOB IN ('SALESMAN','ANALYST')
  AND DEPTNO IN (20,30);


--137. List all the employees whose salary is less than 1000
--and doesn't belong to dept 20.

SELECT *
FROM EMP
WHERE SAL < 1000
  AND DEPTNO <> 20;


--138. List all the analyst in department 20
--having salary greater than 2000.

SELECT *
FROM EMP
WHERE JOB = 'ANALYST'
  AND DEPTNO = 20
  AND SAL > 2000;


--139. List all the employees except clerk and analyst
--who are not earning salary between 1000 and 3000.

SELECT *
FROM EMP
WHERE JOB NOT IN ('CLERK','ANALYST')
  AND SAL NOT BETWEEN 1000 AND 3000;


--140. Select all the salesman whose second character is 'A'
--and who joined after 20-FEB-81.

SELECT *
FROM EMP
WHERE JOB = 'SALESMAN'
  AND ENAME LIKE '_A%'
  AND HIREDATE > TO_DATE('20-FEB-81','DD-MON-RR');


--141. List all the employees getting salary
--3000 or more working in department 10 and 20.

SELECT *
FROM EMP
WHERE SAL >= 3000
  AND DEPTNO IN (10,20);


--142. Select all the salesman whose name has at least one 'R'
--salary less than 1500
--joined after 21-FEB-81.

SELECT *
FROM EMP
WHERE JOB = 'SALESMAN'
  AND ENAME LIKE '%R%'
  AND SAL < 1500
  AND HIREDATE > TO_DATE('21-FEB-81','DD-MON-RR');


--143. Display all employee details
--joined in year 81
--name contains 'A'
--gets commission
--deptno starts with 3.

SELECT *
FROM EMP
WHERE TO_CHAR(HIREDATE,'YY') = '81'
  AND ENAME LIKE '%A%'
  AND COMM IS NOT NULL
  AND TO_CHAR(DEPTNO) LIKE '3%';


--144. List all employees
--having manager
--annual salary >10000
--empno between 7850 and 7950
--working as ANALYST.

SELECT *
FROM EMP
WHERE MGR IS NOT NULL
  AND SAL*12 > 10000
  AND EMPNO BETWEEN 7850 AND 7950
  AND JOB = 'ANALYST';


--145. Display department details
--department name has E or A
--location has A
--deptno = 30.

SELECT *
FROM DEPT
WHERE (DNAME LIKE '%E%' OR DNAME LIKE '%A%')
  AND LOC LIKE '%A%'
  AND DEPTNO = 30;


--146. Display employees
--salary <2000 and >3000
--joined in NOV or SEP
--monthly salary including commission <2000.

-- NOTE:
-- The condition "salary <2000 and >3000"
-- is impossible, so this query returns no rows.

SELECT *
FROM EMP
WHERE SAL < 2000
  AND SAL > 3000
  AND TO_CHAR(HIREDATE,'MON') IN ('NOV','SEP')
  AND (SAL + NVL(COMM,0)) < 2000;


--147. Display employee details and quarterly salary
--except SALESMAN
--salary between 500 and 2000
--name starts with S.

SELECT EMP.*,
       SAL*3 AS QUARTERLY_SALARY
FROM EMP
WHERE JOB <> 'SALESMAN'
  AND SAL > 500
  AND SAL < 2000
  AND ENAME LIKE 'S%';
--148. List all the names with 'E' present in their last names
--and their salaries between 6000 and 12000.
--(HR Schema)

SELECT FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE LAST_NAME LIKE '%E%'
  AND SALARY BETWEEN 6000 AND 12000;


--149. Hint: Login using HR schema.


--150. (No question in the PDF)


--151. List all the names of employees who are not working as
--'IT Programmer' or 'Clerk' and whose salary is more than 3000.
--(HR Schema)

SELECT FIRST_NAME, LAST_NAME, JOB_ID, SALARY
FROM EMPLOYEES
WHERE JOB_ID NOT IN ('IT_PROG','CLERK')
  AND SALARY > 3000;


--152. List all the departments starting with location no 1700
--and those who have managers.
--(HR Schema)

SELECT *
FROM DEPARTMENTS
WHERE LOCATION_ID = 1700
  AND MANAGER_ID IS NOT NULL;


--153. Hint: Refer DEPARTMENTS table in HR.


--154. List all employee first and last name followed by
--'your job is' and the job along with salaries greater than 9000.
--(HR Schema)

SELECT FIRST_NAME || ' ' || LAST_NAME ||
       ' YOUR JOB IS ' || JOB_ID AS DETAILS,
       SALARY
FROM EMPLOYEES
WHERE SALARY > 9000;


--155. List all employee first name followed by
--'your salary is' salary
--phone number contains at least one '1'
--not Sales Representative and HR Representative.
--(HR Schema)

SELECT FIRST_NAME || ' YOUR SALARY IS ' || SALARY AS DETAILS,
       PHONE_NUMBER
FROM EMPLOYEES
WHERE PHONE_NUMBER LIKE '%1%'
  AND JOB_ID NOT IN ('SA_REP','HR_REP');


--156. Display only the manager codes of employees
--whose salary is more than 1000
--and hired in year 81.

SELECT DISTINCT MGR
FROM EMP
WHERE SAL > 1000
  AND TO_CHAR(HIREDATE,'YY')='81'
  AND MGR IS NOT NULL;


--157. Display all employees
--who report to manager 7698
--are SALESMAN
--whose names end with N.

SELECT *
FROM EMP
WHERE MGR = 7698
  AND JOB = 'SALESMAN'
  AND ENAME LIKE '%N';


--158. Display only employee name along with joining date
--from department 30
--joined in year 81.

SELECT ENAME, HIREDATE
FROM EMP
WHERE DEPTNO = 30
  AND TO_CHAR(HIREDATE,'YY')='81';


--159. List employees who are CLERKs
--salary above 1000
--hired after year 81.

SELECT *
FROM EMP
WHERE JOB='CLERK'
  AND SAL > 1000
  AND HIREDATE > TO_DATE('31-DEC-81','DD-MON-RR');


--160. List employees
--salary between 1000 and 3000
--except CLERKs
--whose 3rd character is A.

SELECT *
FROM EMP
WHERE SAL BETWEEN 1000 AND 3000
  AND JOB <> 'CLERK'
  AND ENAME LIKE '__A%';


--161. List all employees except SALESMAN and MANAGER
--in department 10.

SELECT *
FROM EMP
WHERE JOB NOT IN ('SALESMAN','MANAGER')
  AND DEPTNO = 10;


--162. List all employees
--whose salary is NOT between 1500 and 3000.

SELECT *
FROM EMP
WHERE SAL NOT BETWEEN 1500 AND 3000;


--163. Display all MANAGERs
--having J as first character in ENAME.

SELECT *
FROM EMP
WHERE JOB='MANAGER'
  AND ENAME LIKE 'J%';


--164. List all SALESMAN in dept 20
--having salary greater than 2000.

SELECT *
FROM EMP
WHERE JOB='SALESMAN'
  AND DEPTNO=20
  AND SAL > 2000;


--165. List all employees
--whose names start with J or F.

SELECT *
FROM EMP
WHERE ENAME LIKE 'J%'
   OR ENAME LIKE 'F%';


--166. Display names
--who are not SALESMAN and ANALYST
--salary greater than 1000
--working in department 20.

SELECT ENAME
FROM EMP
WHERE JOB NOT IN ('SALESMAN','ANALYST')
  AND SAL > 1000
  AND DEPTNO = 20;

--167. Display the names whose last but one character is 'L',
--having some commission and not belonging to dept 10 and 20.

SELECT ENAME
FROM EMP
WHERE ENAME LIKE '%L_'
  AND COMM IS NOT NULL
  AND DEPTNO NOT IN (10,20);


--168. Display all SALESMAN whose salary ends with 5.

SELECT *
FROM EMP
WHERE JOB = 'SALESMAN'
  AND TO_CHAR(SAL) LIKE '%5';


--169. Display employees joined between 1980 and 1981.

SELECT *
FROM EMP
WHERE TO_CHAR(HIREDATE,'YY') BETWEEN '80' AND '81';


--170. List all SALESMAN whose name contains 'N'.

SELECT *
FROM EMP
WHERE JOB = 'SALESMAN'
  AND ENAME LIKE '%N%';


--171. List all employees who are ANALYST, CLERK and SALESMAN.

SELECT *
FROM EMP
WHERE JOB IN ('ANALYST','CLERK','SALESMAN');


--172. List all employees whose name starts with A and ends with N.

SELECT *
FROM EMP
WHERE ENAME LIKE 'A%N';


--173. List all employees whose name doesn't start with N.

SELECT *
FROM EMP
WHERE ENAME NOT LIKE 'N%';


--174. List all employees whose name has 5 characters
--and salary between 2000 and 20000.

SELECT *
FROM EMP
WHERE LENGTH(ENAME)=5
  AND SAL BETWEEN 2000 AND 20000;


--175. Display employees working as ANALYST or SALESMAN
--in dept 10 and 20 with salary less than 3000.

SELECT *
FROM EMP
WHERE JOB IN ('ANALYST','SALESMAN')
  AND DEPTNO IN (10,20)
  AND SAL < 3000;


--176. List all employees who joined in 1982
--and salary greater than 1000.

SELECT *
FROM EMP
WHERE TO_CHAR(HIREDATE,'YY')='82'
  AND SAL > 1000;


--177. List all SALESMAN who do not have any commission.

SELECT *
FROM EMP
WHERE JOB='SALESMAN'
  AND COMM IS NULL;


--178. List all employees whose ratio of commission to salary
--is greater than 0.5.

SELECT *
FROM EMP
WHERE COMM IS NOT NULL
  AND COMM/SAL > 0.5;


--179. Display name and job of employees whose second character is L
--and designation is not SALESMAN.

SELECT ENAME, JOB
FROM EMP
WHERE ENAME LIKE '_L%'
  AND JOB <> 'SALESMAN';


--180. Display all employees whose third character is R
--and getting some commission.

SELECT *
FROM EMP
WHERE ENAME LIKE '__R%'
  AND COMM IS NOT NULL;


--181. Display all employees
--having commission >1000,
--joined in September,
--whose last but two character is T,
--and deptno is not 10 or 20.

SELECT *
FROM EMP
WHERE COMM > 1000
  AND TO_CHAR(HIREDATE,'MON')='SEP'
  AND ENAME LIKE '%T__'
  AND DEPTNO NOT IN (10,20);


--182. Display all employees who joined on 17th of any year,
--salary =800 or 5000,
--deptno <>30.

SELECT *
FROM EMP
WHERE TO_CHAR(HIREDATE,'DD')='17'
  AND SAL IN (800,5000)
  AND DEPTNO <> 30;


--183. Display all ANALYST
--whose name doesn't have consecutive TT,
--salary between 2000 and 3000,
--not in dept 10 or 20.

SELECT *
FROM EMP
WHERE JOB='ANALYST'
  AND ENAME NOT LIKE '%TT%'
  AND SAL BETWEEN 2000 AND 3000
  AND DEPTNO NOT IN (10,20);


--184. Display employees whose name has consecutive LL,
--neither SALESMAN nor MANAGER,
--salary less than 2000,
--joined in January.

SELECT *
FROM EMP
WHERE ENAME LIKE '%LL%'
  AND JOB NOT IN ('SALESMAN','MANAGER')
  AND SAL < 2000
  AND TO_CHAR(HIREDATE,'MON')='JAN';

--185. List all the employees whose job is ANALYST,
--name starts with S as the 3rd character (i.e., 3rd character is S),
--salary more than 3000.

SELECT *
FROM EMP
WHERE JOB = 'ANALYST'
  AND ENAME LIKE '__S%'
  AND SAL > 3000;


--186. List all the employees whose job is SALESMAN,
--hiredate between 17-DEC-80 and 08-DEC-81,
--deptno = 30.

SELECT *
FROM EMP
WHERE JOB = 'SALESMAN'
  AND HIREDATE BETWEEN TO_DATE('17-DEC-80','DD-MON-RR')
                   AND TO_DATE('08-DEC-81','DD-MON-RR')
  AND DEPTNO = 30;


--187. List all the employees whose name is KING,
--salary greater than 5000,
--dept 10 and 20.

SELECT *
FROM EMP
WHERE ENAME = 'KING'
  AND SAL > 5000
  AND DEPTNO IN (10,20);


--188. List all the employees whose salary is more than 4000,
--commission is NULL,
--deptno = 10.

SELECT *
FROM EMP
WHERE SAL > 4000
  AND COMM IS NULL
  AND DEPTNO = 10;


--189. List all the employees whose reporting manager is NOT NULL,
--deptno 10 and 30,
--salary more than 3000.

SELECT *
FROM EMP
WHERE MGR IS NOT NULL
  AND DEPTNO IN (10,30)
  AND SAL > 3000;


--190. List all the employees in dept 20,
--salary >2500,
--no commission,
--name does not start with 'S'.

SELECT *
FROM EMP
WHERE DEPTNO = 20
  AND SAL > 2500
  AND COMM IS NULL
  AND ENAME NOT LIKE 'S%';


--191. Display all the employees
--salary NOT between 2500 and 5000,
--dept 10 and 20,
--annual salary ends with 0.

SELECT *
FROM EMP
WHERE SAL NOT BETWEEN 2500 AND 5000
  AND DEPTNO IN (10,20)
  AND TO_CHAR(SAL*12) LIKE '%0';


--192. Display all employees
--joined after 1981,
--not MANAGER or CLERK,
--dept 10 and 20,
--salary between 1000 and 3000.

SELECT *
FROM EMP
WHERE HIREDATE > TO_DATE('31-DEC-81','DD-MON-RR')
  AND JOB NOT IN ('MANAGER','CLERK')
  AND DEPTNO IN (10,20)
  AND SAL BETWEEN 1000 AND 3000;


--193. List department names and locations
--having letter 'O' in both DNAME and LOC,
--not dept 20 and 40.

SELECT *
FROM DEPT
WHERE DNAME LIKE '%O%'
  AND LOC LIKE '%O%'
  AND DEPTNO NOT IN (20,40);


--194. Select employees whose name starts with S or A,
--dept 20 and 30,
--joined after 01-MAY-80 and before 01-MAY-81.

SELECT *
FROM EMP
WHERE (ENAME LIKE 'S%' OR ENAME LIKE 'A%')
  AND DEPTNO IN (20,30)
  AND HIREDATE > TO_DATE('01-MAY-80','DD-MON-RR')
  AND HIREDATE < TO_DATE('01-MAY-81','DD-MON-RR');


--195. List employees
--salary between 1000 and 3000,
--SALESMAN,
--not dept 10 or 20,
--commission >1000.

SELECT *
FROM EMP
WHERE SAL BETWEEN 1000 AND 3000
  AND JOB = 'SALESMAN'
  AND DEPTNO NOT IN (10,20)
  AND COMM > 1000;


--196. List department names
--deptno >20,
--location has at least one 'A'.

SELECT *
FROM DEPT
WHERE DEPTNO > 20
  AND LOC LIKE '%A%';


--197. List all CLERKs
--salary <1000,
--joined after 1975,
--display annual salary.

SELECT EMP.*,
       SAL*12 AS ANNUAL_SALARY
FROM EMP
WHERE JOB = 'CLERK'
  AND SAL < 1000
  AND HIREDATE > TO_DATE('31-DEC-75','DD-MON-RR');


--198. List MANAGER, ANALYST and SALESMAN
--annual commission,
--dept 10 and 30,
--salary <2000,
--display annual salary for 2 years.

SELECT EMP.*,
       NVL(COMM,0)*12 AS ANNUAL_COMMISSION,
       SAL*24 AS TWO_YEAR_SALARY
FROM EMP
WHERE JOB IN ('MANAGER','ANALYST','SALESMAN')
  AND DEPTNO IN (10,30)
  AND SAL < 2000;


--199. List employees
--joined after 1980,
--salary between 2500 and 4000,
--display salary after six months.

SELECT EMP.*,
       SAL*6 AS SIX_MONTH_SALARY
FROM EMP
WHERE HIREDATE > TO_DATE('31-DEC-80','DD-MON-RR')
  AND SAL BETWEEN 2500 AND 4000;


--200. Select all MANAGERs
--salary more than 2500,
--department 20 or 30.

SELECT *
FROM EMP
WHERE JOB = 'MANAGER'
  AND SAL > 2500
  AND DEPTNO IN (20,30);

--201. Select all employees whose second digit of EMPNO is 8
--and who do not have a manager.

SELECT *
FROM EMP
WHERE TO_CHAR(EMPNO) LIKE '_8%'
  AND MGR IS NULL;


--202. Select all employees working in dept 10,20,30
--salary >2000
--joined between 1985 and 1987.

SELECT *
FROM EMP
WHERE DEPTNO IN (10,20,30)
  AND SAL > 2000
  AND TO_CHAR(HIREDATE,'YYYY') BETWEEN '1985' AND '1987';


--203. List department numbers whose location has consecutive 'LL'.

SELECT DEPTNO
FROM DEPT
WHERE LOC LIKE '%LL%';


--204. List employee names
--salary >1500
--getting commission
--working in dept 20 or 30
--name contains at least one 'A'.

SELECT ENAME
FROM EMP
WHERE SAL > 1500
  AND COMM IS NOT NULL
  AND DEPTNO IN (20,30)
  AND ENAME LIKE '%A%';


--205. Display all CLERKs
--whose annual salary ends with '00'.

SELECT *
FROM EMP
WHERE JOB='CLERK'
  AND TO_CHAR(SAL*12) LIKE '%00';


--206. Display employee names
--starting with A
--salary between 1000 and 3000.

SELECT ENAME
FROM EMP
WHERE ENAME LIKE 'A%'
  AND SAL BETWEEN 1000 AND 3000;


--207. Display employee names
--having exactly 5 characters
--working in dept 30.

SELECT ENAME
FROM EMP
WHERE LENGTH(ENAME)=5
  AND DEPTNO=30;


--208. Display employees
--having reporting manager
--from dept 20 and 30.

SELECT *
FROM EMP
WHERE MGR IS NOT NULL
  AND DEPTNO IN (20,30);


--209. Display employee numbers
--whose names do not end with 'S'.

SELECT EMPNO
FROM EMP
WHERE ENAME NOT LIKE '%S';


--210. List all CLERKs
--in dept 30
--salary above 2000.

SELECT *
FROM EMP
WHERE JOB='CLERK'
  AND DEPTNO=30
  AND SAL>2000;


--211. List employees
--third character is R
--not CLERK
--joined after JUN-81.

SELECT *
FROM EMP
WHERE ENAME LIKE '__R%'
  AND JOB<>'CLERK'
  AND HIREDATE > TO_DATE('30-JUN-81','DD-MON-RR');


--212. List all employees
--working under the same manager.

SELECT *
FROM EMP
WHERE MGR IN
(
    SELECT MGR
    FROM EMP
    WHERE MGR IS NOT NULL
    GROUP BY MGR
    HAVING COUNT(*)>1
);


--213. List departments
--whose location has A as the last but one character
--deptno not 10.

SELECT *
FROM DEPT
WHERE LOC LIKE '%A_'
  AND DEPTNO<>10;


--214. List MANAGERs
--not getting commission
--dept 20 and 30.

SELECT *
FROM EMP
WHERE JOB='MANAGER'
  AND COMM IS NULL
  AND DEPTNO IN (20,30);


--215. Display employees
--whose names contain AR together
--and are getting commission.

SELECT *
FROM EMP
WHERE ENAME LIKE '%AR%'
  AND COMM IS NOT NULL;


--216. Display employees
--having the same salary.

SELECT *
FROM EMP
WHERE SAL IN
(
    SELECT SAL
    FROM EMP
    GROUP BY SAL
    HAVING COUNT(*)>1
);


--217. Display employees
--except salary between 1000 and 5000
--hired after 1980.

SELECT *
FROM EMP
WHERE SAL NOT BETWEEN 1000 AND 5000
  AND HIREDATE > '31-12-80';


--218. Display department names and locations
--containing string 'ON'.

SELECT DNAME, LOC
FROM DEPT
WHERE DNAME LIKE '%ON%'
   OR LOC LIKE '%ON%';


--219. Display employees
--hired in 1981
--without reporting manager.

SELECT *
FROM EMP
WHERE TO_CHAR(HIREDATE,'YYYY')='1981'
  AND MGR IS NULL;


--220. List employees
--salary<1000
--name starts with S
--ends with H
--dept 20.

SELECT *
FROM EMP
WHERE SAL<1000
  AND ENAME LIKE 'S%H'
  AND DEPTNO=20;

--221. Display all the employees who are joined after 17-DEC-80,
--getting salary greater than 2000,
--job is ANALYST,
--name starts with S and ends with T.

SELECT *
FROM EMP
WHERE HIREDATE > TO_DATE('17-DEC-80','DD-MON-RR')
  AND SAL > 2000
  AND JOB = 'ANALYST'
  AND ENAME LIKE 'S%T';


--222. Display all the employees whose name contains at least one 'O',
--job is ANALYST,
--joined after 17-NOV-81.

SELECT *
FROM EMP
WHERE ENAME LIKE '%O%'
  AND JOB = 'ANALYST'
  AND HIREDATE > TO_DATE('17-NOV-81','DD-MON-RR');


--223. Display all SALESMAN, ANALYST, PRESIDENT and MANAGER
--whose salary is greater than 1000
--and who are getting commission.

SELECT *
FROM EMP
WHERE JOB IN ('SALESMAN','ANALYST','PRESIDENT','MANAGER')
  AND SAL > 1000
  AND COMM IS NOT NULL;


--224. Display all employees who are not MANAGER or ANALYST,
--working in dept 20 or 30,
--salary between 1000 and 3000,
--name contains at least one 'O'.

SELECT *
FROM EMP
WHERE JOB NOT IN ('MANAGER','ANALYST')
  AND DEPTNO IN (20,30)
  AND SAL BETWEEN 1000 AND 3000
  AND ENAME LIKE '%O%';


--225. List all the SALESMAN and ANALYST
--working in dept 20 and 30
--salary between 1000 and 2000.

SELECT *
FROM EMP
WHERE JOB IN ('SALESMAN','ANALYST')
  AND DEPTNO IN (20,30)
  AND SAL BETWEEN 1000 AND 2000;


--226. List employees whose salary is NOT between 2000 and 3000,
--dept 10,
--except CLERKs.

SELECT *
FROM EMP
WHERE SAL NOT BETWEEN 2000 AND 3000
  AND DEPTNO = 10
  AND JOB <> 'CLERK';


--227. Display SALESMAN whose quarterly salary ends with 5.

SELECT *
FROM EMP
WHERE JOB = 'SALESMAN'
  AND TO_CHAR(SAL * 3) LIKE '%5';


--228. List all employees from ACCOUNTING department
--and all employees located at BOSTON.

SELECT *
FROM EMP
WHERE DEPTNO IN
(
    SELECT DEPTNO
    FROM DEPT
    WHERE DNAME = 'ACCOUNTING'
       OR LOC = 'BOSTON'
);


--229. Display all employees whose names start with W or M.

SELECT *
FROM EMP
WHERE ENAME LIKE 'W%'
   OR ENAME LIKE 'M%';


--230. List employee numbers
--ending with 4 or 7.

SELECT EMPNO
FROM EMP
WHERE TO_CHAR(EMPNO) LIKE '%4'
   OR TO_CHAR(EMPNO) LIKE '%7';


--231. List employees whose manager is either BLAKE or KING.

SELECT *
FROM EMP
WHERE MGR IN
(
    SELECT EMPNO
    FROM EMP
    WHERE ENAME IN ('BLAKE','KING')
);


--232. List employees
--joined before 1982
--salary greater than 2000.

SELECT *
FROM EMP
WHERE HIREDATE < '01-01-82'
  AND SAL > 2000;


--233. List employees whose name starts with A
--and has another A somewhere later.

SELECT *
FROM EMP
WHERE ENAME LIKE 'A%A%';


--234. List employees whose manager is KING
--and salary more than 1500.

SELECT *
FROM EMP
WHERE MGR =
(
    SELECT EMPNO
    FROM EMP
    WHERE ENAME = 'KING'
)
AND SAL > 1500;


--235. Display employees in department 10
--whose salary is less than 1000.

SELECT *
FROM EMP
WHERE DEPTNO = 10
  AND SAL < 1000;


--236. Display employees
--getting commission
--designation is neither MANAGER nor CLERK.

SELECT *
FROM EMP
WHERE COMM IS NOT NULL
  AND JOB NOT IN ('MANAGER','CLERK');


--237. Display employees
--getting commission
--designation is neither MANAGER nor CLERK.

SELECT *
FROM EMP
WHERE COMM IS NOT NULL
  AND JOB NOT IN ('MANAGER','CLERK');


--238. Display employees
--joined in December.

SELECT *
FROM EMP
WHERE HIREDATE LIKE '%12%';


--239. Display employees
--whose name has consecutive LL.

SELECT *
FROM EMP
WHERE ENAME LIKE '%LL%';


--240. Display employees
--salary NOT between 2000 and 5000
--department 10 and 20.

SELECT *
FROM EMP
WHERE SAL NOT BETWEEN 2000 AND 5000
  AND DEPTNO IN (10,20);

--241. List all the employees whose job is neither CLERK nor SALESMAN
--in department 10.

SELECT *
FROM EMP
WHERE JOB NOT IN ('CLERK','SALESMAN')
  AND DEPTNO = 10;


--242. List all the location names having at least one 'O'
--in department 30 and 40.

SELECT LOC
FROM DEPT
WHERE DEPTNO IN (30,40)
  AND LOC LIKE '%O%';


--243. List all the employees whose job is not CLERK
--and annual salary is more than 1000.

SELECT *
FROM EMP
WHERE JOB <> 'CLERK'
  AND SAL*12 > 1000;


--244. Select the employees whose names have
--two consecutive L's.

SELECT *
FROM EMP
WHERE ENAME LIKE '%LL%';


--245. Select all the employees whose EMPNO ends with 9.

SELECT *
FROM EMP
WHERE TO_CHAR(EMPNO) LIKE '%9';


--246. List all employees who joined except in APR and NOV
--and salary more than 2500.

SELECT *
FROM EMP
WHERE TO_CHAR(HIREDATE,'MON') NOT IN ('APR','NOV')
  AND SAL > 2500;


--247. List all employees whose annual salary
--is equal to or more than 10000.

SELECT *
FROM EMP
WHERE SAL*12 >= 10000;


--248. Display only ENAME
--whose name has consecutive TT.

SELECT ENAME
FROM EMP
WHERE ENAME LIKE '%TT%';


--249. List ENAME, JOB, DEPTNO
--who have a reporting manager.

SELECT ENAME, JOB, DEPTNO
FROM EMP
WHERE MGR IS NOT NULL;


--250. Display all employees whose salary
--is less than 1000 in dept 10 and 30.

SELECT *
FROM EMP
WHERE SAL < 1000
  AND DEPTNO IN (10,30);


--251. List all employees whose salary is NOT between
--1000 and 2000 in dept 10,20 except MANAGER.

SELECT *
FROM EMP
WHERE SAL NOT BETWEEN 1000 AND 2000
  AND DEPTNO IN (10,20)
  AND JOB <> 'MANAGER';


--252. List all employees whose salary is between
--1000 and 1500 working in dept 20,30
--except CLERK and SALESMAN.

SELECT *
FROM EMP
WHERE SAL BETWEEN 1000 AND 1500
  AND DEPTNO IN (20,30)
  AND JOB NOT IN ('CLERK','SALESMAN');


--253. List department names having letter 'A'
--in both DNAME and LOCATION.

SELECT *
FROM DEPT
WHERE DNAME LIKE '%A%'
  AND LOC LIKE '%A%';


--254. Display all MANAGERs
--having 'S' as last character in ENAME.

SELECT *
FROM EMP
WHERE JOB = 'MANAGER'
  AND ENAME LIKE '%S';


--255. Display all employees
--joined after 02-FEB-80 except SALESMAN.

SELECT *
FROM EMP
WHERE HIREDATE > '02-02-80'
  AND JOB <> 'SALESMAN';


--256. Display all students
--who are ME or CIVIL
--percentage >75.

SELECT *
FROM STUDENT
WHERE BRANCH IN ('ME','CIVIL')
  AND PERCENTAGE > 75;


--257. List all employees except those
--who are NOT working in dept 10,20,30.
--(Equivalent to employees in 10,20,30)

SELECT *
FROM EMP
WHERE DEPTNO IN (10,20,30);


--258. Display all MANAGERs
--whose annual salary ends with 1.

SELECT *
FROM EMP
WHERE JOB = 'MANAGER'
  AND TO_CHAR(SAL*12) LIKE '%1';


--259. Select all SALESMAN
--whose salary is NOT between 500 and 1000
--in department 20.

SELECT *
FROM EMP
WHERE JOB = 'SALESMAN'
  AND SAL NOT BETWEEN 500 AND 1000
  AND DEPTNO = 20;


--260. Display all employees
--who are MANAGER or CLERK
--and getting commission.

SELECT *
FROM EMP
WHERE JOB IN ('MANAGER','CLERK')
  AND COMM IS NOT NULL;

--261. List all the SALESMAN in dept 10
--having salary greater than 2500.

SELECT *
FROM EMP
WHERE JOB = 'SALESMAN'
  AND DEPTNO = 10
  AND SAL > 2500;


--262. List all the employees whose name starts with K or P.

SELECT *
FROM EMP
WHERE ENAME LIKE 'K%'
   OR ENAME LIKE 'P%';


--263. Display employees whose name contains letter 'R'.

SELECT *
FROM EMP
WHERE ENAME LIKE '%R%';


--264. List all the employees whose name starts with
--M or K or N.

SELECT *
FROM EMP
WHERE ENAME LIKE 'M%'
   OR ENAME LIKE 'K%'
   OR ENAME LIKE 'N%';


--265. Display all SALESMAN
--having R as the last character in ENAME
--and salary having exactly 4 digits.

SELECT *
FROM EMP
WHERE JOB = 'SALESMAN'
  AND ENAME LIKE '%R'
  AND LENGTH(TO_CHAR(SAL)) = 4;


--266. Display all employees whose JOB has string 'LES'.

SELECT *
FROM EMP
WHERE JOB LIKE '%LES%';


--267. Select all CLERKs
--whose 4th character is L
--salary less than 2000.

SELECT *
FROM EMP
WHERE JOB = 'CLERK'
  AND ENAME LIKE '___L%'
  AND SAL < 2000;


--268. List employees whose name doesn't have letter S.

SELECT *
FROM EMP
WHERE ENAME NOT LIKE '%S%';


--269. List employees whose salary is NOT between
--1000 and 2000
--dept 20 and 30
--except CLERK and ANALYST.

SELECT *
FROM EMP
WHERE SAL NOT BETWEEN 1000 AND 2000
  AND DEPTNO IN (20,30)
  AND JOB NOT IN ('CLERK','ANALYST');


--270. List employees whose name starts with S
--and ends with H.

SELECT *
FROM EMP
WHERE ENAME LIKE 'S%H';


--271. List employees whose salary is >1500 and <2500.

SELECT *
FROM EMP
WHERE SAL > 1500
  AND SAL < 2500;


--272. List SALESMAN
--whose 2nd character is M
--salary between 500 and 1500.

SELECT *
FROM EMP
WHERE JOB = 'SALESMAN'
  AND ENAME LIKE '_M%'
  AND SAL BETWEEN 500 AND 1500;


--273. List employee name, job and salary
--having at least one S in name
--salary >2000
--no commission
--dept 10 and 20.

SELECT ENAME, JOB, SAL
FROM EMP
WHERE ENAME LIKE '%S%'
  AND SAL > 2000
  AND COMM IS NULL
  AND DEPTNO IN (10,20);


--274. List all MANAGERs and CLERKs
--joined in 1981
--salary >2000
--no commission.

SELECT *
FROM EMP
WHERE JOB IN ('MANAGER','CLERK')
  AND TO_CHAR(HIREDATE,'YYYY') = '1981'
  AND SAL > 2000
  AND COMM IS NULL;


--275. List departments
--having at least one O in location
--deptno exactly 2 digits
--department name should not contain %.

SELECT *
FROM DEPT
WHERE LOC LIKE '%O%'
  AND LENGTH(TO_CHAR(DEPTNO)) = 2
  AND DNAME NOT LIKE '%\%%' ESCAPE '\';


--276. List employees
--EMPNO doesn't end with 2
--name doesn't end with N or K
--hired before 1981
--salary >800
--salary contains at least one 0.

SELECT *
FROM EMP
WHERE TO_CHAR(EMPNO) NOT LIKE '%2'
  AND ENAME NOT LIKE '%N'
  AND ENAME NOT LIKE '%K'
  AND HIREDATE < '01-01-81'
  AND SAL > 800
  AND TO_CHAR(SAL) LIKE '%0%';


--277. List employees
--having reporting manager
--name doesn't contain R or A
--salary between 2000 and 3000
--joined after 1980 before 1983
--dept 10,20,30.

SELECT *
FROM EMP
WHERE MGR IS NOT NULL
  AND ENAME NOT LIKE '%R%'
  AND ENAME NOT LIKE '%A%'
  AND SAL BETWEEN 2000 AND 3000
  AND HIREDATE BETWEEN '01-01-81' AND '31-12-82'
  AND DEPTNO IN (10,20,30);


--278. Display employees
--joined in JAN, NOV or APR
--dept 10 and 20 (not 30)
--salary >2500.

SELECT *
FROM EMP
WHERE TO_CHAR(HIREDATE,'MON') IN ('JAN','NOV','APR')
  AND DEPTNO IN (10,20)
  AND SAL > 2500;


--279. Display employee names
--starting with A, J or K
--salary between 800 and 2500
--no commission.

SELECT ENAME
FROM EMP
WHERE (ENAME LIKE 'A%'
    OR ENAME LIKE 'J%'
    OR ENAME LIKE 'K%')
  AND SAL BETWEEN 800 AND 2500
  AND COMM IS NULL;


--280. Display employee names
--whose gross salary is more than 1500.

SELECT ENAME
FROM EMP
WHERE SAL + NVL(COMM,0) > 1500;

--281. Display employee names whose EMPNO is between 7521 and 7782.

SELECT ENAME
FROM EMP
WHERE EMPNO BETWEEN 7521 AND 7782;


--282. Display employee numbers
--who don't get any commission
--working in dept 30
--salary exactly 1600.

SELECT EMPNO
FROM EMP
WHERE COMM IS NULL
  AND DEPTNO = 30
  AND SAL = 1600;


--283. List all MANAGERs
--salary less than 2500
--yearly bonus = 5000
--display annual salary.

SELECT EMP.*,
       SAL*12 AS ANNUAL_SALARY,
       5000 AS YEARLY_BONUS
FROM EMP
WHERE JOB = 'MANAGER'
  AND SAL < 2500;


--284. List all employees
--whose name has consecutive LL
--job contains at least one L
--deptno = 10.

SELECT *
FROM EMP
WHERE ENAME LIKE '%LL%'
  AND JOB LIKE '%L%'
  AND DEPTNO = 10;


--285. List employees
--joined between 30-DEC-81 and 30-DEC-87
--dept 20 and 30
--display annual salary with bonus of half year's salary.

SELECT EMP.*,
       SAL*12 + (SAL*6) AS ANNUAL_SALARY_WITH_BONUS
FROM EMP
WHERE HIREDATE BETWEEN '30-12-81' AND '30-12-87'
  AND DEPTNO IN (20,30);


--286. List employees
--monthly salary between 1000 and 5000
--dept not 20
--joined after 01-JAN-82
--before 01-JAN-88
--display annual salary.

SELECT EMP.*,
       SAL*12 AS ANNUAL_SALARY
FROM EMP
WHERE SAL BETWEEN 1000 AND 5000
  AND DEPTNO <> 20
  AND HIREDATE > '01-JAN-82'
  AND HIREDATE < '01-JAN-88';


--287. List employees
--having reporting manager
--dept 20 or 30
--name starts with S.

SELECT *
FROM EMP
WHERE MGR IS NOT NULL
  AND DEPTNO IN (20,30)
  AND ENAME LIKE 'S%';


--288. List departments
--which do not have letter T
--in both location and department name.

SELECT *
FROM DEPT
WHERE LOC NOT LIKE '%T%'
  AND DNAME NOT LIKE '%T%';


--289. List employees
--hired before 1983
--salary between 500 and 1500
--getting no commission.

SELECT *
FROM EMP
WHERE HIREDATE < '01-JAN-83'
  AND SAL BETWEEN 500 AND 1500
  AND COMM IS NULL;


--290. List SALESMAN
--dept 30
--joined in 1981
--getting commission.

SELECT *
FROM EMP
WHERE JOB = 'SALESMAN'
  AND DEPTNO = 30
  AND HIREDATE BETWEEN'01-01-1981' AND '31-12-1981'
  AND COMM IS NOT NULL;


--291. List employees
--dept 20 and 30
--EMPNO ends with 8 or 9
--salary below 5000.

SELECT *
FROM EMP
WHERE DEPTNO IN (20,30)
  AND (TO_CHAR(EMPNO) LIKE '%8'
       OR TO_CHAR(EMPNO) LIKE '%9')
  AND SAL < 5000;


--292. List CLERKs and SALESMAN
--dept 10,20,30
--name starts with A.

SELECT *
FROM EMP
WHERE JOB IN ('CLERK','SALESMAN')
  AND DEPTNO IN (10,20,30)
  AND ENAME LIKE 'A%';


--293. Display employees
--working as MANAGER, SALESMAN or ANALYST
--salary 3000 or more.

SELECT *
FROM EMP
WHERE JOB IN ('MANAGER','SALESMAN','ANALYST')
  AND SAL >= 3000;


--294. Display ANALYST
--whose name doesn't end with S.

SELECT *
FROM EMP
WHERE JOB = 'ANALYST'
  AND ENAME NOT LIKE '%S';


--295. Display employees
--whose total salary is more than 2000.

SELECT *
FROM EMP
WHERE SAL + NVL(COMM,0) > 2000;


--296. Display employees
--department 10 or 20
--salary between 1000 and 4000.

SELECT *
FROM EMP
WHERE DEPTNO IN (10,20)
  AND SAL BETWEEN 1000 AND 4000;


--297. Display employees
--salary is 4 digits
--starts with 2
--ends with 0.

SELECT *
FROM EMP
WHERE LENGTH(TO_CHAR(SAL)) = 4
  AND TO_CHAR(SAL) LIKE '2%0';


--298. List employees
--earning exactly 3000
--department 20.

SELECT *
FROM EMP
WHERE SAL = 3000
  AND DEPTNO = 20;


--299. List employees
--whose job does not end with T.

SELECT *
FROM EMP
WHERE JOB NOT LIKE '%T';


--300. List all MANAGER and ANALYST
--using IN operator.

SELECT *
FROM EMP
WHERE JOB IN ('MANAGER','ANALYST');

