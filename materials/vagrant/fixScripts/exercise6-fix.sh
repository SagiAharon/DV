#!/bin/bash
#add fix to exercise6-fix here

f [ -f "ex6.sh" ]; then
    echo "File "ex6.sh" already exists. Not creating a new one."
else
    echo "IM HERE!!!, and gonna stay here!!!" > "ex6.sh"
    chmod +x "ex6.sh"
    echo "File "ex6.sh" created and execute permissions granted."
fi


source_path=$1
source_path2=$2
server=$(hostname)
destination_path=$3


source_size1=$(stat -c %s "$source_path")
source_size2=$(stat -c %s "$source_path2")

echo $(($source_size1 + $source_size2))

if [ $(id -u) -eq 0 ]; then

        if [ $server == "server1" ]; then
            sudo scp -i ~/.ssh/id_rsa  "$source_path" "$source_path2" vagrant@server2:$destination_path

        else
            sudo scp -i ~/.ssh/id_rsa  "$source_path" "$source_path2" vagrant@server1:$destination_path
        fi
else

        if [ $server == "server1" ]; then
            scp -i ~/.ssh/id_rsa  "$source_path" "$source_path2" vagrant@server2:$destination_path
        else
            scp -i ~/.ssh/id_rsa  "$source_path" "$source_path2" vagrant@server1:$destination_path
        fi
fi