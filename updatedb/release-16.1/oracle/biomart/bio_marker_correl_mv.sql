whenever sqlerror exit failure
whenever oserror exit failure
exec dbms_mview.refresh('BIOMART.BIO_MARKER_CORREL_MV')
/
