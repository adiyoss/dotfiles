echo " -----------------------------------------"
echo "| Updating local dot files to remote...   |"
echo " -----------------------------------------"
cd ~/Workspace/dotfiles
git add .
git commit -m "update"
git push origin master
echo " ----------------------------------------"
echo "| Done.                                  |"
echo " ----------------------------------------"
