--Write a PL/SQL block to display the salary of that employee whose age is 45 year otherwise display appropriate message using exception handling.

set serveroutput on
declare
	xeid number(4);
	enm char(15);
	eage number(3):=&eage;
	sal number(8);
begin
	select eid,ename,basicsal INTO xeid,enm,sal from empl where age=eage;
	dbms_output.put_line('Employee ID:'||xeid);
	dbms_output.put_line('Employee Name:'||enm);

	dbms_output.put_line('Employee Salary:'||sal);
EXCEPTION
	WHEN NO_DATA_FOUND THEN dbms_output.put_line('Age entered by u not found in empl table:');

end;
/