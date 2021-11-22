#!/bin/bash
user=$1
directory=$2
 echo 
 whoami
 pwd
#Check Root or no
if [ $UID -ne 0 ];
then 
 echo "only root allowed"
else
 echo "good! you are root"
fi
#Check user exists
user_exists(){ id "$1" &>/dev/null; } # silent, it just sets the exit code
if user_exists "$1"; code=$?; then # use the function, save the code
 echo 'user found'
else
 echo 'user not found' >&2 # error messages should go to stderr
fi
exit $code # set the exit code, ultimately the same set by `id`fi 

#Change directory chown -r
if
 sudo chown -R $1000:$1000 program1.sh
	 echo 'change user :)'
fi
