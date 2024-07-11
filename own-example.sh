#!/bin/bash

validate(){
        echo "hi"
        echo "hello"
        echo "how are you"
}
 validate

 check(){
 if [ $? -ne 0 ]
 then
    echo "$2 is failled"
     exit 1
else
     echo "$2 is sucess"
 fi
 }
 
 list=$(ls -ltr)
 echo "$list"

 check $? "list variable"
