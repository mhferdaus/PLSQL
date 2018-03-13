CREATE OR REPLACE PROCEDURE emp_sal (dep_id NUMBER, sal_raise NUMBER)
IS
BEGIN
  UPDATE EMP SET SAL = SAL * sal_raise WHERE DEPTNO = dep_id;
END emp_sal;
/
  
BEGIN
  emp_sal(10,1.5);
END;
/

-- or use the following command

EXECUTE emp_sal(10,1.5);
/

select * from emp;