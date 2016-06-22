#!/bin/bash
# Crontab
# 34 * * * * /home/supakorn/dotfile2/update.sh >> /home/supakorn/dev-env.log
git add --all
git commit -m "$(date)"
git push -u origin master
