-- creating table to audit schema
CREATE TABLE SCHEMA_AUDIT
(
  ddl_date DATE,
  dd_user VARCHAR2(15),
  object_created VARCHAR2(15),
  object_name VARCHAR2(15),
  ddl_operation VARCHAR2(15)
);

-- creating the trigger to audit schema
CREATE OR REPLACE TRIGGER HR_AUDIT_TR
AFTER DDL ON SCHEMA -- can replace with wanted ddl like create or alter
BEGIN
  INSERT INTO SCHEMA_AUDIT VALUES (
    SYSDATE,
    sys_context('USERENV','CURRENT_USER'),
    ora_dict_obj_type,
    ora_dict_obj_name,
    ora_sysevent
  );  
END;
/

-- test the trigger
CREATE TABLE DUMMY(roll NUMBER);
INSERT INTO DUMMY VALUES(8);
TRUNCATE TABLE DUMMY;
DROP TABLE DUMMY;

SELECT * FROM DUMMY;
SELECT * FROM SCHEMA_AUDIT;