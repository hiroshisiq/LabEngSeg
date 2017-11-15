#!/bin/bash

# Configure
HOST='202.135.187.131' # Server address
PORT='21'              # FTP port 
USER='joaquim'       # Joaquim ID
PASSWD='123joa'      # Joaquim Password 

# Access E3 ftp via Server 
ftp -n $HOST $PORT <<FTP_SCRIPT
user $USER $PASSWD
ls
quit 
FTP_SCRIPT