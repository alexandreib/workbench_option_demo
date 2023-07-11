#!/bin/bash
git add .
key=$(cat ../pwd/git_key)
#test
#tree -I work/ -I logs/ -I models/ -o Readme.txt --charset=ascii

echo 'Enter the commit message:'
read commitMessage
git commit -m "$commitMessage"
git push https://alexandreib:${key}@github.com/alexandreib/workbench_option_demo.git

#ndays=3
#find 'logs/' -type f -mtime +$ndays -exec rm -rf {} \;
#find 'logs/' -type f \( -iname \*.log -o -iname \*.ipynb \) -mtime +$ndays -exec rm -rf {} \;
#trash-empty
#git ls-files | xargs wc -l

