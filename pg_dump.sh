#!/bin/bash

DUMP_FILE_NAME="$1_`date +%d`.sql.bz2"

echo "Creating dump: $DUMP_FILE_NAME"

pg_dump | bzip2 -9 > /backup/$DUMP_FILE_NAME

echo 'Successfully Backed Up'
exit 0