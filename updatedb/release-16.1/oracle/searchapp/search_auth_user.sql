whenever sqlerror exit failure
whenever oserror exit failure
declare
  l_cnt number;
begin
  select count(*) into l_cnt from all_tab_columns where owner='SEARCHAPP' and table_name='SEARCH_AUTH_USER' and column_name='CHANGE_PASSWD';
  if l_cnt = 0 then
    execute immediate 'alter table searchapp.search_auth_user add (change_passwd number(1,0))';
  end if;
end;
/
