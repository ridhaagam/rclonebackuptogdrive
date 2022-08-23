#! /bin/bash

data=$(date +%d-%m-%y)

## rename old folder to backup-{Date}

  echo "        Renaming file backup to backup-{date}"
  echo "        Progress..."
mv {DIRECTORY BACKUP} {DIRECTORY BACKUP}-$data
  sleep 2
  echo "        Done"
sleep 2

  echo "        renaming backupdrive to backup-{date}"
  echo "        Progress..."
mv {DIRECTORY BACKUP DRIVE} {DIRECTORY BACKUP - Main}-$data
  sleep 2
  echo "        Done"

## make new folder
  sleep 2
  echo "        Making new backup file"
  echo "        Progress..."
mkdir {Old DIRECTORY BACKUP NAME} 
  sleep 2
  echo "        Done"
  sleep 2

  echo "        Making new backup to drive file"
mkdir {Old DIRECTORY BACKUP DRIVE NAME}
  sleep 2
echo "        Done"
sleep 2
  echo "        Uploading to Google drive..."
## upload file to Gdrive
rclone copy --progress "{DIRECTORY BACKUP DRIVE}" "gdrive:/Backup" ## make sure to make a new folder at your gdrive name Backup
echo "        Done"

sleep 5
  echo "        Removing backup-{date} "
## clean data
rm -rf {DIRECTORY BACKUP DRIVE}-$data
echo "        Done, Ending.."