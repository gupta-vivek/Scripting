#!/bin/bash
# This is a Shell Script to accept a filename and path(dir path) as command line argument and find whether the file is present in the
# given path. If it is present , it will delete the file otherwise it will archive the given directory.

echo -n "Enter the name of the file: "
read filename
echo -n "Enter the directory: "
read directory

if [ -f $directory/$filename ];
then
   rm $directory/$filename
   printf "\nFile exists and has been removed."
else
   printf "\nFile $FILE does not exist.\nMade an archive of the directory\n"
   tar -cPf $filename.tar $directory
fi