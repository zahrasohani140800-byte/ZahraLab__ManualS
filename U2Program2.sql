--Write a pl/sql block that uses a cursor attribute %isopen and %not found(def2)
set serveroutput on
declare
	cursor def2 is select basicsal from empl where deptno=303;
	sal empl.basicsal%TYPE;
	n number;
begin
	open def2;
	if def2%isopen then
	loop
	fetch def2 into sal;
	exit when def2%notfound;
	n := sal*0.20;
	update empl set basicsal=sal+n where deptno=303;
	end loop;
	dbms_output.put_line('basicsal updated');
	close def2;
else
	dbms_output.put_line('cursor is not open');
end if;
end;
/