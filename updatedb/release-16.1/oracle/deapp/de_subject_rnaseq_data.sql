whenever sqlerror exit failure
whenever oserror exit failure
declare
  l_cnt number;
begin
  select count(*) into l_cnt from all_tab_columns where owner='DEAPP' and table_name='DE_SUBJECT_RNASEQ_DATA' and column_name='NORMALIZED_READCOUNT';
  if l_cnt = 0 then
    execute immediate 'alter table deapp.de_subject_rnaseq_data add (normalized_readcount double precision)';
  end if;
end;
/
declare
  l_cnt number;
begin
  select count(*) into l_cnt from all_tab_columns where owner='DEAPP' and table_name='DE_SUBJECT_RNASEQ_DATA' and column_name='LOG_NORMALIZED_READCOUNT';
  if l_cnt = 0 then
    execute immediate 'alter table deapp.de_subject_rnaseq_data add (log_normalized_readcount double precision)';
  end if;
end;
/
declare
  l_cnt number;
begin
  select count(*) into l_cnt from all_tab_columns where owner='DEAPP' and table_name='DE_SUBJECT_RNASEQ_DATA' and column_name='ZSCORE';
  if l_cnt = 0 then
    execute immediate 'alter table deapp.de_subject_rnaseq_data add (zscore double precision)';
  end if;
end;
/
declare
  l_cnt number;
begin
  select count(*) into l_cnt from all_tab_columns where owner='DEAPP' and table_name='DE_SUBJECT_RNASEQ_DATA' and column_name='PARTITION_ID';
  if l_cnt = 0 then
    execute immediate 'alter table deapp.de_subject_rnaseq_data add (partition_id number)';
  end if;
end;
/
