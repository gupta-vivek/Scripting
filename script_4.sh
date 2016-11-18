#!/bin/bash
# This is a shell script to accept two filenames as arguments. First file will be having the username and the second file will be having the passwords for it.
# If the number of usernames doesn't match with number of passwords it will not create any users, if it matches it will create user with corresponding password.

printf "\nEnter the name of the file(Username): "
read usernameFile
printf "\nEnter the name of the file(Password): "
read passwordFile

userLineCount=$(cat $usernameFile | wc -l )
passwordLineCount=$(cat $passwordFile | wc -l )

if [ "$userLineCount" -eq "$passwordLineCount" ];
then
	printf "\nEnter Username: "
	read username
	printf "\nEnter Password: "
	read password
	printf "\n$username" >> $usernameFile
	printf "\n$password" >> $passwordFile
else
	printf "The count of users and passwords do not match!"
fi