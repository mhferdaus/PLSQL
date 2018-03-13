create or replace trigger io_delete
instead of delete on vw_example
for each row
begin
  delete from trainer where full_name = :old.full_name;
  delete from subject where subject_name = :old.subject_name;
end;
/

delete from vw_example where full_name = 'Neo';
