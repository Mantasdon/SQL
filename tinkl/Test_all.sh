#!/bin/sh
psql -h pgsql3.mif -d studentu -f Test_exists.sql
psql -h pgsql3.mif -d studentu -f Test_data.sql
psql -h pgsql3.mif -d studentu -f Test_index.sql
psql -h pgsql3.mif -d studentu -f Test_keys.sql
psql -h pgsql3.mif -d studentu -f Test_constraints.sql
psql -h pgsql3.mif -d studentu -f Test_triggers.sql