set serveroutput on
declare
pl_RollNo StudentTable.RollNo%Type;
pl_GPA StudentTable.GPA%Type;
begin
pl_RollNo:='&RollNo';

Select GPA
INTO pl_GPA
from StudentTable
WHERE pl_RollNo=RollNo;

dbms_output.put_line('-------------------------------------------------------');
dbms_output.put_line('GPA of '||pl_RollNo||' ');
dbms_output.put_line('-------------------------------------------------------');
dbms_output.put_line('GPA: '||pl_GPA||'');

end;
/