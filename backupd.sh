#! /bin/bash 
SOURCE=$1
BACKUP=$2
SLEEPTIME=$3
MAXBACKUPS=$4
maxbackup(){
backupDirectory=($BACKUP/*)
early_backup="${backupDirectory[0]}"
for backup in $BACKUP/*
do
	if  [ "$early_backup" \> "$backup" ]
	then
		early_backup="$backup"
	fi
done
rm -r $early_backup
}
backup_operation(){
ls -lR $SOURCE > directory-info.last
count=0
while [ true ]
do
	sleep $SLEEPTIME
	ls -lR $SOURCE > directory-info.new
	cmp -s directory-info.last directory-info.new
	if  [ $? == 1 ]
	then
		if [ $count == $MAXBACKUPS ]
		then
			maxbackup
		else
			count=$((count+1))
		fi
		date=$(date +%y-%m-%d-%H-%M-%S)
		cp -r "$SOURCE" "$BACKUP"/"$date"
		ls -lR $SOURCE > directory-info.last
	fi
done
}
if [ -d $SOURCE ]
then
if [ $SLEEPTIME -ge 1 ] && [ $MAXBACKUPS -ge 1 ]
then
backup_operation
else 
echo "invalid sleeptime and/or max number of backups"
fi
else 
echo "Directory to be backed up does not exist"
fi
