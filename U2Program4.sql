--Write a pl/sql block that uses %rowcount to display name,department,basicsal of first 5 empl getting highest sal
set serveroutput on 
declare
	cursor def3 is select ename,deptname,basicsal from empl order by basicsal desc;
	nm empl.ename%TYPE;
	dm empl.deptname%TYPE;
	sal empl.basicsal%TYPE;
	n number;
begin
	open def3;
	loop
	fetch def3 into nm,dm,sal;
	exit when def3%NOTFOUND;
	dbms_output.put_line('Name:'||nm);
	dbms_output.put_line('Department Name:'||dm);
	dbms_output.put_line('Basic Salary:'||sal);
	n:=def3%ROWCOUNT;
	end loop;
	close def3;
	dbms_output.put_line('Total rows:'||n);
end;
/