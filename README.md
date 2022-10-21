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
The parameters of the directory to be backed up, backupdirectory time of sleep/wait and max number of backups will be passed to the bash script through a MAKEFILE that will also run the script.The MAKEFILE validates if the backupdirectory exists through an if statment if it does not exist the MAKEFILE will create a directory *backupdir* to become the backupdirectory .The bash script validates the directory to be backuped up exists and the values of the max number of backups and the sleep time.If any parameter of them is invalid an appropriate error message will be displayed and the bash script will not run.This is performed through a nested if statments .In the case all parameters are valid a function in the bash script will be called that will begin the backup process by calling a function named *backup_operation*.A file containing the info of the directory named directory-info.last is created.A while loop that continously runs is entered . Then the sleep command pauses the script for a duartion of time specified by the user . After a file containing the directory info is formed which is named directory-info.new. These 2 files are compared if they are not the same a backup of the directory is formed through a if statement and a counter of the number of backups formed is incremented.If the 2 files of directory-info.last and directory-info.new are not the same ,a backup is created in the backupdirectory and backup-info.last is overwritten to the lastest value.An if statment checks on the value of the counter that holds the number of backups .If it reached the max number of backups specifed by the user, a function named *maxbackup* is called.This function goes through the files in the backupdirectory to compare the string values of the backups created (which is the date and time of creation) to obtain the minimum ,which represents the oldest backupdirectory, though a for loop.This directory will be removed as the max number of backupdirectories has been reached .The script then continues running and repeating the same procedure.

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

* Rename the file 6874-lab2.tar.gz.pdf to 6874-lab2.tar.gz
* Extract the file 6874-lab2.tar.gz to any location that suites you

### Executing program
* The folder contains 3 files : the backup.sh file ,MAKEFILE file and the README.md file.

* Change directory within the shell to the directory in which 6874-lab2 folder content exists through the shell command cd
```
$ cd <path of folder>
```
* Create a directory to be backedup and a directory to store all the backups ( a dictionary name *backupdir* will be created if no backup directory is provided )  
within the same path as the content of the folder
* Provide the following snippet in the shell in the path of the folder content in order to run the makefile that will run the bash script with specifing acutal *directory* ,*backupdirectory* ,*wait_time* and *max_number_of _backups*.
NB:wait_time is in seconds.
```
$ make directory=<directory> backupdir=<backup_directory> wait_time=<wait_time> max_number_of_backups=<max_number_of_backups>
```
* Now the bashscript is running expect a directory to be created in the backupdirectory with the format *YYYY-MM-DD-hh-mm-ss* according to current date and time when a modification is performed on the directory specified to be backed up.

* Type the following to perform an interrput to stop the script *Ctrl+c*

## Author

Moustafa Daebis

## Acknowledgments
* https://opensource.com/article/18/8/what-how-makefile
* https://www.makeareadme.com/
