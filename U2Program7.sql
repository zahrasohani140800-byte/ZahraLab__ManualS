--Write a PL/SQL block using a parameterized cursor that displays the department wise basic salary of each employee and department wise total gross salary. (Use Cursor For Loop)
set serveroutput on
declare

cursor cur2(dno number) IS select ename,deptno,basicsal,gross from empl where deptno=dno;
begin
for r1 IN cur2(302)
loop
dbms_output.put_line('Ename: '||r1.ename||' Deptno: '|| r1.deptno||'salary: '|| r1.basicsal|| ' Gross:' || r1.gross);
end loop;
end;
/