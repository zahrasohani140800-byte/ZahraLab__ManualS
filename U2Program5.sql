--Write a pl/sql block using a cursoe for loop to display name and the basic salary of top 3 highest paid employee(use cursor for loop).
set serveroutput on
begin 
	for r1 in (select ename,basicsal from (select ename,basicsal from empl order by basicsal desc) where rownum<=3)
	loop
	dbms_output.put_line('name:'||r1.ename);
	dbms_output.put_line('salary:'||r1.basicsal);
	end loop;
end;
/