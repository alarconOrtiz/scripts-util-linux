#!/bin/bash
filename="backup-$(date +%Y%m%d).tar"
mkdir /backup
cd backup
sudo tar cvzpf /home/filename.tgz --same-owner --exclude=/home/filename.tgz --exclude=/home/error.log --exclude=/proc/* --exclude=/media/* --exclude=/dev/* --exclude=/mnt/* --exclude=/sys/* --exclude=/tmp/* /
