BEGIN
  FOR v_counter IN 1 .. 10 LOOP
    DBMS_OUTPUT.PUT_LINE(v_counter);
  END LOOP;
END;
/

BEGIN
  FOR v_counter IN REVERSE 1 .. 10 LOOP
    DBMS_OUTPUT.PUT_LINE(v_counter);
  END LOOP;
END;
/

DECLARE
  v_result NUMBER;
BEGIN
  FOR v_counter IN 1 .. 10 LOOP
    v_result := 19 * v_counter;
    DBMS_OUTPUT.PUT_LINE('19' || ' X ' || v_counter || ' = ' || v_result);
  END LOOP;
END;
/