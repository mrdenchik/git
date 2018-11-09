#!/bin/sh
curl -u 'gituser' https://api.github.com/user/repos -d '{"name":"<projectname>","description":"This project is a test"}'
mkdir <projectname>
cd <projectname>
echo "# <projectname>" >> README.md
git init
git add .
git commit -m "Create repository"
git remote add origin https://github.com/<gituser>/<projectname>.git
git push -u origin master
