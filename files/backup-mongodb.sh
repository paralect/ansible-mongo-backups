#!/bin/bash

# WARNING: Ensure that locale variable are set to default during script execution
# locale variables MUST BE set for successful backup
export LC_ALL="C"

MONGODUMP_PATH=$1
MONGO_HOST=$2
MONGO_PORT=$3
DB_NAME=$4
AWS_BUCKET=$5

TIMESTAMP=`date +%F-%H%M`

# Create backup
$MONGODUMP_PATH -h $MONGO_HOST:$MONGO_PORT -d $DB_NAME

# Add timestamp to backup
mv dump mongodb-$HOSTNAME-$TIMESTAMP
tar -czvf mongodb-$HOSTNAME-$TIMESTAMP.tar mongodb-$HOSTNAME-$TIMESTAMP

s3cmd put mongodb-$HOSTNAME-$TIMESTAMP.tar s3://$AWS_BUCKET/backups/mongodb-$HOSTNAME-$TIMESTAMP.tar

rm -rf ./mongodb-$HOSTNAME-$TIMESTAMP
