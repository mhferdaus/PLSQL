-- EXAMPLE 1
DECLARE
  v_num INTEGER;
BEGIN
  v_num := 9;
  IF v_num > 10 THEN
    DBMS_OUTPUT.PUT_LINE('INSIDE IF');
  END IF;
  DBMS_OUTPUT.PUT_LINE('OUTSIDE IF');
END;
/

-- EXAMPLE 2
DECLARE
  v_author VARCHAR2(30) := 'Hello';
  v_website VARCHAR2(30) := 'HellloWorld.com';
BEGIN
  IF v_author = 'Hello' AND v_website = 'HellloWorld.com' THEN
    DBMS_OUTPUT.PUT_LINE( v_author || ' ' || v_website);
  END IF;
END;
/