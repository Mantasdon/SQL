#!/bin/sh
psql -h pgsql3.mif -d studentu -f Drop_triggers.sql
psql -h pgsql3.mif -d studentu -f Drop_views.sql
psql -h pgsql3.mif -d studentu -f Drop_index.sql
psql -h pgsql3.mif -d studentu -f Drop_tables.sql

# Test if no objects exists after
psql -h pgsql3.mif -d studentu -f Test_exists.sql