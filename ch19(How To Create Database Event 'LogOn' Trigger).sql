-- creating table to audit info
CREATE TABLE HR_EVENT_AUDIT
(
  event_type VARCHAR2(20),
  event_date DATE,
  logon_time VARCHAR2(15),
  logof_date DATE,
  logof_time VARCHAR2(15)
);

-- creating the trigger to audit user logon/logoff
CREATE OR REPLACE TRIGGER HR_LGON_AUDIT
AFTER LOGON ON SCHEMA
BEGIN
  INSERT INTO HR_EVENT_AUDIT VALUES
  (
    ora_sysevent,
    sysdate,
    TO_CHAR(sysdate,'hh24:mi:ss'),
    NULL,
    NULL
  );
  COMMIT;
END;
/

-- check the HR_EVENT_AUDIT table
SELECT * FROM HR_EVENT_AUDIT;
