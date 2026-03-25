--definition 5
set serveroutput on
declare
	xEID NUMBER(4);
	xENAME CHAR(15);
	xDEPTNO NUMBER(3):=&xDEPTNO;
	xDEPTNAME CHAR(15);
	xGENDER CHAR(1);
	xAGE  NUMBER(3);
	xBASICSAL NUMBER(8);
	xGROSS NUMBER(8);
	dept_exc EXCEPTION;
	cursor e1 is select eid,ename,deptname,gender,age,basicsal,gross from empl where deptno=xdeptno;
begin
	open e1;
	loop
		fetch e1 into xeid,xename,xdeptname,xgender,xage,xbasicsal,xgross;
		exit when e1%NOTFOUND;
		insert into emp_backup values(Xeid,Xename,Xdeptno,Xdeptname,Xgender,Xage,Xbasicsal,Xgross);
	end loop;
	close e1;
	if xdeptno > 40 then
		Raise dept_exc;
	end if;
EXCEPTION

	WHEN dept_exc THEN
	dbms_output.put_line('department not found');
end;
/