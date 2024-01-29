/** drop foreign keys **/

DECLARE @sql NVARCHAR(MAX) = N'';

SELECT @sql += 'ALTER TABLE ' 
    + QUOTENAME(OBJECT_SCHEMA_NAME(parent_object_id))
    + '.' + QUOTENAME(OBJECT_NAME(parent_object_id)) 
    + ' DROP CONSTRAINT ' + QUOTENAME(name) + ';' + CHAR(13)
FROM sys.foreign_keys
WHERE parent_object_id IN (
    SELECT object_id 
    FROM sys.objects 
    WHERE schema_id = SCHEMA_ID('Production')
);

EXEC sp_executesql @sql;


/** drop tables **/

DECLARE @sql NVARCHAR(MAX) = N'';

SELECT @sql += N'DROP TABLE ' 
    + QUOTENAME(SCHEMA_NAME(schema_id)) 
    + '.' + QUOTENAME(name) + ';' + CHAR(13)
FROM sys.tables
WHERE schema_id = SCHEMA_ID('Production');

EXEC sp_executesql @sql;
