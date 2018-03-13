ACCEPT var_age NUMBER PROMPT 'What is your age?';
DECLARE
  age NUMBER := &var_age;
BEGIN
  IF age < 18 THEN
    RAISE_APPLICATION_ERROR(-20008,'You should be 18 or above to drink');
  END IF;
  
  DBMS_OUTPUT.PUT_LINE('Sure what would you like to have?');
  
EXCEPTION
  WHEN others THEN
    DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/
