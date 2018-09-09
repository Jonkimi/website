#!/bin/sh
 
git filter-branch -f --env-filter '
 
an="$GIT_AUTHOR_NAME"
am="$GIT_AUTHOR_EMAIL"
cn="$GIT_COMMITTER_NAME"
cm="$GIT_COMMITTER_EMAIL"
 
if [ "$GIT_COMMITTER_EMAIL" = "JonkimiLiao@gmail.com" ]
then
    cn="Jonkimi"
    cm="JonkimyLiao@gmail.com"
fi
if [ "$GIT_AUTHOR_EMAIL" = "JonkimiLiao@gmail.com" ]
then
    an="Jonkimi"
    am="JonkimyLiao@gmail.com"
fi 
export GIT_AUTHOR_NAME="$an"
export GIT_AUTHOR_EMAIL="$am"
export GIT_COMMITTER_NAME="$cn"
export GIT_COMMITTER_EMAIL="$cm"
'  --tag-name-filter cat -- --branches --tags 
# git push --force --tags origin 'refs/heads/*'