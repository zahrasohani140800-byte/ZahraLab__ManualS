--program to print 1 to n using loop, for loop and while loop.
set serveroutput on 
declare 
	i number:=1;
	n number(5):=&n;
	x number:=1;
begin
dbms_output.put_line('program using while loop');

while i<=n
loop
	dbms_output.put_line(i);
	i:=i+1;
end loop;

dbms_output.put_line('program using loop');

loop
	dbms_output.put_line(x);
	x:=x+1;
exit when x>n;
end loop;

dbms_output.put_line('program using for loop');

for i in 1..n
loop
	dbms_output.put_line(i);
end loop;



end;
/
