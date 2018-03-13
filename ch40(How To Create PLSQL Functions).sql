CREATE OR REPLACE FUNCTION circle_area (radius NUMBER)
RETURN NUMBER IS

pi CONSTANT NUMBER(7,3) := 3.141;
area NUMBER(7,3);
BEGIN
  area := pi * ( radius * radius );
  RETURN area;
END;
/

BEGIN
  DBMS_OUTPUT.PUT_LINE(circle_area(25));
END;
/