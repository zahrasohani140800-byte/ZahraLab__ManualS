--program to delete record from emp
set serveroutput on
declare 	
	id number(3) := &id;
begin
	delete from emp where emp_id=id;
	dbms_output.put_line('Record  is deleted');
end;
/