DECLARE
  age NUMBER := 17;
  ex_age EXCEPTION;
  PRAGMA EXCEPTION_INIT(ex_age, -20008);
BEGIN
  IF age < 18 THEN
    RAISE_APPLICATION_ERROR(-20008,'You should be 18 or above to drink');
  END IF;
  
  DBMS_OUTPUT.PUT_LINE('Sure what would you like to have?');
  
EXCEPTION
  WHEN ex_age THEN
    DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/
