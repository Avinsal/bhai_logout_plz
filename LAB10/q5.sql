set serveroutput on 
CREATE OR REPLACE 
FUNCTION square(n number) 
RETURN number AS
Begin

Return n*n;
End;
/
