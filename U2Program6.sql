--Write a PL/SQL block using a parameterized cursor that displays the department wise basic salary of each employee and department wise total gross salary. (Parameterized Cursor)
DECLARE
Cursor c1(xdeptno number) IS select ename,deptno,basicsal,gross from empl where deptno = xdeptno;
x c1%ROWTYPE; --rowtype then use cursor name as a tablename
BEGIN
Open c1(301);
loop
fetch c1 INTO x;
exit when C1%NOTFOUND;
dbms_output.put_line('Ename: '||x.ename||' Deptno: '|| x.deptno||'salary: '|| x.basicsal ||'gross: ' || x.gross);
end loop;
close c1;
END;
/