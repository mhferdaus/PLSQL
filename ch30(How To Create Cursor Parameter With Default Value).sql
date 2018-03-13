SET SERVEROUTPUT ON;
DECLARE
  v_name VARCHAR2(30);
  v_eid NUMBER(10);
  CURSOR cur_Example (var_e_id NUMBER := 7700) IS
  SELECT ENAME,EMPNO FROM EMP
  WHERE EMPNO > var_e_id;
BEGIN
  OPEN cur_Example(7800); -- if no value in bracket, then default
  LOOP
    FETCH cur_Example into v_name,v_eid;
    EXIT WHEN cur_Example%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(v_name || ' ' || v_eid);
  END LOOP;
  CLOSE cur_Example;
END;
/