SET SERVEROUTPUT ON;
DECLARE
  v_emp EMP%ROWTYPE;
BEGIN
  SELECT ENAME, HIREDATE INTO v_emp.ENAME, v_emp.HIREDATE FROM EMP
  WHERE EMPNO = 7788;
  
  DBMS_OUTPUT.PUT_LINE(v_emp.ENAME);
  DBMS_OUTPUT.PUT_LINE(v_emp.HIREDATE);

END;
/