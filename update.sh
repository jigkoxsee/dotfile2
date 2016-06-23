#!/bin/bash
# Crontab
# 34 * * * * /home/supakorn/dotfile2/update.sh >> /home/supakorn/dev-env.log
echo $PWD
cd $(dirname $(readlink -f $0))
echo $PWD
git add --all
git commit -m "$(date)"
if git push -u origin master ; then
	  notify-send --icon=gtk-info Test "Dev-end push Success"
else
	  notify-send --icon=gtk-info Test "Dev-end push FAIL!"
fi
