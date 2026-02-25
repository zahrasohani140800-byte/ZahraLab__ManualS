--Write a program which accept measurement in feet and display it in cm,inches and meter.
set serveroutput on
declare 
	feet number;
	cm number;
	inch number;
	meter number;
begin
	feet:=&feet;
	--conversion
	cm:=feet*30.48;
	inch:=feet*12;
	meter:=feet*0.3048;
	dbms_output.put_line('feet:'||feet);
	dbms_output.put_line('centimeter:'||cm);
	dbms_output.put_line('inches:'||inch);
	dbms_output.put_line('meters:'||meter);
end;
/