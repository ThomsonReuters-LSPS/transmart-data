whenever sqlerror exit failure
whenever oserror exit failure
declare
  l_cnt number;
begin
  select count(*) into l_cnt from all_tab_columns where owner='DEAPP' and table_name='DE_GPL_INFO' and column_name='GENE_ANNOTATION_ID';
  if l_cnt = 0 then
    execute immediate 'alter table deapp.de_gpl_info add (gene_annotation_id varchar2(50))';
  end if;
end;
/
