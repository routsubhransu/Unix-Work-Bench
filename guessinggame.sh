#!/bin/bash
#guessinggame.sh
#
##########################

#echo -e "Please, enter the number of files in the specified directory"
#read V_USER_GIVEN_NUM
V_USER_GIVEN_NUM=0

V_CORRECT_NUM=`ls -l|tail -n +2|wc -l`

file_num_equal () {

        echo -e "Congratulation, you have entered the correct numnber of files"
        exit
}

file_num_greater () {

        echo -e "You, have entered number greater then the files in the current directory"
        echo -e "Please, try again to give the correct number of  files"
}

file_num_less () {

        echo -e "You, have entered number less then the files in the current directory"
        echo -e "Please, try again to give the correct number of  files"
}


while [ $V_USER_GIVEN_NUM -ne $V_CORRECT_NUM ]
do
echo -e "Please, enter the number of files in the specified directory"
read V_USER_GIVEN_NUM
if [  $V_USER_GIVEN_NUM -gt $V_CORRECT_NUM ]
then
       file_num_greater
elif [  $V_USER_GIVEN_NUM -lt $V_CORRECT_NUM ]
then
      file_num_less
fi
done
file_num_equal
