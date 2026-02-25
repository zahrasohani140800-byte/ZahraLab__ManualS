--program to calculate total,per,grade
set serveroutput on
declare
	xrollno number(1):=&xrollno;
	xsub1 number(2);
	xsub2 number(2);
	xsub3 number(3);
	xsub4 number(2);
	xsub5 number(2);
	t number(5);
	p number(5);

begin
select sub1,sub2,sub3,sub4,sub5 into xsub1,xsub2,xsub3,xsub4,xsub5 from res where rollno=xrollno;

if(xsub1 <40) and (xsub2 <40) and (xsub3 <40) and (xsub4 <40) and (xsub5 <40)
then
	update res set total=0,per=0,grade='F' where rollno=xrollno;
else
t:=xsub1+xsub2+xsub3+xsub4+xsub5;
p:=(t/5);
if p>40 and p<50 then

update res set total=t,per=p,grade='D' where rollno=xrollno;
elsif p>=50 and p<60 then
update res set total=t,per=p,grade='C' where rollno=xrollno;
elsif p>=60 and p<70 then
update res set total=t,per=p,grade='B' where rollno=xrollno;
elsif p>=70 and p<100 then
update res set total=t,per=p,grade='A' where rollno=xrollno;
else
update res set total=t,per=p,grade='F' where rollno=xrollno;
end if;
end if;
end;
/

