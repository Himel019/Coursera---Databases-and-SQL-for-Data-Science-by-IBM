select EMP_ID, F_NAME, L_NAME, SALARY
from Employees
where SALARY < 
	(select AVG(SALARY) from EMPLOYEES)
;

select EMP_ID, SALARY, 
	(select AVG(SALARY) as AVG_SALARY from EMPLOYEES)
from EMPLOYEES
;

select * from 
	(select EMP_ID, F_NAME, L_NAME, DEP_ID from EMPLOYEES) as EMP4ALL
;

select * from EMPLOYEES
	where DEP_ID in
	(select DEPT_ID_DEP from DEPARTMENTS)
;

select * from EMPLOYEES
where DEP_ID in 
	(select DEPT_ID_DEP 
	from DEPARTMENTS
	where LOC_ID = 'L0001')
;

select DEPT_ID_DEP, DEP_NAME
from DEPARTMENTS
where DEPT_ID_DEP in
	(select DEP_ID from EMPLOYEES
	where SALARY > 70000)
;

select * from EMPLOYEES, DEPARTMENTS
;

select * from EMPLOYEES, DEPARTMENTS
where EMPLOYEES.DEP_ID = DEPARTMENTS.DEPT_ID_DEP
;

select * from 
EMPLOYEES E, DEPARTMENTS D 
where E.DEP_ID = D.DEPT_ID_DEP
;

select E.EMP_ID, D.DEP_NAME
from EMPLOYEES E, DEPARTMENTS D 
where E.DEP_ID = D.DEPT_ID_DEP
;