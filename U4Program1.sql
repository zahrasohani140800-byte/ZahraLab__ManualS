--Write a simple procedure without any parameter that shows user defined message on the screen. Call the procedure using separate PL/SQL block and on the command line.*/
set serveroutput on
create or replace procedure msg
IS

Begin
	dbms_output.put_line('Welcome!');
end msg;
/