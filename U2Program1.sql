--Write pl/sql block that uses a cursor attribute SQL%ROWCOUNT to raise the basic salary of employees by 10% tht are working in department number 10 and also display the appropriate message based on the existence to the record in the emp table(Implicit Cursor).
set serveroutput on
begin
	update empl set BASICSAL=basicsal+(basicsal*0.10) where deptno=303;
	dbms_output.put_line('Salary Updated');
	if SQL%FOUND then 
	dbms_output.put_line('total no of records updated are:'||SQL%ROWCOUNT);
	end if;
end;
/