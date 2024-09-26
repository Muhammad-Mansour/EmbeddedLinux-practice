#####################################################################################################################
### @author : muhammad mansour
### @brief : this bash script to organise your files in directory by extentions 
### 	     you can put special extension if you want in cases
#####################################################################################################################

#!/bin/bash


declare extension=""


if [[ -d $1 ]]; then
    cd $1
    for filename in $(ls -ap "$1" | grep -v /) ; do
        extension=${filename##*.}
        case "$extension" in
            "txt")
                if [[ ! -d $extension ]]; then
                    mkdir "$extension"
                fi
                mv "$1"/"$filename" "$extension"
                ;;
            "zip")
                if [[ ! -d $extension ]]; then
                    mkdir "$extension"
                fi
                mv "$1"/"$filename" "$extension"
                ;;
            "pdf")
                if [[ ! -d $extension ]]; then
                    mkdir "$extension"
                fi
                mv "$1"/"$filename" "$extension"
                ;;
            "jpg")
                if [[ ! -d $extension ]]; then
                    mkdir "$extension"
                fi
                mv "$1"/"$filename" "$extension"
                ;;
            *)
                if [[ ! -d misc ]]; then
                    mkdir misc
                fi
                mv "$1"/"$filename" misc
                ;;
        esac
    done
else
    echo "Directory does not exist"

fi





 
