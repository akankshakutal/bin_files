#! /bin/bash

git init 
ln -s ~/bin/gitFiles/.gitignore ./.gitignore
ln -s ~/bin/gitFiles/pre-commit ./.git/hooks/pre-commit
chmod +x ./.git/hooks/pre-commit




