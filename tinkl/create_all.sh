#!/bin/sh

# Test if no objects exists before
psql -h pgsql3.mif -d studentu -f Test_exists.sql

# Create Objects
psql -h pgsql3.mif -d studentu -f Create_tables.sql
psql -h pgsql3.mif -d studentu -f Create_index.sql
psql -h pgsql3.mif -d studentu -f Create_views.sql
psql -h pgsql3.mif -d studentu -f Create_mat_views.sql
psql -h pgsql3.mif -d studentu -f Create_triggers.sql

# Insert Data
psql -h pgsql3.mif -d studentu -f Create_data.sql
psql -h pgsql3.mif -d studentu -f Update_mat_views.sql

# Tests after
psql -h pgsql3.mif -d studentu -f Test_exists.sql
psql -h pgsql3.mif -d studentu -f Test_data.sql