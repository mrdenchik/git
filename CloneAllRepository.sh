#/bin/bash

if [ -z "$1" ]; then
 echo "No username specified"
 exit 1
else
 username=$1
fi

if [ -z "$2" ]; then
 max_page=2
else
 max_page=$2
fi

cntx="users"
page=1

while [ $page -lt $max_page ]
do

 curl -s "https://api.github.com/$cntx/$username/repos?page=$page" | grep -e 'git_url*' | cut -d \" -f 4 | xargs -L1 git clone
 page=$[$page+1]

done

exit 0

#git remote set-url origin https://github.com/mrdenchik/projectname.git

