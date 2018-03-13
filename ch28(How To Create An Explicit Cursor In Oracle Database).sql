SET SERVEROUTPUT ON;
DECLARE
  v_name VARCHAR2(30);
  -- Declare the cursor
  CURSOR cur_Example IS
  SELECT ENAME FROM EMP
  WHERE EMPNO < 7700;
BEGIN
  OPEN cur_Example;
  LOOP
    FETCH cur_Example INTO v_name;
    DBMS_OUTPUT.PUT_LINE(v_name);
    EXIT WHEN cur_Example%NOTFOUND;
  END LOOP;
  CLOSE cur_Example;
END;
/