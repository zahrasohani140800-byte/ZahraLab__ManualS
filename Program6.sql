--program to take user input and perform square and cube 
set serveroutput on
declare 
	n1 number(10):=&n1;
	square number(10);
	cube number(10);
begin
	square:=n1*n1;
	cube:=n1*n1*n1;
	dbms_output.put_line('S of number is '||square);
	dbms_output.put_line('C of number is '||cube);
end;
/