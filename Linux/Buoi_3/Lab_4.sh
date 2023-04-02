#!/bin/bash
env
printenv SHELL
export MY_VAR="hello world"
echo $MY_VAR
unset MY_VAR
echo $MY_VAR
echo 'export NEW_VAR="new persistent varialbe"' >> ~/.bashrc
source ~/.bashrc
echo $NEW_VAR
