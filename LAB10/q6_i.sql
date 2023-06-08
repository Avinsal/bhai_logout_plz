DECLARE
    CURSOR C IS SELECT DISTINCT dept_name FROM instructor;
BEGIN
    FOR I IN C
    LOOP
        disp(I.dept_name);
    END LOOP;
END;
/