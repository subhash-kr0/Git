git --version
git config --global user.name "w3schools-test"
git config --global user.email "test@w3schools.com"
mkdir myproject
cd myproject
git status
git add index.html
git add --all

git commit -m "First release of Hello World!"
git status --short
git commit -a -m "Updated index.html with a new line"

git log
git command -help -  See all the available options for the specific command
git help --all -  See all possible commands

git help --all

git branch hello-world-images
git branch
git checkout hello-world-images
git merge emergency-fix
git branch -d emergency-fix