set serveroutput on
declare 
pl_GPA StudentTable.GPA%Type;
pl_RollNo StudentTable.RollNo%Type;
grade varchar(10);
i number(10):=1;
pl_stu number(10);
temp number:=0;
begin 

Select count(RollNo)
INTO pl_Stu
from StudentTable;

FOR i in 1..pl_stu LOOP

Select GPA
INTO pl_GPA
from StudentTable
where RollNo=i;


IF pl_GPA>temp THEN
	temp:=pl_GPA;
END IF;

temp:=pl_GPA;

END LOOP;

DBMS_OUTPUT.PUT_LINE ('Highest GPA='||''||temp);

end;
/