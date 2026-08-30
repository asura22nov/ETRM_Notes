@echo off
echo Navigating to repository...
cd /d "F:\anand(E)\anand\computer-ebooks\ETRM_Notes"

echo Staging changes...
git add .

echo Committing changes...
git commit -m "Update notes"

echo Pushing to GitHub...
git push origin main

echo Opening website in default browser...
start https://asura22nov.github.io/ETRM_Notes/

echo Done!
pause