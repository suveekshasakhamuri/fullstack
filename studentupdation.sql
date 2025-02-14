declare
  no student.rno%type;
  tot student.total%type;
  aveg student.average%type;
  div student.division%type;
  s1 student.s1marks%type;
  s2 student.s2marks%type;
  s3 student.s3marks%type;
begin
  no:=&no;
  select s1marks,s2marks,s3marks into s1,s2,s3 from student where rno=no;
  tot:=(s1+s2+s3);
  aveg:=(s1+s2+s3)/3;
  if(s1<35 or s2<35) then div:='FAIL';
   elsif(aveg>35 and aveg<50) then div:='THIRD';
    elsif(aveg>=50 and aveg<60) then div:='SECOND';
     elsif(aveg>=60) then div:='FIRST';
  end if;
  update student set total=tot,average=aveg,division=div where rno=no;
  dbms_output.put_line(no||' student updated successfully');
exception
  when no_data_found then
  dbms_output.put_line(no||' student does not exist');
end;