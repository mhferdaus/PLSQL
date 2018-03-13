DECLARE
  v_counter NUMBER := 1;
  v_result NUMBER;
BEGIN
  WHILE v_counter <= 10 LOOP    
    v_result := v_counter * 19;
    DBMS_OUTPUT.PUT_LINE('19' || ' X ' || v_counter || ' = ' || v_result);
    v_counter := v_counter + 1;
  END LOOP;
  DBMS_OUTPUT.PUT_LINE('Outside the loop');
END;
/

DECLARE
  v_counter NUMBER := 0;
  v_test BOOLEAN := TRUE;
BEGIN
  WHILE v_test LOOP
    v_counter := v_counter + 1;
    DBMS_OUTPUT.PUT_LINE(v_counter);
    IF v_counter = 10 THEN
      v_test := FALSE;
    END IF;
  END LOOP;
  DBMS_OUTPUT.PUT_LINE('Outside the loop');
END;
/
