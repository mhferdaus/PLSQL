TRUNCATE TABLE HR_EVENT_AUDIT;

-- trigger for log off
CREATE OR REPLACE TRIGGER LOG_OFF_AUDIT
BEFORE LOGOFF ON SCHEMA
BEGIN
  INSERT INTO HR_EVENT_AUDIT VALUES
  (
    ora_sysevent,
    NULL,
    NULL,
    sysdate,
    TO_CHAR(sysdate,'hh24:mi:ss')
  );
  COMMIT;
END;
/

-- testing
SELECT * FROM HR_EVENT_AUDIT;


------------------------------------------------------------------------------------------

-- the following is not done as not much privilege
-- create the trigger for db_event_audit table
CREATE OR REPLACE TRIGGER DB_LOGOF_AUDIT
BEFORE LOGOFF ON DATABASE
BEGIN
  INSERT INTO DB_EVENT_AUDIT VALUES
  (
    user,
    ora_sysevent,
    NULL,
    NULL,
    sysdate,
    TO_CHAR(sysdate,'hh24:mi:ss')
  );
  COMMIT;
END;
/

-- testing
SELECT * FROM DB_EVENT_AUDIT;
