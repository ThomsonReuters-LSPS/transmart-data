whenever sqlerror exit failure
whenever oserror exit failure
declare
  no_trigger exception;
  pragma exception_init(no_trigger, -4080);  -- trigger '%s' does not exist
begin
  execute immediate 'drop trigger biomart.logon_trigger';
exception
  when no_trigger then null;
end;
/
