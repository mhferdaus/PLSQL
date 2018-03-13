-- creating a simple table

CREATE TABLE SUPERHEROES
(
  sh_name VARCHAR2(20)
);

-- Example 1

CREATE OR REPLACE TRIGGER bi_superheroes
BEFORE INSERT ON SUPERHEROES
FOR EACH ROW
ENABLE
DECLARE
  v_user VARCHAR2(20);
BEGIN
  SELECT user INTO v_user FROM dual;
  DBMS_OUTPUT.PUT_LINE('You just inserted a line Mr ' || v_user);
END;
/

-- insert statement

INSERT INTO SUPERHEROES VALUES('Zero');

-- Example 2 ( before update )

CREATE OR REPLACE TRIGGER bu_superheroes
BEFORE UPDATE ON SUPERHEROES
FOR EACH ROW
ENABLE
DECLARE
  v_user VARCHAR2(20);
BEGIN
  SELECT user INTO v_user FROM dual;
  DBMS_OUTPUT.PUT_LINE('You just updated a line Mr ' || v_user);
END;
/

-- upate statement

UPDATE SUPERHEROES SET sh_name = 'Lelouch' WHERE sh_name = 'Zero';

-- Example 3 before insert delete or update

CREATE OR REPLACE TRIGGER tr_superheroes
BEFORE INSERT OR DELETE OR UPDATE ON SUPERHEROES
FOR EACH ROW
ENABLE
DECLARE
  v_user VARCHAR2(20);
BEGIN
  SELECT user INTO v_user FROM dual;
  IF INSERTING THEN
    DBMS_OUTPUT.PUT_LINE('One row inserted by Mr ' || v_user);
  ELSIF UPDATING THEN
    DBMS_OUTPUT.PUT_LINE('One row updated by Mr ' || v_user);
  ELSIF DELETING THEN
    DBMS_OUTPUT.PUT_LINE('One row deleted by Mr ' || v_user);
  END IF;
END;
/

-- insert update delete statements

INSERT INTO SUPERHEROES VALUES('Mustapha');

UPDATE SUPERHEROES SET sh_name = 'Tipu' WHERE sh_name = 'Mustapha';

DELETE FROM SUPERHEROES where sh_name = 'Tipu';