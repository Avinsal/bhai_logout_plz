set serveroutput on
CREATE OR REPLACE PROCEDURE disp(d_name VARCHAR) IS
    CURSOR C1 IS (SELECT name FROM instructor WHERE dept_name = d_name);
    CURSOR C2 IS (SELECT title FROM course WHERE dept_name = d_name);
BEGIN
DBMS_OUTPUT.PUT_LINE('----------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('Instructor Name');
DBMS_OUTPUT.PUT_LINE('----------------------------------------------');
    FOR I IN C1 LOOP
        DBMS_OUTPUT.PUT_LINE(I.name);
    END LOOP;
DBMS_OUTPUT.PUT_LINE('----------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('Course Title');
DBMS_OUTPUT.PUT_LINE('----------------------------------------------');
    FOR I IN C2    LOOP
        DBMS_OUTPUT.PUT_LINE(I.title);
    END LOOP;
END;
/
