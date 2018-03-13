SET SERVEROUTPUT ON;
DECLARE
  CURSOR cur_Example IS
  SELECT ENAME, SAL FROM EMP
  WHERE EMPNO > 7800;
  
  var_emp cur_Example%ROWTYPE;
BEGIN
  OPEN cur_Example;
  LOOP
    FETCH cur_Example INTO var_emp;
    EXIT WHEN cur_Example%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(var_emp.ENAME || ' ' || var_emp.SAL);
  END LOOP;
  CLOSE cur_Example;
END;
/

-- this one with for loop

SET SERVEROUTPUT ON;
DECLARE
  CURSOR cur_Example IS
  SELECT ENAME, SAL FROM EMP
  WHERE EMPNO > 7800;
  
  var_emp cur_Example%ROWTYPE;
BEGIN
  FOR var_emp IN cur_Example
  LOOP
    DBMS_OUTPUT.PUT_LINE(var_emp.ENAME || ' ' || var_emp.SAL);
  END LOOP;
END;
/ 