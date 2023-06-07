set serveroutput on
declare 
pl_GPA StudentTable.GPA%Type;
pl_RollNo StudentTable.RollNo%Type;
grade varchar(10);
i number := 1;
pl_stu number(10);
begin 

Select count(RollNo)
INTO pl_Stu
from StudentTable;


WHILE i<pl_stu+1
LOOP

Select GPA
INTO pl_GPA
from StudentTable
WHERE RollNo=i;

IF pl_GPA > 0 and pl_GPA <=4 THEN grade:='F';
	
ELSIF pl_GPA >4 and pl_GPA <=5 THEN grade:='E';
	
ELSIF pl_GPA >5 and pl_GPA <=6 THEN grade:='D';
	
ELSIF pl_GPA >6 and pl_GPA <=7 THEN grade:='C';
	
ELSIF pl_GPA >7 and pl_GPA <=8 THEN grade:='B';
	
ELSIF pl_GPA > 8 and pl_GPA <=9 THEN grade:='A';
	
ELSIF pl_GPA > 9 and pl_GPA <=10 THEN grade:='A+';

END IF;

Update Studenttable
set LetterGrade=grade
where RollNo=i;

i:=i+1;

END LOOP;

end;
/

