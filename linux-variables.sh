#!/bin/bash

echo -e "Current shell: $SHELL \n"
echo -e "Current Processor: $$ \n"
echo -e "Current server: `uname -a` \n"
echo -e "Current User: `whoami` \n"
echo -e "Current OS Release: `cat /etc/os-release` \n"
echo -e "Current File: $0 \n"
echo -e "Current Working directory: `pwd` \n"
echo -e "Current Number of users: `sudo cat /etc/shadow` \n"
echo -e "Current result for previous command: $? \n"
echo -e "Display Current Environment Variables: `env` \n"
echo -e "Current setup path: $PATH \n"
