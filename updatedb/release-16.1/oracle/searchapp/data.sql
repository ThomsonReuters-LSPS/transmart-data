whenever sqlerror exit failure
whenever oserror exit failure
begin
  insert into searchapp.search_keyword(keyword, bio_data_id, unique_id, search_keyword_id, data_category, source_code, display_data_category, owner_auth_user_id)
    values ('Not applicable', 0, 'GENE:0', 3195317, 'GENE', 'Entrez', 'Gene', null);
exception
  when dup_val_on_index then null;
end;
/
begin
  insert into searchapp.search_keyword_term(keyword_term, search_keyword_id, rank, search_keyword_term_id, term_length, owner_auth_user_id)
    values ('NOT APPLICABLE', 3195317, 1, 3195318, 14, null);
exception
  when dup_val_on_index then null;
end;
/
update searchapp.search_auth_principal set unique_id='tmuser' where id=701145587
/
delete from searchapp.search_role_auth_user where authorities_id=12345 and people_id in (5, 6, 5027)
/
update searchapp.plugin_module set active='N' where module_seq in (70, 110)
/
commit
/
