whenever sqlerror exit failure
whenever oserror exit failure
declare
  l_cnt number;
begin
  select count(*) into l_cnt from all_tab_columns where owner='TM_WZ' and table_name='WT_SUBJECT_ACGH_REGION' and column_name='PROBHOMLOSS';
  if l_cnt = 0 then
    execute immediate 'alter table tm_wz.wt_subject_acgh_region add (probhomloss float(126))';
  end if;
end;
/
