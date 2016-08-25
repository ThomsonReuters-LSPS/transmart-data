whenever sqlerror exit failure
whenever oserror exit failure
declare
  l_cnt number;
begin
  select count(*) into l_cnt from all_tab_columns where owner='DEAPP' and table_name='DE_SUBJECT_ACGH_DATA' and column_name='PROBHOMLOSS';
  if l_cnt = 0 then
    execute immediate 'alter table deapp.de_subject_acgh_data add (probhomloss float(126))';
  end if;
end;
/
