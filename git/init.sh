#!/bin/bash

# https://docs.github.com/en/get-started/git-basics/setting-your-username-in-git
git config --global user.name "Balázs Orbán"

# https://docs.github.com/en/account-and-profile/how-tos/email-preferences/setting-your-commit-email-address
git config --global user.email "285575+orbanbalage@users.noreply.github.com"

# https://docs.github.com/en/get-started/git-basics/ignoring-files
# https://gist.github.com/lohenyumnam/2b127b9c3d1435dc12a33613c44e6308
echo "*~" >> ~/.gitignore_global
echo ".*.swp" >> ~/.gitignore_global
echo ".DS_Store" >> ~/.gitignore_global

# https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration
git config --global core.excludesfile ~/.gitignore_global