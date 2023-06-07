set serveroutput on
declare
name instructor.name%TYPE;
begin

select name into name
from instructor
where name='&name';

dbms_output.put_line(name||' Found');

exception
when no_data_found then dbms_output.put_line('No'||name||'Found');
when dup_val_on_index then dbms_output.put_line('There Are Duplicates');
end;
/