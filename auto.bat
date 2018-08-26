.\D:\DL\dev tools\dsynchronize\DSynchronize.exe /START
pause
cd _site
git add .
git commit -m "sth new"
pause
git push
cd ..
