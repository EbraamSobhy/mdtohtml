#!/bin/bash

# chmod +x git.sh
# ./git.sh

echo "Choose an option:"
echo "1) Create repo"
echo "2) Push code"

read -p "Enter your choice: " choice

case "$choice" in
    1)
        git add .
        git commit -m "changes"
        git remote add origin https://github.com/EbraamSobhy/mdtohtml.git
        git push -u origin master
        ;;
    2)
        git add .
        git commit -m "changes"
        git push -u origin master
        ;;
    *)
        echo "Invalid choice."
        exit 1
        ;;
esac
