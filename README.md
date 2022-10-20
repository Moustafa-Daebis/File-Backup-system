# Directory Backup

A Linux bash script that backs up changes in a chosen directory according to a set time inveral.
## Table of content
* [Table of Content](#table-of-content)
* [Description](#description)
* [Prerequisites](#prerequisites)
* [Installing](#installing)
* [Executing program](#executing-program)
* [Author](#author)
* [Acknowledgments](#acknowledgments)

## Description
The linux bash scripts backups up the info of the original directory to a file named directory-info.last .The bash scripts then procced to sleep for a duration of time specified by the user in which the user may perform modifiction to the directory (ex. create new file ) .The code then procced to form another info file called directory-info.new .These two files are then compared if they are different then the original directory must have undergone some sort of modification.Hence a backup of the directory is created in the backupdirectory.The parameters of the directory to be backed up, backupdirectory time of sleep and max number of backups will be passed to the bash script through a MAKEFILE that will also run the script.The MAKEFILE validates if the backupdirectory exists through an if statment if it does not exist the MAKEFILE will create a directory *backupdir* to become the backupdirectory . The bash script validates the directory to be backuped up exists and the values of the max number of backups and the sleep time.If any parameter of them is invalid an appropriate error message will be displayed and the bash script will not run.This is performed through a nested if statments .In the case all parameters are valid a function in the bash script will be called that will begin the backup process by calling a function named *backup_operation*.A file containing the info of the directory named directory-info.last is created. Then the sleep command pauses the script for a duartion of time specified by the user . After a file containing the directory info is formed which is named directory-info.new. These 2 files are compared if they are not the same a backup of the directory is formed through a if statement and a counter of the number of backups formed is incremented.An if statment checks on the value of the counter that holds the number of backups .If it reached the max number of backups specifed by the user, a function named ddd is called.This function goes through the files in the backupdirectory to compare the string values of the backups created (which is the date and time of creation) to obtain the minimum which represents the oldest backupdirectory though a for loop.This directory will be removed as the max number of backupdirectories has been reached .

## Getting Started

### Prerequisites 

* Installation of ubuntu Linux based system
https://ubuntu.com/download/desktop
* Step-up of ubuntu Linux based system

### Installing

* Rename the file 6874-lab2.tar.gz.pdf to 6874-lab2.tar.gz
* Extract the file 6874-lab2.tar.gz to any location that suites you

### Executing program

* Change directory within the shell to the directory in which 6874-lab2 folder exits through the shell command cd
```
$ cd <path of folder>
```
* Create a directory to be backedup and a directory to store all the backups ( a dictionary name *backupdir* will be created if no backup directory is provided  )
* Provide the following snippet in the shell in the path of the folder in order to run the script with specfing acutal *directory* ,*backupdirectory* ,*wait_time* and *max_number_of _backups*
```
$ make directory=directory backupdir=backupdir wait_time=wait_time max_number_of_backups=max_number_of_backups
```
* Now the bashscript is running expect a directory to be created in the backupdirectory with the format *YYYY-MM-DD-hh-mm-ss* according to current date and time when a modification is performed on the directory specified to be backed up.
* Type the following to perform an interrput to stop the script *Ctrl+c*


## Author

Moustafa Daebis
ID:6874


## Version History


## Acknowledgments
* https://opensource.com/article/18/8/what-how-makefile
* https://www.makeareadme.com/
