create or replace trigger io_update
instead of update on vw_example
for each row
begin
  update trainer set full_name = :new.full_name 
  where full_name = :old.full_name;
  update subject set subject_name = :new.subject_name
  where subject_name = :old.subject_name;
end;
/

-- testing the trigger

update vw_example set subject_name = 'Oracle' where full_name = 'Neo Geo';
select * from VW_EXAMPLE;
