declare
  no empl.eno%type;
  sal empl.salary%type;
begin
  no:=&no;
  select salary into sal from empl where eno=no;
  sal:=(sal*10)/100;
  update empl set salary=salary+sal where eno=no;
  dbms_output.put_line(no||' employee salary updated successfully');
exception
  when no_data_found then 
  dbms_output.put_line(no||' Employee does not exist');
end;