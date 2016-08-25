whenever sqlerror exit failure
whenever oserror exit failure
declare
  l_cnt number;
begin
  select count(*) into l_cnt from all_tab_columns where owner='DEAPP' and table_name='DE_PROTEIN_ANNOTATION' and column_name='CHROMOSOME';
  if l_cnt = 0 then
    execute immediate 'alter table deapp.de_protein_annotation add (chromosome varchar2(5 char))';
  end if;
end;
/
declare
  l_cnt number;
begin
  select count(*) into l_cnt from all_tab_columns where owner='DEAPP' and table_name='DE_PROTEIN_ANNOTATION' and column_name='START_BP';
  if l_cnt = 0 then
    execute immediate 'alter table deapp.de_protein_annotation add (start_bp number)';
  end if;
end;
/
declare
  l_cnt number;
begin
  select count(*) into l_cnt from all_tab_columns where owner='DEAPP' and table_name='DE_PROTEIN_ANNOTATION' and column_name='END_BP';
  if l_cnt = 0 then
    execute immediate 'alter table deapp.de_protein_annotation add (end_bp number)';
  end if;
end;
/
