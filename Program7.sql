--program to accept product name, qty and price from user and then calculate discount.
set serveroutput on
declare
	xproid NUMBER(2):=&xproid;
	xproname char(15);
	xqty number(5);
	p number(5);
	tb number(15);
	
begin
	select proname,qty,price into xproname,xqty,p from product where proid=xproid;
	tb:=xqty*p;
	update product set totalbill=tb where proid=xproid;
	if tb<5000 then 
	update product set disc=0 where proid=xproid;
	elsif tb>=5000 and tb<8000 then 
	update product set disc=totalbill*0.05 where proid=xproid;
	elsif tb>=8000 and tb<15000 then
	update product set disc=totalbill*0.10 where proid=xproid;
	elsif tb>=15000 then
	update product set disc=totalbill*0.15 where proid=xproid;
	else
	update product set disc=0 where proid=xproid;
	end if;
	
end;
/
