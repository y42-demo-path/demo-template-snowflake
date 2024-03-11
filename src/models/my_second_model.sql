{#

⚠️ You can only preview this model after `my_first_model` has been materialized

✅ Reference models with ref('<model_name>')
✅ Reference sources with source('<source_name>','<table_name>')
❌ Do not end SQL statements with semicolons

Read the docs: https://docs.y42.dev/canonical/sql-query

#}

select * from {{ ref('my_first_model') }}
