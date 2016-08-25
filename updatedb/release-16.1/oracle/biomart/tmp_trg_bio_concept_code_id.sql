whenever sqlerror exit failure
whenever oserror exit failure
declare
  no_trigger exception;
  pragma exception_init(no_trigger, -4080); -- trigger '%s' does not exist
begin
  execute immediate 'drop trigger biomart.tmp_trg_bio_concept_code_id';
exception
  when no_trigger then null;
end;
/
