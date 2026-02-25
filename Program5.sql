--program to print simple interest
set serveroutput on
declare
	p number(10):=1000;
	r number(10):=2;
	n number(10):=5;
	si number(10);

begin
	si:=p*r*n/100;
	dbms_output.put_line('Simple interest is '||si);


end;
/