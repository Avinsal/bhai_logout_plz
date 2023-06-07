set serveroutput on
declare 
pl_GPA StudentTable.GPA%Type;
pl_RollNo StudentTable.RollNo%Type;
begin 


pl_RollNo:='&RollNo';


Select GPA
INTO pl_GPA
from StudentTable
WHERE pl_RollNo=RollNo;

IF pl_GPA > 0 and pl_GPA <=4 THEN 
	dbms_output.put_line('F');
ELSIF pl_GPA >4 and pl_GPA <=5 THEN 
	dbms_output.put_line('E');
ELSIF pl_GPA >5 and pl_GPA <=6 THEN 
	dbms_output.put_line('D');
ELSIF pl_GPA >6 and pl_GPA <=7 THEN 
	dbms_output.put_line('C');
ELSIF pl_GPA >7 and pl_GPA <=8 THEN 
	dbms_output.put_line('B');
ELSIF pl_GPA > 8 and pl_GPA <=9 THEN 
	dbms_output.put_line('A');
ELSIF pl_GPA > 9 and pl_GPA <=10 THEN 
	dbms_output.put_line('A+');


END IF;

end;
/

