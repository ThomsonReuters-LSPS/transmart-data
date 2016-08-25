whenever sqlerror exit failure
whenever oserror exit failure
declare
  l_cnt number;
begin
  select count(*) into l_cnt from all_source where owner='TM_LZ' and name='I2B2_LOAD_CLINICAL_DATA_BACKUP';
  if l_cnt > 0 then
    execute immediate 'drop procedure tm_lz.i2b2_load_clinical_data_backup';
  end if;
end;
/
