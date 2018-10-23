#/bin/sh
curl -s  https:/api.github.com/users/mrdenchik/repos?page=1 | grep -e 'git_url*' | cut -d " -f 4 | xargs -L1 git clone

#git remote set-url origin https://github.com/mrdenchik/projectname.git

