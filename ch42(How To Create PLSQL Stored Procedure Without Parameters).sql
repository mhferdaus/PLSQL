CREATE OR REPLACE PROCEDURE pr_Example IS
  var_name VARCHAR2(20) := 'Lionel';
  var_web Varchar2(20) := 'LionelMessi.com';
BEGIN
  DBMS_OUTPUT.PUT_LINE(var_name || ' from ' || var_web);
END pr_Example;
/

EXECUTE pr_Example;
/

BEGIN
  pr_Example;
END;
/

-- homework, calling procedure from a function

CREATE OR REPLACE FUNCTION fn_example
RETURN NUMBER IS
BEGIN
  pr_Example;
  RETURN 1;
END;
/

BEGIN
  DBMS_OUTPUT.PUT_LINE(fn_EXAMPLE);
END;
/