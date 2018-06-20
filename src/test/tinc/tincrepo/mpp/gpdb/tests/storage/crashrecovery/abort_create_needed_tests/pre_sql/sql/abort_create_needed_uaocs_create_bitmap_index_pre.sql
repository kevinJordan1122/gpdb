-- @product_version gpdb: [4.3.0.0-]
CREATE TABLE abort_create_needed_cr_uaocs_table_bitmap_index(
text_col text,
bigint_col bigint,
char_vary_col character varying(30),
numeric_col numeric,
int_col int4,
float_col float4,
int_array_col int[],
drop_col numeric,
before_rename_col int4,
change_datatype_col numeric,
a_ts_without timestamp without time zone,
b_ts_with timestamp with time zone,
date_column date) WITH (appendonly=true,orientation=column);

select count(*) FROM pg_appendonly WHERE visimaprelid is not NULL AND visimapidxid is not NULL AND relid in (SELECT oid FROM pg_class WHERE relname ='abort_create_needed_cr_uaocs_table_bitmap_index');