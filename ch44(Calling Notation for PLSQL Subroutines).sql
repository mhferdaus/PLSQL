CREATE OR REPLACE FUNCTION add_num 
(var_1 NUMBER, var_2 NUMBER DEFAULT 0, var_3 NUMBER) RETURN NUMBER 
IS
BEGIN
  DBMS_OUTPUT.PUT_LINE('var_1 -> ' || var_1);
  DBMS_OUTPUT.PUT_LINE('var_2 -> ' || var_2);
  DBMS_OUTPUT.PUT_LINE('var_3 -> ' || var_3);
  RETURN var_1+var_2+var_3;
END;
/

-- calling notations that do not work

SET SERVEROUTPUT ON;
BEGIN
  DBMS_OUTPUT.PUT_LINE(add_num(3,5));
END;
/

SET SERVEROUTPUT ON;
BEGIN
  DBMS_OUTPUT.PUT_LINE(add_num(3, ,5));
END;
/

-- calling notation that does work

DECLARE
  var_result NUMBER;
BEGIN
  var_result := add_num(var_3 => 5, var_1 => 2);
  DBMS_OUTPUT.PUT_LINE('Result -> ' || var_result);
END;
/

