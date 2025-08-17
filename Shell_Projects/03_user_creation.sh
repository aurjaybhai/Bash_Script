#!/bin/bash

#Check if the script is being executed with superuser privileges

if [[ "$UID" -ne 0 ]]
then
	echo "Please run with sudo or root!!"
	exit 1
fi

#If the user doesn't supply at least one argument, then give them help

if [[ "${#}" -lt 1 ]]
then
	echo "Usage: ${0} User_Name [Comment]..."
	echo "Create a user with name USER_NAME and comments field of COMMENT"
	exit 1
fi

# The first parameter is the username
USERNAME="${1}"

#echo "Your Username is $USERNAME"


# the rest of the parameter are for the comments
shift
Comment="${@}"

# Generate a password

password=$(</dev/urandom tr -dc 'A-Za-z0-9!@#$%^&*()_+-=[]{}|;:,.<>?' | head -c16)
echo "Generated Password: $password"

# Create the user
useradd -c "$Comment" -m $USERNAME

# check to see if the useradd command succeeded
if [[ $? -ne 0 ]]
then
	echo "The Account could not be created "
	exit 1
fi

#Set password
echo -e "$password\n$password" | passwd "$USERNAME"

#Check to see if the passwd command succeeded 
if [[ $? -ne 0 ]]
then
	echo  "Password could not be set "
	exit 1
fi
#force passwd change on the first login
passwd -e $USERNAME

#display the username,password, and the host where the user is created

echo
echo "Username: $USERNAME"
echo 
echo "Password: $password"
echo
echo $(hostname)