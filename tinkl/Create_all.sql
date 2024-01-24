-- Test if no objects exists before
\i Test_exists.sql

-- Create Objects
\i Create_tables.sql
\i Create_index.sql
\i Create_views.sql
\i Create_mat_views.sql
\i Create_triggers.sql

-- Insert Data
\i Create_data.sql
\i Update_mat_views.sql

-- Tests after
\i Test_exists.sql
\i Test_data.sql