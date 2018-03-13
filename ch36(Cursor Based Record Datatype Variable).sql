SET SERVEROUTPUT ON;
DECLARE
  CURSOR cur_Example IS
  SELECT ENAME, SAL FROM EMP
  WHERE EMPNO = 7788;
  
  var_emp cur_Example%ROWTYPE;
BEGIN
  OPEN cur_Example;
  FETCH cur_Example INTO var_emp;
  DBMS_OUTPUT.PUT_LINE(var_emp.ENAME);
  DBMS_OUTPUT.PUT_LINE(var_emp.SAL);
  CLOSE cur_Example;
END;
/