DECLARE
  v_salary NUMBER(8);
BEGIN
  SELECT SAL INTO v_salary FROM EMP
  WHERE EMPNO = 7839;
  DBMS_OUTPUT.PUT_LINE(v_salary);
END;
/


DECLARE
  v_salary NUMBER(8);
  v_ename VARCHAR2(20);
BEGIN
  SELECT SAL,ENAME INTO v_salary,v_ename FROM EMP
  WHERE EMPNO = 7839;
  DBMS_OUTPUT.PUT_LINE(v_ename || ' has salaray ' || v_salary);
END;
  