DECLARE
  v_counter NUMBER := 0;
  v_result NUMBER;
BEGIN
  LOOP
    v_counter := v_counter + 1;
    v_result := v_counter * 19;
    DBMS_OUTPUT.PUT_LINE('19' || ' X ' || v_counter || ' = ' || v_result);
    IF v_counter >= 10 THEN
      EXIT;
    END IF;
  END LOOP;
END;
/

DECLARE
  v_counter NUMBER := 0;
  v_result NUMBER;
BEGIN
  LOOP
    v_counter := v_counter + 1;
    v_result := v_counter * 19;
    DBMS_OUTPUT.PUT_LINE('19' || ' X ' || v_counter || ' = ' || v_result);
    EXIT WHEN v_counter >= 10;
  END LOOP;
END;
/

