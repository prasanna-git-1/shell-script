#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
   echo "please run the script with super user"
   exit 1 # manually we are stopping the process manually
else
    echo "you are a super user"
fi 

dnf install mysql -y 
 
 if [ $? -ne 0 ]
 then 
  echo "installation of mysql is failure."
  exit 1 
 else 
   echo "installation of mysql is success"
 fi
     