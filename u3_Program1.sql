--Write a PL/SQL block to accept student name from a user if it is exist display his/her result from RESULT table otherwise display appropriate message using exception handling.

set serveroutput on
declare
	xroll_no number(4);
	xname char(10):='&xname';
	xper char(5);
begin
	select roll_no,per INTO xroll_no,xper from result where name=xname;
	dbms_output.put_line('Student Roll_no:'||xroll_no);
	
	dbms_output.put_line('Student Percentage'||xper);
EXCEPTION
	WHEN NO_DATA_FOUND THEN 
	dbms_output.put_line('Student name entered by you not found in result table:');

end;
/
