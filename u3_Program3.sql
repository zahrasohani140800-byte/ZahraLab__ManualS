--Write a PL/SQL block to accept employee name from a user if it is exist display his/her basic salary otherwise display appropriate message using exception handling.

set serveroutput on
declare
	xeid number(4);
	enm char(15):='&enm';
	dno number(4);
	sal number(8);
begin
	select eid,deptno,basicsal INTO xeid,dno,sal from empl where ename=enm;
	dbms_output.put_line('Employee ID:'||xeid);
	dbms_output.put_line('Department no:'||dno);

	dbms_output.put_line('Employee Salary:'||sal);
EXCEPTION
	WHEN NO_DATA_FOUND THEN
	dbms_output.put_line('Employee Name entered by u not found in emp table:');

end;
/