-- creating audit table
CREATE TABLE SH_AUDIT
(
  new_name VARCHAR2(30),
  old_name VARCHAR2(30),
  user_name VARCHAR2(30),
  entry_date VARCHAR2(30),
  operation VARCHAR2(30)
);

-- creating the trigger to audit
CREATE OR REPLACE TRIGGER SUPERHEROES_AUDIT
BEFORE INSERT OR DELETE OR UPDATE ON SUPERHEROES
FOR EACH ROW
ENABLE
DECLARE
  v_user VARCHAR2(30);
  v_date VARCHAR2(30);
BEGIN
  SELECT user,TO_CHAR(sysdate,'DD/MON/YYYY HH24:MI:SS') into v_user,v_date
  FROM dual;
  
  IF INSERTING THEN
    INSERT INTO SH_AUDIT(new_name,old_name,user_name,entry_date,operation)
    VALUES (:NEW.sh_name,NULL,v_user,v_date,'INSERT');
  ELSIF DELETING THEN
    INSERT INTO SH_AUDIT(new_name,old_name,user_name,entry_date,operation)
    VALUES (NULL,:OLD.sh_name,v_user,v_date,'DELETE');
  ELSIF UPDATING THEN
    INSERT INTO SH_AUDIT(new_name,old_name,user_name,entry_date,operation)
    VALUES (:NEW.sh_name,:OLD.sh_name,v_user,v_date,'UPDATE');
  END IF;
END;
/

-- testing audit
INSERT INTO SUPERHEROES VALUES('Zero');
UPDATE SUPERHEROES SET sh_name = 'Lelouch' WHERE sh_name='Zero';
DELETE FROM SUPERHEROES WHERE sh_name = 'Lelouch';

SELECT * FROM SH_AUDIT;
SELECT * FROM SUPERHEROES;