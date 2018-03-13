VARIABLE v_bind1 VARHCAR2(10);
EXEC :v_bind1 := 'Hello World'; -- ALSO CAN USE 'EXECUTE'
-- 2nd way of initailizing bind variable
BEGIN
  :v_bind1 := 'Hello World!';
  DBMS_OUTPUT.PUT_LINE(:v_bind1);
END;
/

-- USING PRINT
PRINT :v_bind1;
/

-- USING AUTOPRINT
SET AUTOPRINT ON;
VARIABLE v_bind2 VARCHAR2(30);
EXEC :v_bind2 := 'HELLO WORLD';