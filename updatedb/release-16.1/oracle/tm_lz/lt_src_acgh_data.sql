whenever sqlerror exit failure
whenever oserror exit failure
declare
  l_cnt number;
begin
  select count(*) into l_cnt from all_tab_columns where owner='TM_LZ' and table_name='LT_SRC_ACGH_DATA' and column_name='PROBHOMLOSS';
  if l_cnt = 0 then
    execute immediate 'alter table tm_lz.lt_src_acgh_data add (probhomloss varchar2(50 byte))';
  end if;
end;
/
