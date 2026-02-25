--Program to display all records of male employees working in HR department
set serveroutput on
declare
	v_eid Em.id%TYPE;
	v_ename Em.name%TYPE;
	v_dname Em.dname%TYPE;
	v_salary Em.salary%TYPE;
	v_gender Em.gender%TYPE;
begin
	select id,name,dname,salary,gender into v_eid,v_ename,v_dname,v_salary,v_gender from em where gender='M' and dname='HR';
	dbms_output.put_line('EID: '||v_eid|| ',Name: '||v_ename|| ',Dept: '||v_dname|| ',Salary: '||v_salary|| ',Gender: '||v_gender);
end;
/ 