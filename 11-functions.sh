#!/bin/bash 

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=$( echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log

if [ $USERID -ne 0 ]
then 
   echo "please run the script with root user"
   exit 1
else 
   echo "you are a root user"
fi 

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "\e[31m $2 failure \e[0m " 
        exit 1 
    else 
          echo -e "\e[32m $2 success \e[0m"
    fi           
}

dnf install mysql -y >>$LOGFILE
VALIDATE $? "installing mysql "

dnf install git -y >>$LOGFILE
VALIDATE $? "installing git " 
