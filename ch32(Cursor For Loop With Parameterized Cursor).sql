SET SERVEROUTPUT ON;
DECLARE
  CURSOR cur_Example ( var_eid NUMBER ) IS
  SELECT ENAME,EMPNO FROM EMP
  WHERE EMPNO > var_eid;
BEGIN
  FOR L_IDX IN cur_Example(7800)
  LOOP
    DBMS_OUTPUT.PUT_LINE( L_IDX.EMPNO || ' ' || L_IDX.ENAME );
  END LOOP;
END;
/