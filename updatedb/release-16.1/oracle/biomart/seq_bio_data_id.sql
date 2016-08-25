whenever sqlerror exit failure
whenever oserror exit failure
declare
  l_cv number;
begin
  l_cv := biomart.seq_bio_data_id.nextval;
  if l_cv < 391713417 then
    execute immediate 'drop sequence biomart.seq_bio_data_id';
    execute immediate 'create sequence biomart.seq_bio_data_id start with 391713417 increment by 1 nocycle';
  end if;
end;
/
