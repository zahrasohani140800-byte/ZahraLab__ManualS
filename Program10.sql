--program to display gross salary of employees
set serveroutput on
declare 
	xeid number(4):=&xeid;
	basic number(8);
	da number(8);
	hra number(8);
	medical number(3):=500;
	pf number(8);
	gross_sal number(8);

begin
	select basicsal into basic from empl where eid=xeid;
	da:=basic*0.50;
	hra:=basic*0.15;
	pf:=basic*0.10;
	
	gross_sal:=(basic + da + hra + medical)-pf;
	update empl set gross=gross_sal where eid=xeid;
	commit;

end;
/