--write a program that converts temperature from celcius to fahrenhit.
set serveroutput on
declare
	cel number:=&cel;
	far number;
begin 
	far:=(cel*9/5)+32;
	dbms_output.put_line('celsius:'||cel);
	dbms_output.put_line('fahrenhit:'||far);
end;
/