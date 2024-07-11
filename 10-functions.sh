#!/bin/bash 

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
   echo "please run the script with root user"
   exit 1
else 
   echo "you are a root user"
fi 

VALIDATE(){
    if [ $1 -ne 0]
    then 
        echo "$2 failure"
        exit 1 
    else 
          echo "$2 success"
    fi           
}

dnf install mysql -y 
VALIDATE $? "installing mysql "

dnf install git -y 
VALIDATE $? "installing git " 
