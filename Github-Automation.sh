#!/bin/bash

# prints the input
function create() {
  cd
  cd Documents/"directory to python script"
  python githubp2.py $1
  echo 'creating file... ' $1
  eval `ssh-agent`
  ssh-add '/home/directory/your-ssh-key'
  cd $1
  git init
  #git config user.email "username@something.com"
  touch $1.txt
  git add .
  git commit -m "first commit"
  git remote add origin git@github.com:your-username/$1.git
  git push -u origin master

