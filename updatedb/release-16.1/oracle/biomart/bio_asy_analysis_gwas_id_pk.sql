whenever sqlerror exit failure
whenever oserror exit failure
declare
  name_used exception;
  index_exists exception;
  pragma exception_init(name_used, -955);  -- name is already used by an existing object
  pragma exception_init(index_exists, -1408);  -- such column list already indexed
begin
  execute immediate 'alter table biomart.bio_assay_analysis_gwas add constraint bio_asy_analysis_gwas_id_pk primary key (bio_asy_analysis_gwas_id) using index tablespace indx';
exception
  when name_used then null;
  when index_exists then null;
end;
/
