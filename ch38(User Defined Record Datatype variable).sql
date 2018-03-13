SET SERVEROUTPUT ON;
DECLARE
  TYPE rv_dept IS RECORD
  (
    e_name  VARCHAR2(20),
    d_name DEPT.DNAME%TYPE
  );
  var1 rv_dept;
BEGIN
  SELECT ENAME,DNAME INTO var1.e_name,var1.d_name
  FROM EMP JOIN DEPT USING (DEPTNO) WHERE EMPNO = 7788;
  DBMS_OUTPUT.PUT_LINE(var1.e_name || ' ' || var1.d_name);
END;
/
