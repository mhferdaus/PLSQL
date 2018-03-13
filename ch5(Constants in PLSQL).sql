DECLARE
  v_pi CONSTANT NUMBER(7,6) := 3.141592;
BEGIN
  DBMS_OUTPUT.PUT_LINE(v_pi);
END;
/

-- default keyword
DECLARE
  v_pi CONSTANT NUMBER(7,6) DEFAULT 3.141592;
BEGIN
  DBMS_OUTPUT.PUT_LINE(v_pi);
END;
/

-- not null keyword
DECLARE
  v_pi CONSTANT NUMBER(7,6) NOT NULL DEFAULT 3.141592;
BEGIN
  DBMS_OUTPUT.PUT_LINE(v_pi);
END;
