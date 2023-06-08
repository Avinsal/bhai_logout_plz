set serveroutput on
CREATE OR REPLACE
PROCEDURE display_msg IS

BEGIN

dbms_output.put_line('Good day to you');

End;
/