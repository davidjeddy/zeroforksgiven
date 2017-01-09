#! /bin/bash
SET SQLUSER = username;
SET SQLPASS = password;
SET DATE    = `date +%Y-%m-%d`;

FILENAME="zfg-"$DATE".sql"
DEST="/usr/grive2/SQLDumps/"

sudo mkdir -p $DEST 1>&2
mysqldump -u$SQLUSER -p$SQLPASS > $DEST$FILENAME
cd /usr/grive2
sudo grive -u