set serveroutput on
declare 
pl_GPA StudentTable.GPA%Type;
pl_RollNo StudentTable.RollNo%Type;
pl_stu number(10);
i number := 1;
begin 

Select count(RollNo)
INTO pl_Stu
from StudentTable;

LOOP
	Select GPA
	INTO pl_GPA
	from StudentTable
	WHERE RollNo=i;

	Select RollNo
	into pl_RollNo	
	from StudentTable
	where rollNo=i;

	IF pl_GPA > 0 and pl_GPA <=4 THEN 
		dbms_output.put_line(pl_RollNo||' '||pl_GPA||' F');
	ELSIF pl_GPA >4 and pl_GPA <=5 THEN 
		dbms_output.put_line(pl_RollNo||' '||pl_GPA||' E');
	ELSIF pl_GPA >5 and pl_GPA <=6 THEN 
		dbms_output.put_line(pl_RollNo||' '||pl_GPA||' D');
	ELSIF pl_GPA >6 and pl_GPA <=7 THEN 
		dbms_output.put_line(pl_RollNo||' '||pl_GPA||' C');
	ELSIF pl_GPA >7 and pl_GPA <=8 THEN 
		dbms_output.put_line(pl_RollNo||' '||pl_GPA||' B');
	ELSIF pl_GPA > 8 and pl_GPA <=9 THEN 
		dbms_output.put_line(pl_RollNo||' '||pl_GPA||' A');
	ELSIF pl_GPA > 9 and pl_GPA <=10 THEN 
		dbms_output.put_line(pl_RollNo||' '||pl_GPA||' A+');

	END IF;


	i:=i+1;

	IF i>pl_stu THEN EXIT;

	END IF;
END LOOP;
end;
/

