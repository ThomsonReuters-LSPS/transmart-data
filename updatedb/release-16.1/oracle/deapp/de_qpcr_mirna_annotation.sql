whenever sqlerror exit failure
whenever oserror exit failure
set serveroutput on size 1000000
declare
  already_not_null exception;
  has_nulls exception;
  pragma exception_init(already_not_null, -1442);  -- column to be modified to NOT NULL is already NOT NULL
  pragma exception_init(has_nulls, -2296);  -- cannot enable (%s.%s) - null values found
begin
  execute immediate 'alter table deapp.de_qpcr_mirna_annotation modify (probeset_id not null)';
exception
  when already_not_null then null;
  when has_nulls then dbms_output.put_line('de_qpcr_mirna_annotation.probeset_id has null values. Fix it and add not null constraint manually.');
end;
/
