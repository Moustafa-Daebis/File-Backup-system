# Directory Backup

A linux bash script that backs up changes in a chosen directory according to a set time inveral.
## Table of content
* [Table of Content](#table-of-content)
* [Description](#description)
* [Prequisites](#prequisites)
* [Installing](#installing)
* [Executing program](#executing-program)
* [Authors](#authors)
* [Acknowledgments](#acknowledgments)

## Description
The linux bash scripts backups up the info of the original directory to a file named directory-info.last .The bash scripts then procced to sleep for a duration of time specified by the user in which the user may perform modifiction to the directory (ex. create new file ) .The code then procced to form another info file called directory-info.new .These two files are then compared if they are different then the original directory must have undergone some sort of modification.Hence a backup of the directory is created in the backupdirectory.The parameters of the directory to be backed up, backupdirectory time of sleep and max number of backups will be passed to the bash script through a MAKEFILE that will also run the script.

## Getting Started

### Prequisites 

* Installation of ubuntu Linux based system
https://ubuntu.com/download/desktop
* Step-up of ubuntu Linux based system

### Installing

* rename the file 6874-lab2.tar.gz.pdf to 6874-lab2.tar.gz
* extract the file 6874-lab2.tar.gz to any location that suites you

### Executing program

* change directory within the shell to the directory in which 6874-lab folder exits through the shell command cd
```
$cd <path of folder>
```
* create a directory to be backedup and a directory to store all the backups ( a dictionary name *backupdir* will be created if no backup directory is provided  )
* provide the following snippet in the shell in the path of the folder in order to run the script with specfing acutal *directory* ,*backupdirectory* ,*wait_time* and *max_number_of _backups*
```
$make directory=directory backupdir=backupdir wait_time=wait_time max_number_of_backups=max_number_of_backups
```
* Now the bashscript is running expect a directory to be created in the backupdirectory with the format *YYYY-MM-DD-hh-mm-ss* according to current date and time when a modification is performed on the directory specified to be backed up.
* Type the following to perform an interrput to stop the script *Ctrl+c*


## Author

Moustafa Daebis
ID:6874


## Version History


## Acknowledgments

