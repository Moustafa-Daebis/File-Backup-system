# Directory Backup

A Linux bash script that backs up changes in a chosen directory according to a set time inveral.
## Table of content
* [Table of Content](#table-of-content)
* [Description](#description)
* [Features](#features)
* [Prerequisites](#prerequisites)
* [Installing](#installing)
* [Executing program](#executing-program)
* [Author](#author)
* [Acknowledgments](#acknowledgments)

## Description

The script takes the following parameters:

* directory: The directory to be backed up.
* backup_directory: The directory to store the backups.
* wait_time: The amount of time to wait between backups.
* max_number_of_backups: The maximum number of backups to keep.
* The script works by first checking if the backup directory exists. If it does not, the script creates it. Next, the script checks if the directory to be backed up exists. If it does not, the script exits.

The script then gets the current date and time. It then creates a file to store the directory info. The script then gets the directory info and writes it to the file.

The script then waits for the specified amount of time. After the wait time has expired, the script gets the directory info again. If the directory info has changed, the script creates a backup. The script then increments the backup counter.

The script checks if the max number of backups has been reached. If it has, the script removes the oldest backup.

The script then repeats the process.

In addition to the main script, there is also a MAKEFILE that is used to run the script. The MAKEFILE validates if the backup directory exists and creates it if it does not. The MAKEFILE also validates the parameters of the script and exits if any of them are invalid.

The script can be used to automatically back up a directory on a regular basis. This can be useful for backing up important files or for keeping track of changes to a directory.

## Features

* backup modifications of a directory 
* specify frequency of backup
* specify max number of backups for  a given directory before overwriting the oldest backup

## Getting Started

### Prerequisites 

* Installation of ubuntu Linux based system
https://ubuntu.com/download/desktop
* Step-up of ubuntu Linux based system

### Installing

* Extract the file File-Backup-system.tar.gz to any location that suites you

### Executing program
* The folder contains 3 files : the backup.sh file ,MAKEFILE file and the README.md file.

* Change directory within the shell to the directory in which 6874-lab2 folder content exists through the shell command cd
```
$ cd <path of folder>
```
* Create a directory to be backedup and a directory to store all the backups ( a dictionary name *backupdir* will be created if no backup directory is provided )  
within the same path as the content of the folder
* Provide the following snippet in the shell in the path of the folder content in order to run the MAKEFILE that will run the bash script with specifing acutal *directory* ,*backupdirectory* ,*wait_time* and *max_number_of _backups*.
NB:wait_time is in seconds.
```
$ make directory=<directory> backupdir=<backup_directory> wait_time=<wait_time> max_number_of_backups=<max_number_of_backups>
```
* Now the bashscript is running expect a directory to be created in the backupdirectory with the format *YYYY-MM-DD-hh-mm-ss* (Year month day hour minute second) according to current date and time when a modification is performed on the directory specified to be backed up.

* Type the following to perform an interrput to stop the script 
```
$ Ctrl+c
```

## Author

* [Moustafa Daebis](https://github.com/Moustafa-Daebis)

## Acknowledgments
* https://opensource.com/article/18/8/what-how-makefile
* https://www.makeareadme.com/
