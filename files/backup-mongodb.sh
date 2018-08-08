#!/bin/bash

# WARNING: Ensure that locale variable are set to default during script execution
# locale variables MUST BE set for successful backup
export LC_ALL="C"

MONGODUMP_PATH=$1
MONGO_HOST=$2
MONGO_PORT=$3
DB_NAME=$4
DB_USER=$5
DB_PASS=$6
BUCKET=$7
TYPE=$8

TIMESTAMP=`date +%F-%H%M`

# Create backup
$MONGODUMP_PATH -h $MONGO_HOST:$MONGO_PORT -d $DB_NAME -u $DB_USER -p $DB_PASS

# Add timestamp to backup
mv dump mongodb-$HOSTNAME-$TIMESTAMP
tar -czvf mongodb-$HOSTNAME-$TIMESTAMP.tar mongodb-$HOSTNAME-$TIMESTAMP

if [ "$TYPE" = "aws" ]
then
  s3cmd --config=aws/.s3cfg put mongodb-$HOSTNAME-$TIMESTAMP.tar s3://$BUCKET/backups/mongodb-$HOSTNAME-$TIMESTAMP.tar
fi

if [ "$TYPE" = "gc" ]
then
  /root/gsutil/gsutil cp "$BACKUP_PATH""$BACKUP_FILENAME" gs://"$BUCKET_NAME"/"$DB_NAME"/ 2>&1
fi

if [ "$TYPE" = "filesystem" ]
then
  mv mongodb-$HOSTNAME-$TIMESTAMP.tar $BUCKET
fi

rm -rf ./mongodb-$HOSTNAME-$TIMESTAMP
