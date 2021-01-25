#!/bin/bash

PATH_ROOT="/usr/local/factura_electronica/data/100084"
PATH_LOG="/var/log/cpFilesTransborder.log"

i=1;
for dir in $(ls $PATH_ROOT | awk '{if ($1>="20200925" && $1<="20201023") print $1 }')
   do
      directory=$(ls $PATH_ROOT | awk '{if ($1>="20200925" && $1<="20201023") print $1 }' | sed -n "$i p");
      filesDirectory=$(ls $PATH_ROOT/$directory/files | sed -n "$i p")

      file="$filesDirectory/graphical_representation.pdf"
      fileName=$(echo $filesDirectory | cut -f1 -d"-");

        echo "Directory: $directory"
        echo "filesDirectory: $filesDirectory"
        echo "file: $file"
        echo "fileName: $fileName"
        echo " "

     ((i=i+1))
   done
