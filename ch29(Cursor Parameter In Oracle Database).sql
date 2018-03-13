SET SERVEROUTPUT ON;
DECLARE
  v_name VARCHAR2(30);
  CURSOR p_cur_Example (var_e_id VARCHAR2) IS
  SELECT ENAME FROM EMP
  WHERE EMPNO < var_e_id;
BEGIN
  OPEN p_cur_Example(7700);
  LOOP
    FETCH p_cur_Example into v_name;
    EXIT WHEN p_cur_Example%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(v_name);
  END LOOP;
  CLOSE p_cur_Example;
END;
/