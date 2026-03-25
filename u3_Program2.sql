--Write a PL/SQL block that explains the use of ZERO_DIVIDE exception.
set serveroutput on
declare
	p number:=&p;
	q number:=&q;
	ans number;
begin
	dbms_output.put_line('value of p:'||p);
	dbms_output.put_line('value of q:'||q);
	ans:=p/q;
	dbms_output.put_line('answer :'||ans);
EXCEPTION
	WHEN ZERO_DIVIDE THEN dbms_output.put_line('value of q must not be zero');
end;
/