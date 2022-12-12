set storage.list_files_recursively=true;
select f.SCHEMA_NAME, f.ROOT_SCHEMA_NAME, f.WORKSPACE_NAME, f.FILE_NAME, f.RELATIVE_PATH, f.IS_DIRECTORY, f.IS_FILE, f.LENGTH, f.OWNER, f.`GROUP`, f.PERMISSION from information_schema.`files` f where f.schema_name = 's3minio.tmp' and f.RELATIVE_PATH like 'filetypes%';
reset storage.list_files_recursively;
