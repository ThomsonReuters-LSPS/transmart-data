whenever sqlerror exit failure
whenever oserror exit failure
update biomart.bio_marker set organism = 'MUS MUSCULUS' where organism = 'Mus musculus' and bio_marker_id between 724923 and 783008
/
begin
  insert into biomart.bio_marker(bio_marker_id, bio_marker_name, bio_marker_description, organism, primary_source_code, primary_external_id, bio_marker_type)
    values (391695703, 'Not applicable', 'no specific gene', 'HOMO SAPIENS', 'DummyData', 0, 'GENE');
exception
  when dup_val_on_index then null;
end;
/
delete from biomart.bio_data_uid where bio_data_id=169686
/
update biomart.bio_data_uid set unique_id='NORMALIZATION_METHOD:RMA' where bio_data_id=169306
/
begin
  insert into biomart.bio_data_uid(bio_data_id, unique_id, bio_data_type) values (169986, 'OTHER:OTHER:', 'BIO_CONCEPT_CODE');
exception
  when dup_val_on_index then null;
end;
/
begin
  insert into biomart.bio_data_uid(bio_data_id, unique_id, bio_data_type) values (391695703, 'GENE:0', 'BIO_MARKER.GENE');
exception
  when dup_val_on_index then null;
end;
/
update biomart.bio_concept_code set code_name='Homo sapiens' where bio_concept_code_id = 169312
/
update biomart.bio_assay_platform set platform_organism = 'Homo sapiens' where bio_assay_platform_id = 169331
/
commit
/
