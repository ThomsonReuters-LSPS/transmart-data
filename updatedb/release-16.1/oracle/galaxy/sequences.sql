whenever sqlerror exit failure
whenever oserror exit failure
declare
  name_used exception;
  pragma exception_init(name_used, -955);  -- name is already used by an existing object
begin
  execute immediate 'create sequence galaxy.hibernate_id start with 1 increment by 1 nocycle nocache';
exception
  when name_used then null;
end;
/
declare
  name_used exception;
  pragma exception_init(name_used, -955);  -- name is already used by an existing object
begin
  execute immediate 'create sequence galaxy.status_of_export_job_seq start with 1 increment by 1 nocycle nocache';
exception
  when name_used then null;
end;
/
