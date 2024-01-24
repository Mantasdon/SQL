--== bazines patikros ==
SELECT table_schema, table_name, table_type FROM INFORMATION_SCHEMA.tables WHERE table_schema = 'mado8357';
SELECT table_schema, table_name, constraint_name FROM INFORMATION_SCHEMA.Key_column_usage WHERE table_schema = 'mado8357';
SELECT * FROM information_schema.triggers WHERE table_schema = 'mado8357';