#!/bin/bash

# Configure
HOST='manuel@202.135.187.131' # Server address
PASSWD='123man'               # Joaquim Password 

# Access E3 ftp via Server
# Login 
ssh $HOST <<SSH_SCRIPT

# List files
ls

# Quit ftp conection
# ssh manuel@202.135.187.131 quit
SSH_SCRIPT

exit 0