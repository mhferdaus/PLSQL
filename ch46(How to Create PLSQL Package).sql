-- new_superheroes table creating

CREATE TABLE new_superheroes
(
  f_name VARCHAR2(20),
  l_name VARCHAR2(20)
);
/

-- package specification

CREATE OR REPLACE PACKAGE pkg_Example IS
  FUNCTION prnt_strng RETURN VARCHAR2;
  PROCEDURE proc_superhero (f_name VARCHAR2, l_name VARCHAR2);
END pkg_Example;
/

-- writing package body

CREATE OR REPLACE PACKAGE BODY pkg_Example IS
  -- Function implementation
  FUNCTION prnt_strng RETURN VARCHAR2 IS
  BEGIN
    RETURN 'LionelMessi.com';
  END;
  
  -- Procedure implementation
  PROCEDURE proc_superhero (f_name VARCHAR2,l_name VARCHAR2) IS
  BEGIN
    INSERT INTO new_superheroes (f_name,l_name) VALUES (f_name,l_name);
  END;
END pkg_Example;
/

-- calling package examples
-- calling function

SET SERVEROUTPUT ON;
BEGIN
  DBMS_OUTPUT.PUT_LINE(pkg_Example.prnt_strng);
END;
/

-- calling procedure

BEGIN
  pkg_Example.proc_superhero('Lelouch','Lamperouge');
END;
/

SELECT * FROM new_superheroes;
/